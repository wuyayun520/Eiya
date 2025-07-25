import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../../core/theme/app_theme.dart';
import '../../../features/profile/screens/user_profile_screen.dart';
import 'video_player_screen.dart';

class PostDetailScreen extends StatefulWidget {
  final Map<String, dynamic> user;
  final Map<String, dynamic> post;

  const PostDetailScreen({
    super.key,
    required this.user,
    required this.post,
  });

  @override
  State<PostDetailScreen> createState() => _PostDetailScreenState();
}

class _PostDetailScreenState extends State<PostDetailScreen> {
  bool _isReported = false;

  @override
  void initState() {
    super.initState();
    _loadReportStatus();
  }

  Future<void> _loadReportStatus() async {
    final prefs = await SharedPreferences.getInstance();
    final postId = widget.post['id'] ?? '';
    
    setState(() {
      _isReported = prefs.getBool('reported_post_$postId') ?? false;
    });
  }

  Future<void> _reportPost(String reason) async {
    final prefs = await SharedPreferences.getInstance();
    final postId = widget.post['id'] ?? '';
    
    // 模拟举报请求
    await Future.delayed(const Duration(milliseconds: 500));
    
    // 保存举报状态
    await prefs.setBool('reported_post_$postId', true);
    
    setState(() {
      _isReported = true;
    });
    
    // 显示成功提示
    _showSuccessSnackBar('Post reported successfully! 📝');
    
    // 延迟后返回上一页
    await Future.delayed(const Duration(seconds: 1));
    if (mounted) {
      Navigator.of(context).pop();
    }
  }

  void _showReportOptions() {
    showModalBottomSheet(
      context: context,
      backgroundColor: Colors.transparent,
      isScrollControlled: true,
      builder: (BuildContext context) {
        return Container(
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
          ),
          child: SafeArea(
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  // 顶部指示器
                  Container(
                    margin: const EdgeInsets.symmetric(vertical: 12),
                    width: 40,
                    height: 4,
                    decoration: BoxDecoration(
                      color: Colors.grey[300],
                      borderRadius: BorderRadius.circular(2),
                    ),
                  ),
                  
                  // 标题
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                    child: Row(
                      children: [
                        Icon(Icons.flag_outlined, color: Colors.orange),
                        const SizedBox(width: 12),
                        const Text(
                          'Report Post',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                  ),
                  
                  const Divider(),
                  
                  // 举报选项列表
                  ...[
                    {
                      'title': 'Spam',
                      'subtitle': 'Repetitive or unwanted content',
                      'icon': Icons.repeat,
                      'color': Colors.orange,
                    },
                    {
                      'title': 'Inappropriate Content',
                      'subtitle': 'Violence, adult content, or disturbing material',
                      'icon': Icons.warning,
                      'color': Colors.red,
                    },
                    {
                      'title': 'Harassment',
                      'subtitle': 'Bullying or targeted harassment',
                      'icon': Icons.person_off,
                      'color': Colors.purple,
                    },
                    {
                      'title': 'False Information',
                      'subtitle': 'Misleading or false content',
                      'icon': Icons.info_outline,
                      'color': Colors.blue,
                    },
                    {
                      'title': 'Copyright Violation',
                      'subtitle': 'Unauthorized use of copyrighted material',
                      'icon': Icons.copyright,
                      'color': Colors.green,
                    },
                    {
                      'title': 'Other',
                      'subtitle': 'Something else that violates community guidelines',
                      'icon': Icons.more_horiz,
                      'color': Colors.grey,
                    },
                  ].map((option) => _buildReportOption(
                    icon: option['icon'] as IconData,
                    title: option['title'] as String,
                    subtitle: option['subtitle'] as String,
                    color: option['color'] as Color,
                    onTap: () {
                      Navigator.pop(context);
                      _showReportConfirmDialog(option['title'] as String);
                    },
                  )),
                  
                  const SizedBox(height: 20),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  Widget _buildReportOption({
    required IconData icon,
    required String title,
    required String subtitle,
    required Color color,
    required VoidCallback onTap,
  }) {
    return ListTile(
      leading: Container(
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: color.withOpacity(0.1),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Icon(icon, color: color, size: 20),
      ),
      title: Text(
        title,
        style: const TextStyle(fontWeight: FontWeight.w600),
      ),
      subtitle: Text(
        subtitle,
        style: TextStyle(color: AppTheme.textHint, fontSize: 12),
      ),
      onTap: onTap,
    );
  }

  void _showReportConfirmDialog(String reason) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
          title: Row(
            children: [
              Icon(Icons.flag_outlined, color: Colors.orange),
              const SizedBox(width: 8),
              const Text('Confirm Report'),
            ],
          ),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Are you sure you want to report this post for:'),
              const SizedBox(height: 8),
              Container(
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: Colors.orange.withOpacity(0.1),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Text(
                  reason,
                  style: const TextStyle(
                    fontWeight: FontWeight.w600,
                    color: Colors.orange,
                  ),
                ),
              ),
              const SizedBox(height: 12),
              Text(
                'This action will hide the post from your feed and notify our moderation team.',
                style: TextStyle(
                  fontSize: 13,
                  color: AppTheme.textHint,
                ),
              ),
            ],
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: Text('Cancel', style: TextStyle(color: AppTheme.textHint)),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
                _reportPost(reason);
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.orange,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
              ),
              child: const Text('Report', style: TextStyle(color: Colors.white)),
            ),
          ],
        );
      },
    );
  }

  void _showSuccessSnackBar(String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Row(
          children: [
            const Icon(Icons.check_circle, color: Colors.white, size: 20),
            const SizedBox(width: 8),
            Expanded(child: Text(message)),
          ],
        ),
        backgroundColor: Colors.orange,
        duration: const Duration(seconds: 2),
        behavior: SnackBarBehavior.floating,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        margin: const EdgeInsets.all(16),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final bool hasVideo = widget.post['video'] != null;
    final bool hasImages = widget.post['images'] != null && widget.post['images'].isNotEmpty;
    
    // 设置状态栏样式
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.dark,
        systemNavigationBarColor: Colors.white,
        systemNavigationBarIconBrightness: Brightness.dark,
      ),
    );

    // 如果帖子已被举报，显示举报状态页面
    if (_isReported) {
      return Material(
        child: Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            title: const Text('Post Reported'),
            backgroundColor: Colors.white,
            foregroundColor: Colors.black,
            elevation: 1,
            leading: IconButton(
              icon: const Icon(Icons.close),
              onPressed: () => Navigator.of(context).pop(),
            ),
          ),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: Colors.orange.withOpacity(0.1),
                    shape: BoxShape.circle,
                  ),
                  child: Icon(
                    Icons.flag,
                    size: 60,
                    color: Colors.orange[600],
                  ),
                ),
                const SizedBox(height: 24),
                Text(
                  'Post Reported',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w700,
                    color: Colors.orange[700],
                  ),
                ),
                const SizedBox(height: 12),
                Text(
                  'Thank you for reporting this post.\nOur team will review it shortly.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 16,
                    color: AppTheme.textHint,
                    height: 1.5,
                  ),
                ),
                const SizedBox(height: 32),
                ElevatedButton(
                  onPressed: () => Navigator.of(context).pop(),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppTheme.primaryColor,
                    padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 12),
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(24)),
                  ),
                  child: const Text(
                    'Back to Feed',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      );
    }
    
    return Material(
      child: Scaffold(
        // 确保页面扩展到系统栏下方
        extendBodyBehindAppBar: false,
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: const Text('Post Details'),
          backgroundColor: Colors.white,
          foregroundColor: Colors.black,
          elevation: 1,
          leading: IconButton(
            icon: const Icon(Icons.close),
            onPressed: () => Navigator.of(context).pop(),
          ),
          actions: [
            Container(
              margin: const EdgeInsets.only(right: 8),
              decoration: BoxDecoration(
                color: Colors.red[600],
                borderRadius: BorderRadius.circular(18),
                boxShadow: [
                  BoxShadow(
                    color: Colors.red.withValues(alpha: 0.1),
                    blurRadius: 8,
                    offset: const Offset(0, 0.5),
                  ),
                ],
              ),
              child: SizedBox(
                height: 34,
                child: Material(
                  color: Colors.transparent,
                  child: InkWell(
                    borderRadius: BorderRadius.circular(18),
                    onTap: _showReportOptions,
                    child: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 2),
                      child: Center(
                        child: Text(
                          'Report',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 11,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
          systemOverlayStyle: const SystemUiOverlayStyle(
            statusBarColor: Colors.transparent,
            statusBarIconBrightness: Brightness.dark,
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // User info header
              GestureDetector(
                onTap: () {
                  // 跳转到用户信息页面
                  showGeneralDialog(
                    context: context,
                    barrierDismissible: false,
                    barrierColor: Colors.transparent,
                    transitionDuration: const Duration(milliseconds: 300),
                    pageBuilder: (context, animation, secondaryAnimation) {
                      return UserProfileScreen(user: widget.user);
                    },
                    transitionBuilder: (context, animation, secondaryAnimation, child) {
                      const begin = Offset(1.0, 0.0);
                      const end = Offset.zero;
                      const curve = Curves.easeInOut;

                      var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));
                      var offsetAnimation = animation.drive(tween);

                      return SlideTransition(
                        position: offsetAnimation,
                        child: child,
                      );
                    },
                  );
                },
                child: Container(
                  padding: const EdgeInsets.all(16),
                  margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                  decoration: BoxDecoration(
                    color: Colors.grey[50],
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(color: Colors.grey[200]!),
                  ),
                  child: Row(
                    children: [
                      // Avatar with ring indicator
                      Container(
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(
                            color: AppTheme.primaryColor.withOpacity(0.3),
                            width: 2,
                          ),
                        ),
                        child: CircleAvatar(
                          radius: 28,
                          backgroundImage: AssetImage(widget.user['avatar']),
                        ),
                      ),
                      const SizedBox(width: 16),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Expanded(
                                  child: Text(
                                    widget.user['displayName'],
                                    style: const TextStyle(
                                      fontWeight: FontWeight.w700,
                                      fontSize: 18,
                                      color: Colors.black87,
                                    ),
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ),
                             
                              ],
                            ),
                            const SizedBox(height: 4),
                            Text(
                              '@${widget.user['username']}',
                              style: TextStyle(
                                fontSize: 14,
                                color: AppTheme.textHint,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            if (widget.user['location'] != null) ...[
                              const SizedBox(height: 2),
                              Row(
                                children: [
                                  Icon(
                                    Icons.location_on,
                                    size: 14,
                                    color: AppTheme.textHint,
                                  ),
                                  const SizedBox(width: 4),
                                  Text(
                                    widget.user['location'],
                                    style: TextStyle(
                                      fontSize: 12,
                                      color: AppTheme.textHint,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                            const SizedBox(height: 8),
                            
                          ],
                        ),
                      ),
                      const SizedBox(width: 12),
                      // Click indicator
                      Container(
                        padding: const EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          color: AppTheme.primaryColor.withOpacity(0.1),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              'View Profile',
                              style: TextStyle(
                                fontSize: 12,
                                color: AppTheme.primaryColor,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            const SizedBox(width: 4),
                            Icon(
                              Icons.arrow_forward_ios,
                              size: 12,
                              color: AppTheme.primaryColor,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              
              // Content text
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Text(
                  widget.post['content'],
                  style: const TextStyle(fontSize: 16, height: 1.5),
                ),
              ),
              
              const SizedBox(height: 16),
              
              // Content images or video
              if (hasImages)
                _buildImageGrid(widget.post['images'])
              else if (hasVideo)
                _buildVideoPlayer(widget.post),
              
              const SizedBox(height: 16),
              
              // Tags
              if (widget.post['tags'] != null && widget.post['tags'].isNotEmpty)
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Wrap(
                    spacing: 8,
                    runSpacing: 8,
                    children: (widget.post['tags'] as List).map<Widget>((tag) {
                      return Container(
                        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                        decoration: BoxDecoration(
                          color: AppTheme.primaryColor.withOpacity(0.1),
                          borderRadius: BorderRadius.circular(16),
                        ),
                        child: Text(
                          '#$tag',
                          style: const TextStyle(
                            color: AppTheme.primaryColor,
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      );
                    }).toList(),
                  ),
                ),
              
              const SizedBox(height: 24),
              
           
              
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildImageGrid(List images) {
    final int imageCount = images.length;
    
    // Single image - full width
    if (imageCount == 1) {
      return Container(
        margin: const EdgeInsets.symmetric(horizontal: 16),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(12),
          child: Image.asset(
            images[0],
            fit: BoxFit.cover,
            width: double.infinity,
            height: 300,
            errorBuilder: (context, error, stackTrace) {
              return Container(
                height: 300,
                color: Colors.grey[200],
                child: const Center(
                  child: Icon(Icons.image_not_supported, color: Colors.grey),
                ),
              );
            },
          ),
        ),
      );
    }
    
    // Multiple images - grid layout
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16),
      child: GridView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: imageCount == 2 ? 2 : 3,
          crossAxisSpacing: 4,
          mainAxisSpacing: 4,
          childAspectRatio: 1.0,
        ),
        itemCount: imageCount > 9 ? 9 : imageCount,
        itemBuilder: (context, index) {
          final bool isLast = index == 8 && imageCount > 9;
          
          return GestureDetector(
            onTap: () {
              _showImageViewer(context, images, index);
            },
            child: Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Image.asset(
                    images[index],
                    fit: BoxFit.cover,
                    width: double.infinity,
                    height: double.infinity,
                    errorBuilder: (context, error, stackTrace) {
                      return Container(
                        color: Colors.grey[200],
                        child: const Center(
                          child: Icon(Icons.image_not_supported, color: Colors.grey, size: 20),
                        ),
                      );
                    },
                  ),
                ),
                if (isLast)
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.black54,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Center(
                      child: Text(
                        '+${imageCount - 9}',
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
              ],
            ),
          );
        },
      ),
    );
  }

  void _showImageViewer(BuildContext context, List images, int initialIndex) {
    Navigator.push(
      context,
      PageRouteBuilder(
        fullscreenDialog: true,
        pageBuilder: (context, animation, secondaryAnimation) => ImageViewerScreen(
          images: images,
          initialIndex: initialIndex,
        ),
        transitionsBuilder: (context, animation, secondaryAnimation, child) {
          const begin = Offset(1.0, 0.0); // 从右侧开始
          const end = Offset.zero;
          const curve = Curves.easeInOut;

          var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));
          var offsetAnimation = animation.drive(tween);

          return SlideTransition(
            position: offsetAnimation,
            child: child,
          );
        },
        transitionDuration: const Duration(milliseconds: 300),
      ),
    );
  }

  Widget _buildVideoPlayer(Map<String, dynamic> post) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          PageRouteBuilder(
            fullscreenDialog: true,
            pageBuilder: (context, animation, secondaryAnimation) => VideoPlayerScreen(
              post: post,
              user: widget.user,
            ),
            transitionsBuilder: (context, animation, secondaryAnimation, child) {
              const begin = Offset(1.0, 0.0); // 从右侧开始
              const end = Offset.zero;
              const curve = Curves.easeInOut;

              var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));
              var offsetAnimation = animation.drive(tween);

              return SlideTransition(
                position: offsetAnimation,
                child: child,
              );
            },
            transitionDuration: const Duration(milliseconds: 300),
          ),
        );
      },
      child: Container(
        height: 300,
        margin: const EdgeInsets.symmetric(horizontal: 16),
        child: Stack(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.asset(
                post['thumbnail'],
                width: double.infinity,
                height: double.infinity,
                fit: BoxFit.cover,
                errorBuilder: (context, error, stackTrace) {
                  return Container(
                    color: Colors.grey[200],
                    child: const Center(
                      child: Icon(Icons.video_library, color: Colors.grey),
                    ),
                  );
                },
              ),
            ),
            // 播放按钮覆盖层
            Positioned.fill(
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.black.withValues(alpha: 0.3),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Center(
                  child: Container(
                    padding: const EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      color: Colors.white.withValues(alpha: 0.9),
                      shape: BoxShape.circle,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withValues(alpha: 0.2),
                          blurRadius: 8,
                          offset: const Offset(0, 2),
                        ),
                      ],
                    ),
                    child: Icon(
                      Icons.play_arrow,
                      color: AppTheme.primaryColor,
                      size: 32,
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              top: 12,
              right: 12,
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                decoration: BoxDecoration(
                  color: Colors.black54,
                  borderRadius: BorderRadius.circular(4),
                ),
                child: Text(
                  post['duration'] ?? '00:00',
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildStatItem(String label, String count, IconData icon, Color color) {
    return Column(
      children: [
        Icon(icon, color: color, size: 20),
        const SizedBox(height: 4),
        Text(
          count,
          style: const TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 16,
          ),
        ),
        Text(
          label,
          style: TextStyle(
            fontSize: 12,
            color: AppTheme.textHint,
          ),
        ),
      ],
    );
  }
}

// Image viewer for full-screen image viewing
class ImageViewerScreen extends StatefulWidget {
  final List images;
  final int initialIndex;

  const ImageViewerScreen({
    super.key,
    required this.images,
    required this.initialIndex,
  });

  @override
  State<ImageViewerScreen> createState() => _ImageViewerScreenState();
}

class _ImageViewerScreenState extends State<ImageViewerScreen> {
  late PageController _pageController;
  late int _currentIndex;

  @override
  void initState() {
    super.initState();
    _currentIndex = widget.initialIndex;
    _pageController = PageController(initialPage: widget.initialIndex);
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Scaffold(
        backgroundColor: Colors.black,
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          backgroundColor: Colors.black.withOpacity(0.5),
          foregroundColor: Colors.white,
          elevation: 0,
          leading: IconButton(
            icon: const Icon(
              Icons.close,
              color: Colors.white,
              size: 28,
            ),
            onPressed: () => Navigator.of(context).pop(),
          ),
          title: Container(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
            decoration: BoxDecoration(
              color: Colors.black.withOpacity(0.6),
              borderRadius: BorderRadius.circular(16),
            ),
            child: Text(
              '${_currentIndex + 1} / ${widget.images.length}',
              style: const TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          centerTitle: true,
          systemOverlayStyle: const SystemUiOverlayStyle(
            statusBarColor: Colors.transparent,
            statusBarIconBrightness: Brightness.light,
          ),
        ),
        body: Stack(
          children: [
            // Image PageView
            PageView.builder(
              controller: _pageController,
              itemCount: widget.images.length,
              onPageChanged: (index) {
                setState(() {
                  _currentIndex = index;
                });
              },
              itemBuilder: (context, index) {
                return Center(
                  child: InteractiveViewer(
                    panEnabled: true,
                    boundaryMargin: const EdgeInsets.all(20),
                    minScale: 0.5,
                    maxScale: 4.0,
                    child: Image.asset(
                      widget.images[index],
                      fit: BoxFit.contain,
                      errorBuilder: (context, error, stackTrace) {
                        return const Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.image_not_supported,
                                color: Colors.white54,
                                size: 64,
                              ),
                              SizedBox(height: 16),
                              Text(
                                'Image not found',
                                style: TextStyle(
                                  color: Colors.white54,
                                  fontSize: 16,
                                ),
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                  ),
                );
              },
            ),
            
            // Bottom navigation dots (if more than 1 image)
            if (widget.images.length > 1)
              Positioned(
                bottom: 50,
                left: 0,
                right: 0,
                child: Center(
                  child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                    decoration: BoxDecoration(
                      color: Colors.black.withOpacity(0.6),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: List.generate(
                        widget.images.length > 5 ? 5 : widget.images.length,
                        (index) {
                          if (widget.images.length > 5 && index == 4) {
                            return Container(
                              width: 8,
                              height: 8,
                              margin: const EdgeInsets.symmetric(horizontal: 2),
                              decoration: BoxDecoration(
                                color: Colors.white.withOpacity(0.5),
                                shape: BoxShape.circle,
                              ),
                              child: const Center(
                                child: Text(
                                  '...',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 6,
                                  ),
                                ),
                              ),
                            );
                          }
                          
                          final bool isActive = index == _currentIndex;
                          return Container(
                            width: isActive ? 12 : 8,
                            height: isActive ? 12 : 8,
                            margin: const EdgeInsets.symmetric(horizontal: 2),
                            decoration: BoxDecoration(
                              color: isActive 
                                  ? Colors.white 
                                  : Colors.white.withOpacity(0.5),
                              shape: BoxShape.circle,
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                ),
              ),
            
            // Left/Right navigation arrows (if more than 1 image)
            if (widget.images.length > 1) ...[
              // Left arrow
              if (_currentIndex > 0)
                Positioned(
                  left: 20,
                  top: 0,
                  bottom: 0,
                  child: Center(
                    child: GestureDetector(
                      onTap: () {
                        _pageController.previousPage(
                          duration: const Duration(milliseconds: 300),
                          curve: Curves.easeInOut,
                        );
                      },
                      child: Container(
                        padding: const EdgeInsets.all(12),
                        decoration: BoxDecoration(
                          color: Colors.black.withOpacity(0.6),
                          shape: BoxShape.circle,
                        ),
                        child: const Icon(
                          Icons.arrow_back_ios,
                          color: Colors.white,
                          size: 20,
                        ),
                      ),
                    ),
                  ),
                ),
              
              // Right arrow
              if (_currentIndex < widget.images.length - 1)
                Positioned(
                  right: 20,
                  top: 0,
                  bottom: 0,
                  child: Center(
                    child: GestureDetector(
                      onTap: () {
                        _pageController.nextPage(
                          duration: const Duration(milliseconds: 300),
                          curve: Curves.easeInOut,
                        );
                      },
                      child: Container(
                        padding: const EdgeInsets.all(12),
                        decoration: BoxDecoration(
                          color: Colors.black.withOpacity(0.6),
                          shape: BoxShape.circle,
                        ),
                        child: const Icon(
                          Icons.arrow_forward_ios,
                          color: Colors.white,
                          size: 20,
                        ),
                      ),
                    ),
                  ),
                ),
            ],
          ],
        ),
      ),
    );
  }
} 