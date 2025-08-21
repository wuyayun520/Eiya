import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../../core/theme/app_theme.dart';
import '../../social/screens/chat_page.dart';
import '../../social/models/yoga_user.dart';
import 'subscriptions_page.dart';

class UserProfileScreen extends StatefulWidget {
  final Map<String, dynamic> user;

  const UserProfileScreen({
    super.key,
    required this.user,
  });

  @override
  State<UserProfileScreen> createState() => _UserProfileScreenState();
}

class _UserProfileScreenState extends State<UserProfileScreen> {
  bool _isFollowing = false;
  bool _isBlocked = false;
  int _followersCount = 0;
  bool _isLoading = false;
  bool _isVip = false;
  DateTime? _vipExpiry;

  @override
  void initState() {
    super.initState();
    _followersCount = widget.user['followers'] ?? 0;
    _loadUserStatus();
    _loadVipStatus();
  }

  Future<void> _loadUserStatus() async {
    final prefs = await SharedPreferences.getInstance();
    final userId = widget.user['id'] ?? '';
    
    setState(() {
      _isFollowing = prefs.getBool('following_$userId') ?? false;
      _isBlocked = prefs.getBool('blocked_$userId') ?? false;
    });
  }

  Future<void> _loadVipStatus() async {
    final prefs = await SharedPreferences.getInstance();
    setState(() {
      _isVip = prefs.getBool('isVip') ?? false;
      final expiryStr = prefs.getString('vipExpiry');
      _vipExpiry = expiryStr != null ? DateTime.tryParse(expiryStr) : null;
    });
  }

  bool _isMonthlyVipActive() {
    if (!_isVip) return false;
    if (_vipExpiry == null) return false;
    // 检查是否是月订阅（有效期超过7天）
    final daysUntilExpiry = _vipExpiry!.difference(DateTime.now()).inDays;
    return daysUntilExpiry > 7;
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
                child: const Text('Monthly Premium Required'),
              ),
            ],
          ),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'To send messages to other users, you need Monthly Premium access.',
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
              child: const Text('Get Monthly Premium', style: TextStyle(color: Colors.white)),
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
        builder: (context) => const SubscriptionsPage(initialIndex: 1), // 默认选择月订阅
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

  Future<void> _toggleFollow() async {
    if (_isBlocked) return;
    
    setState(() {
      _isLoading = true;
    });

    // 模拟网络请求延迟
    await Future.delayed(const Duration(milliseconds: 500));

    final prefs = await SharedPreferences.getInstance();
    final userId = widget.user['id'] ?? '';
    
    setState(() {
      _isFollowing = !_isFollowing;
      _followersCount += _isFollowing ? 1 : -1;
      _isLoading = false;
    });

    // 保存关注状态
    await prefs.setBool('following_$userId', _isFollowing);
    
    // 显示成功提示
    _showSuccessSnackBar(_isFollowing ? 'Followed successfully! 👥' : 'Unfollowed successfully');
  }

  Future<void> _blockUser() async {
    final prefs = await SharedPreferences.getInstance();
    final userId = widget.user['id'] ?? '';
    
    setState(() {
      _isBlocked = true;
      if (_isFollowing) {
        _isFollowing = false;
        _followersCount -= 1;
      }
    });

    // 保存拉黑状态
    await prefs.setBool('blocked_$userId', true);
    await prefs.setBool('following_$userId', false);
    
    _showSuccessSnackBar('User blocked successfully! 🚫');
  }

  Future<void> _unblockUser() async {
    final prefs = await SharedPreferences.getInstance();
    final userId = widget.user['id'] ?? '';
    
    setState(() {
      _isBlocked = false;
    });

    // 移除拉黑状态
    await prefs.setBool('blocked_$userId', false);
    
    _showSuccessSnackBar('User unblocked successfully! ✅');
  }

  Future<void> _reportUser() async {
    // 模拟举报请求
    await Future.delayed(const Duration(milliseconds: 300));
    _showSuccessSnackBar('Report submitted successfully! 📝');
  }

  void _showMoreOptions() {
    showModalBottomSheet(
      context: context,
      backgroundColor: Colors.transparent,
      builder: (BuildContext context) {
        return Container(
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
          ),
          child: SafeArea(
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
                
                // 用户信息
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  child: Row(
                    children: [
                      CircleAvatar(
                        radius: 25,
                        backgroundImage: AssetImage(widget.user['avatar']),
                      ),
                      const SizedBox(width: 12),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              widget.user['displayName'],
                              style: const TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 16,
                              ),
                            ),
                            Text(
                              '@${widget.user['username']}',
                              style: TextStyle(
                                color: AppTheme.textHint,
                                fontSize: 14,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                
                const Divider(),
                
                // 选项列表
                if (!_isBlocked) ...[
                  _buildOptionItem(
                    icon: Icons.flag_outlined,
                    title: 'Report User',
                    subtitle: 'Report inappropriate content or behavior',
                    color: Colors.orange,
                    onTap: () {
                      Navigator.pop(context);
                      _showReportDialog();
                    },
                  ),
                  _buildOptionItem(
                    icon: Icons.block,
                    title: 'Block User',
                    subtitle: 'Block this user and hide their content',
                    color: Colors.red,
                    onTap: () {
                      Navigator.pop(context);
                      _showBlockDialog();
                    },
                  ),
                ] else ...[
                  _buildOptionItem(
                    icon: Icons.check_circle_outline,
                    title: 'Unblock User',
                    subtitle: 'Unblock this user and show their content',
                    color: Colors.green,
                    onTap: () {
                      Navigator.pop(context);
                      _unblockUser();
                    },
                  ),
                ],
                
                const SizedBox(height: 20),
              ],
            ),
          ),
        );
      },
    );
  }

  Widget _buildOptionItem({
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
          color: color.withValues(alpha: 0.1),
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

  void _showReportDialog() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
          title: Row(
            children: [
              Icon(Icons.flag_outlined, color: Colors.orange),
              const SizedBox(width: 8),
              const Text('Report User'),
            ],
          ),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Why are you reporting ${widget.user['displayName']}?'),
              const SizedBox(height: 16),
              ...[
                'Spam or fake account',
                'Inappropriate content',
                'Harassment or bullying',
                'Hate speech',
                'Other'
              ].map((reason) => RadioListTile<String>(
                title: Text(reason, style: const TextStyle(fontSize: 14)),
                value: reason,
                groupValue: null,
                onChanged: (value) {
                  Navigator.pop(context);
                  _reportUser();
                },
                contentPadding: EdgeInsets.zero,
              )),
            ],
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: Text('Cancel', style: TextStyle(color: AppTheme.textHint)),
            ),
          ],
        );
      },
    );
  }

  void _showBlockDialog() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
          title: Row(
            children: [
              Icon(Icons.block, color: Colors.red),
              const SizedBox(width: 8),
              const Text('Block User'),
            ],
          ),
          content: Text(
            'Are you sure you want to block ${widget.user['displayName']}?\n\n'
            '• You won\'t see their posts or messages\n'
            '• They won\'t be able to follow you\n'
            '• This action can be undone later',
            style: const TextStyle(fontSize: 15),
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: Text('Cancel', style: TextStyle(color: AppTheme.textHint)),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
                _blockUser();
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.red,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
              ),
              child: const Text('Block', style: TextStyle(color: Colors.white)),
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
        backgroundColor: AppTheme.primaryColor,
        duration: const Duration(seconds: 2),
        behavior: SnackBarBehavior.floating,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        margin: const EdgeInsets.all(16),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    // 设置状态栏样式
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.dark,
        systemNavigationBarColor: Colors.white,
        systemNavigationBarIconBrightness: Brightness.dark,
      ),
    );
    
    return Material(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: _isBlocked ? _buildBlockedContent() : _buildNormalContent(),
      ),
    );
  }

  Widget _buildBlockedContent() {
    return SafeArea(
      child: Column(
        children: [
          // 简单的AppBar
          Container(
            padding: const EdgeInsets.all(16),
            child: Row(
              children: [
                IconButton(
                  icon: const Icon(Icons.close, size: 28),
                  onPressed: () => Navigator.of(context).pop(),
                ),
                const Spacer(),
                IconButton(
                  icon: const Icon(Icons.more_vert, size: 24),
                  onPressed: _showMoreOptions,
                ),
              ],
            ),
          ),
          
          // 拉黑状态显示
          Expanded(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    padding: const EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      color: Colors.grey[100],
                      shape: BoxShape.circle,
                    ),
                    child: Icon(
                      Icons.block,
                      size: 60,
                      color: Colors.grey[400],
                    ),
                  ),
                  const SizedBox(height: 24),
                  Text(
                    'User Blocked',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w700,
                      color: Colors.grey[600],
                    ),
                  ),
                  const SizedBox(height: 12),
                  Text(
                    'You have blocked this user.\nTheir content is hidden from you.',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.grey[500],
                      height: 1.5,
                    ),
                  ),
                  const SizedBox(height: 32),
                  ElevatedButton(
                    onPressed: _unblockUser,
                    style: ElevatedButton.styleFrom(
                      backgroundColor: AppTheme.primaryColor,
                      padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 12),
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(24)),
                    ),
                    child: const Text(
                      'Unblock User',
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
        ],
      ),
    );
  }

  Widget _buildNormalContent() {
    return CustomScrollView(
      slivers: [
        // Custom App Bar with gradient
        SliverAppBar(
          expandedHeight: 120,
          floating: false,
          pinned: true,
          elevation: 0,
          backgroundColor: Colors.white,
          foregroundColor: Colors.black,
          leading: IconButton(
            icon: const Icon(Icons.close, size: 28),
            onPressed: () => Navigator.of(context).pop(),
          ),
          actions: [
            IconButton(
              icon: const Icon(Icons.more_vert, size: 24),
              onPressed: _showMoreOptions,
            ),
          ],
          flexibleSpace: FlexibleSpaceBar(
            background: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                    AppTheme.primaryColor.withValues(alpha: 0.1),
                    AppTheme.secondary.withValues(alpha: 0.1),
                  ],
                ),
              ),
            ),
            title: Text(
              '@${widget.user['username']}',
              style: const TextStyle(
                color: Colors.black87,
                fontWeight: FontWeight.w600,
              ),
            ),
            centerTitle: true,
          ),
        ),
        
        // Profile Content
        SliverToBoxAdapter(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Profile Header
              Container(
                padding: const EdgeInsets.all(24),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    // Large Avatar with gradient border
                    Container(
                      padding: const EdgeInsets.all(4),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        gradient: LinearGradient(
                          colors: [
                            AppTheme.primaryColor,
                            AppTheme.secondary,
                          ],
                        ),
                      ),
                      child: Container(
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.white,
                        ),
                        padding: const EdgeInsets.all(4),
                        child: CircleAvatar(
                          radius: 60,
                          backgroundImage: AssetImage(widget.user['avatar']),
                        ),
                      ),
                    ),
                    
                    const SizedBox(height: 20),
                    
                    // User Name with verification
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          widget.user['displayName'],
                          style: const TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 24,
                            color: Colors.black87,
                          ),
                        ),
                        if (widget.user['verified'] == true) ...[
                          const SizedBox(width: 8),
                          Container(
                            padding: const EdgeInsets.all(4),
                            decoration: BoxDecoration(
                              color: AppTheme.primaryColor,
                              shape: BoxShape.circle,
                            ),
                            child: const Icon(
                              Icons.check,
                              size: 16,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ],
                    ),
                    
                    const SizedBox(height: 8),
                    
                    Text(
                      '@${widget.user['username']}',
                      style: TextStyle(
                        fontSize: 16,
                        color: AppTheme.textHint,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    
                    if (widget.user['location'] != null) ...[
                      const SizedBox(height: 12),
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                        decoration: BoxDecoration(
                          color: Colors.grey[100],
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Icon(
                              Icons.location_on,
                              size: 16,
                              color: AppTheme.primaryColor,
                            ),
                            const SizedBox(width: 4),
                            Text(
                              widget.user['location'],
                              style: TextStyle(
                                fontSize: 14,
                                color: AppTheme.textHint,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                    
                    if (widget.user['bio'] != null) ...[
                      const SizedBox(height: 16),
                      Container(
                        padding: const EdgeInsets.all(16),
                        decoration: BoxDecoration(
                          color: Colors.grey[50],
                          borderRadius: BorderRadius.circular(12),
                          border: Border.all(color: Colors.grey[200]!),
                        ),
                        child: Text(
                          widget.user['bio'],
                          style: const TextStyle(
                            fontSize: 15,
                            height: 1.5,
                            color: Colors.black87,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ],
                    
                    const SizedBox(height: 24),
                    
                    // Stats Row
                    Container(
                      padding: const EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [
                            AppTheme.primaryColor.withValues(alpha: 0.1),
                            AppTheme.secondary.withValues(alpha: 0.1),
                          ],
                        ),
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          _buildStatColumn('Followers', '$_followersCount'),
                          Container(width: 1, height: 30, color: Colors.grey[300]),
                          _buildStatColumn('Following', '${widget.user['following'] ?? 0}'),
                        ],
                      ),
                    ),
                    
                    const SizedBox(height: 24),
                    
                    // Action Buttons
                    Row(
                      children: [
                        // Follow Button
                        Expanded(
                          child: Container(
                            height: 48,
                            decoration: BoxDecoration(
                              gradient: _isFollowing 
                                  ? null 
                                  : LinearGradient(
                                      colors: [
                                        AppTheme.primaryColor,
                                        AppTheme.secondary,
                                      ],
                                    ),
                              color: _isFollowing ? Colors.grey[200] : null,
                              borderRadius: BorderRadius.circular(24),
                            ),
                            child: ElevatedButton(
                              onPressed: _isLoading ? null : _toggleFollow,
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.transparent,
                                shadowColor: Colors.transparent,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(24),
                                ),
                              ),
                              child: _isLoading
                                  ? SizedBox(
                                      width: 20,
                                      height: 20,
                                      child: CircularProgressIndicator(
                                        strokeWidth: 2,
                                        valueColor: AlwaysStoppedAnimation<Color>(
                                          _isFollowing ? Colors.black54 : Colors.white,
                                        ),
                                      ),
                                    )
                                  : Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Icon(
                                          _isFollowing ? Icons.check : Icons.person_add,
                                          color: _isFollowing ? Colors.black54 : Colors.white,
                                          size: 20,
                                        ),
                                        const SizedBox(width: 8),
                                        Text(
                                          _isFollowing ? 'Following' : 'Follow',
                                          style: TextStyle(
                                            fontWeight: FontWeight.w600,
                                            fontSize: 16,
                                            color: _isFollowing ? Colors.black54 : Colors.white,
                                          ),
                                        ),
                                      ],
                                    ),
                            ),
                          ),
                        ),
                        
                        const SizedBox(width: 12),
                        
                        // Message Button
                        Expanded(
                          child: ElevatedButton(
                            onPressed: () {
                              // 直接跳转到聊天页面
                              final yogaUser = YogaUser.fromJson(widget.user);
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (context) => ChatPage(user: yogaUser),
                                ),
                              );
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.white,
                              foregroundColor: AppTheme.primaryColor,
                              side: BorderSide(color: AppTheme.primaryColor, width: 2),
                              padding: const EdgeInsets.symmetric(vertical: 14),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(24),
                              ),
                            ),
                            child: const Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.chat_bubble_outline,
                                  size: 20,
                                ),
                                SizedBox(width: 8),
                                Text(
                                  'Message',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 16,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              
              // 添加底部内边距
              const SizedBox(height: 100),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildStatColumn(String label, String count) {
    return Column(
      children: [
        Text(
          count,
          style: const TextStyle(
            fontWeight: FontWeight.w700,
            fontSize: 20,
            color: Colors.black87,
          ),
        ),
        const SizedBox(height: 4),
        Text(
          label,
          style: TextStyle(
            fontSize: 13,
            color: AppTheme.textHint,
            fontWeight: FontWeight.w600,
          ),
        ),
      ],
    );
  }
} 