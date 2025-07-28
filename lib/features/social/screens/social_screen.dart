import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'dart:convert';
import '../../../core/theme/app_theme.dart';
import 'post_detail_screen.dart';
import '../../profile/screens/subscriptions_page.dart';

class SocialScreen extends StatefulWidget {
  const SocialScreen({super.key});

  @override
  State<SocialScreen> createState() => _SocialScreenState();
}

class _SocialScreenState extends State<SocialScreen> {
  List<dynamic> _users = [];
  bool _isLoading = true;
  bool _isVip = false;
  DateTime? _vipExpiry;

  @override
  void initState() {
    super.initState();
    _loadPetData();
    _loadVipStatus();
  }

  Future<void> _loadPetData() async {
    try {
      final String response = await rootBundle.loadString('assets/pets/pet_social_data.json');
      final data = json.decode(response);
      setState(() {
        _users = data['users'];
        _isLoading = false;
      });
    } catch (e) {
      debugPrint('Error loading pet data: $e');
      setState(() {
        _isLoading = false;
      });
    }
  }

  Future<void> _loadVipStatus() async {
    final prefs = await SharedPreferences.getInstance();
    setState(() {
      _isVip = prefs.getBool('isVip') ?? false;
      final expiryStr = prefs.getString('vipExpiry');
      _vipExpiry = expiryStr != null ? DateTime.tryParse(expiryStr) : null;
    });
  }

  bool _isVipActive() {
    if (!_isVip) return false;
    if (_vipExpiry == null) return false;
    return DateTime.now().isBefore(_vipExpiry!);
  }

  void _showVipDialog() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
          title: Row(
            children: [
              Icon(Icons.star, color: AppTheme.primaryColor),
              const SizedBox(width: 8),
              Expanded(
                child: const Text('Premium Required'),
              ),
            ],
          ),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'To view post details, you need Premium access.',
                style: TextStyle(fontSize: 16, color: AppTheme.textPrimary),
              ),
              const SizedBox(height: 16),
              Text(
                'Choose your Premium plan:',
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: AppTheme.textPrimary),
              ),
              const SizedBox(height: 12),
              // Weekly plan
              Container(
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: Colors.grey[50],
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(color: Colors.grey[300]!),
                ),
                child: Row(
                  children: [
                    Icon(Icons.calendar_today, color: AppTheme.primaryColor, size: 20),
                    const SizedBox(width: 8),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Weekly Premium',
                            style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: AppTheme.textPrimary),
                          ),
                          Text(
                            '\$12.99 per week',
                            style: TextStyle(fontSize: 12, color: AppTheme.textSecondary),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 8),
              // Monthly plan
              Container(
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: AppTheme.primaryColor.withValues(alpha: 0.1),
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(color: AppTheme.primaryColor),
                ),
                child: Row(
                  children: [
                    Icon(Icons.star, color: AppTheme.primaryColor, size: 20),
                    const SizedBox(width: 8),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Monthly Premium',
                            style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: AppTheme.textPrimary),
                          ),
                          Text(
                            '\$49.99 per month',
                            style: TextStyle(fontSize: 12, color: AppTheme.textSecondary),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
                      decoration: BoxDecoration(
                        color: AppTheme.primaryColor,
                        borderRadius: BorderRadius.circular(4),
                      ),
                      child: const Text(
                        'POPULAR',
                        style: TextStyle(color: Colors.white, fontSize: 10, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
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
                _navigateToSubscriptions();
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: AppTheme.primaryColor,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
              ),
              child: const Text('Get Premium', style: TextStyle(color: Colors.white)),
            ),
          ],
        );
      },
    );
  }

  void _navigateToSubscriptions() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => const SubscriptionsPage(),
      ),
    ).then((_) {
      // 返回时重新加载VIP状态
      _loadVipStatus();
    });
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    // 每次页面重新获得焦点时重新加载VIP状态
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _loadVipStatus();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          // 顶部背景图片
          Container(
            width: double.infinity,
            height: 200,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/eiya_post_topbg.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          // 话题图片
          Container(
            width: double.infinity,
            padding: const EdgeInsets.only(left: 16, right: 16, top: 16, bottom: 8),
            child: Stack(
              children: [
                Image.asset(
                  'assets/images/eiya_community_hot.png',
                  fit: BoxFit.contain,
                ),
                if (_users.isNotEmpty)
                  Positioned(
                    left: 16,
                    top: 70,
                    right: 16,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        _buildHotTopicItem(_getRandomTopicText(0)),
                        const SizedBox(height: 16),
                        _buildHotTopicItem(_getRandomTopicText(1)),
                        const SizedBox(height: 16),
                        _buildHotTopicItem(_getRandomTopicText(2)),
                      ],
                    ),
                  ),
              ],
            ),
          ),
          // 瀑布流列表
          Expanded(
            child: _isLoading
                ? const Center(child: CircularProgressIndicator())
                : Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    child: MasonryGridView.builder(
                      padding: EdgeInsets.zero, // 移除默认内边距
                      gridDelegate: const SliverSimpleGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                      ),
                      itemCount: _users.length,
                      itemBuilder: (context, index) {
                        return _buildPostCard(_users[index]);
                      },
                      mainAxisSpacing: 8,
                      crossAxisSpacing: 8,
                    ),
                  ),
          ),
        ],
      ),
    );
  }

  Widget _buildPostCard(dynamic user) {
    final post = user['post'];
    final bool hasVideo = post['video'] != null;
    final bool hasImages = post['images'] != null && post['images'].isNotEmpty;
    
    return GestureDetector(
      onTap: () {
        // 检查VIP状态
        if (!_isVipActive()) {
          _showVipDialog();
          return;
        }
        
        // 使用完全独立的Navigator来避免底部导航显示
        showGeneralDialog(
          context: context,
          barrierDismissible: false,
          barrierColor: Colors.transparent,
          transitionDuration: const Duration(milliseconds: 300),
          pageBuilder: (context, animation, secondaryAnimation) {
            return PostDetailScreen(
              user: user,
              post: post,
            );
          },
          transitionBuilder: (context, animation, secondaryAnimation, child) {
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
        );
      },
      child: Card(
        elevation: 2,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          // 用户信息头部
          Padding(
            padding: const EdgeInsets.all(12),
            child: Row(
              children: [
                CircleAvatar(
                  radius: 16,
                  backgroundImage: AssetImage(user['avatar']),
                ),
                const SizedBox(width: 8),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Expanded(
                            child: Text(
                              user['displayName'],
                              style: const TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 12,
                              ),
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                         
                        ],
                      ),
                      Text(
                        '@${user['username']}',
                        style: TextStyle(
                          fontSize: 10,
                          color: AppTheme.textHint,
                        ),
                        overflow: TextOverflow.ellipsis,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          
          // 内容图片或视频
          if (hasImages)
            ClipRRect(
              borderRadius: const BorderRadius.vertical(top: Radius.circular(8)),
              child: Image.asset(
                post['images'][0], // 显示第一张图片
                width: double.infinity,
                fit: BoxFit.cover,
                errorBuilder: (context, error, stackTrace) {
                  return Container(
                    height: 120,
                    color: Colors.grey[200],
                    child: const Center(
                      child: Icon(Icons.image_not_supported, color: Colors.grey),
                    ),
                  );
                },
              ),
            )
          else if (hasVideo)
            Stack(
              children: [
                ClipRRect(
                  borderRadius: const BorderRadius.vertical(top: Radius.circular(8)),
                  child: Image.asset(
                    post['thumbnail'],
                    width: double.infinity,
                    height: 120,
                    fit: BoxFit.cover,
                    errorBuilder: (context, error, stackTrace) {
                      return Container(
                        height: 120,
                        color: Colors.grey[200],
                        child: const Center(
                          child: Icon(Icons.video_library, color: Colors.grey),
                        ),
                      );
                    },
                  ),
                ),
                Positioned(
                  top: 8,
                  right: 8,
                  child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
                    decoration: BoxDecoration(
                      color: Colors.black54,
                      borderRadius: BorderRadius.circular(4),
                    ),
                    child: Text(
                      post['duration'] ?? '00:00',
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 10,
                      ),
                    ),
                  ),
                ),
                const Positioned(
                  top: 0,
                  bottom: 0,
                  left: 0,
                  right: 0,
                  child: Center(
                    child: Icon(
                      Icons.play_circle_fill,
                      color: Colors.white,
                      size: 32,
                    ),
                  ),
                ),
              ],
            ),
          
          // 内容文本
          Padding(
            padding: const EdgeInsets.all(12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  post['content'],
                  style: const TextStyle(fontSize: 12),
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                ),
                const SizedBox(height: 8),
                
                // 互动按钮
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    _buildActionButton(
                      Icons.favorite_border,
                      '${post['likes']}',
                      Colors.red,
                    ),
                   
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    ),
    );
  }

  String _getRandomTopicText(int index) {
    if (_users.isEmpty) return '';
    
    // 创建一个随机索引列表，确保不重复
    final List<int> randomIndices = [];
    final random = DateTime.now().millisecondsSinceEpoch;
    
    // 生成3个不重复的随机索引
    for (int i = 0; i < 3; i++) {
      int randomIndex;
      do {
        randomIndex = (random + i * 7) % _users.length;
      } while (randomIndices.contains(randomIndex));
      randomIndices.add(randomIndex);
    }
    
    if (index < randomIndices.length) {
      final user = _users[randomIndices[index]];
      final post = user['post'];
      // 截取内容的前50个字符
      String content = post['content'] ?? '';
      if (content.length > 50) {
        content = '${content.substring(0, 50)}...';
      }
      return content;
    }
    
    return '';
  }

  Widget _buildHotTopicItem(String text) {
    if (text.isEmpty) return const SizedBox.shrink();
    
    // 找到对应的用户数据
    final user = _users.firstWhere(
      (u) => u['post']['content'].startsWith(text.replaceAll('...', '')),
      orElse: () => _users.isNotEmpty ? _users[0] : null,
    );
    
    return GestureDetector(
      onTap: () {
        // 检查VIP状态
        if (!_isVipActive()) {
          _showVipDialog();
          return;
        }
        
        if (user != null) {
          showGeneralDialog(
            context: context,
            barrierDismissible: false,
            barrierColor: Colors.transparent,
            transitionDuration: const Duration(milliseconds: 300),
            pageBuilder: (context, animation, secondaryAnimation) {
              return PostDetailScreen(
                user: user,
                post: user['post'],
              );
            },
            transitionBuilder: (context, animation, secondaryAnimation, child) {
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
          );
        }
      },
      child: Row(
        children: [
          Container(
            width: 4,
            height: 4,
            decoration: const BoxDecoration(
              color: AppTheme.primaryColor,
              shape: BoxShape.circle,
            ),
          ),
          const SizedBox(width: 8),
          Expanded(
            child: Text(
              text,
              style: const TextStyle(
                fontSize: 16,
                color: Colors.black87,
                fontWeight: FontWeight.w500,
              ),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
          ),
          const Icon(
            Icons.chevron_right,
            size: 16,
            color: Colors.black54,
          ),
        ],
      ),
    );
  }

  Widget _buildActionButton(IconData icon, String label, Color color) {
    return InkWell(
      onTap: () {
        // TODO: 实现对应的交互功能
      },
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            icon,
            size: 16,
            color: color,
          ),
          const SizedBox(width: 4),
          Text(
            label,
            style: TextStyle(
              fontSize: 10,
              color: color,
            ),
          ),
        ],
      ),
    );
  }
} 