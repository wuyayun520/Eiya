import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:image_picker/image_picker.dart';
import 'package:path_provider/path_provider.dart';
import 'dart:io';
import 'dart:convert';
import '../../../core/theme/app_theme.dart';
import '../../auth/screens/terms_of_service_screen.dart';
import '../../auth/screens/privacy_policy_screen.dart';
import '../../favorites/screens/favorites_screen.dart';
import '../../about/screens/about_screen.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  String _userName = 'Betta fish';
  String _userSignature = 'My favorite dog miya will always be with me';
  String? _avatarPath;
  bool _isEditing = false;
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _signatureController = TextEditingController();
  final ImagePicker _picker = ImagePicker();

  @override
  void initState() {
    super.initState();
    _loadUserData();
  }

  @override
  void dispose() {
    _nameController.dispose();
    _signatureController.dispose();
    super.dispose();
  }

  Future<void> _loadUserData() async {
    try {
      final dir = await getApplicationDocumentsDirectory();
      final file = File('${dir.path}/user_profile.json');
      if (await file.exists()) {
        final jsonStr = await file.readAsString();
        final data = Map<String, dynamic>.from(json.decode(jsonStr));
        setState(() {
          _userName = data['userName'] ?? 'Betta fish';
          _userSignature = data['userSignature'] ?? 'My favorite dog miya will always be with me';
          _avatarPath = data['avatarPath'];
        });
      }
    } catch (e) {
      debugPrint('Error loading user data: $e');
    }
  }

  Future<void> _saveUserData() async {
    try {
      final dir = await getApplicationDocumentsDirectory();
      final file = File('${dir.path}/user_profile.json');
      final data = {
        'userName': _userName,
        'userSignature': _userSignature,
        'avatarPath': _avatarPath,
      };
      await file.writeAsString(json.encode(data));
    } catch (e) {
      debugPrint('Error saving user data: $e');
    }
  }

  Future<void> _pickAvatar() async {
    try {
      final XFile? picked = await _picker.pickImage(
        source: ImageSource.gallery,
        imageQuality: 85,
      );
      if (picked != null) {
        final dir = await getApplicationDocumentsDirectory();
        final fileName = 'avatar_${DateTime.now().millisecondsSinceEpoch}.jpg';
        final avatarFile = File('${dir.path}/$fileName');
        await File(picked.path).copy(avatarFile.path);
        
        setState(() {
          _avatarPath = avatarFile.path;
        });
        await _saveUserData();
      }
    } catch (e) {
      _showErrorSnackBar('Failed to pick image: $e');
    }
  }

  void _startEditing() {
    setState(() {
      _isEditing = true;
      _nameController.text = _userName;
      _signatureController.text = _userSignature;
    });
  }

  void _saveEditing() async {
    setState(() {
      _userName = _nameController.text.trim();
      _userSignature = _signatureController.text.trim();
      _isEditing = false;
    });
    await _saveUserData();
  }

  void _cancelEditing() {
    setState(() {
      _isEditing = false;
    });
  }

  void _showErrorSnackBar(String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message),
        backgroundColor: Colors.red[400],
        behavior: SnackBarBehavior.floating,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    // 设置状态栏为完全透明，让内容从电池栏开始
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.light,
        systemNavigationBarColor: Colors.transparent,
        systemNavigationBarIconBrightness: Brightness.dark,
      ),
    );

    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: Colors.transparent,
      body: Column(
        children: [
          // 顶部图片 - 从电池栏开始
          Container(
            width: double.infinity,
            height: MediaQuery.of(context).size.height * 0.4,
            child: Stack(
              children: [
                // 背景图片
                Image.asset(
                  'assets/images/eiya_post_topbg.png',
                  fit: BoxFit.cover,
                  errorBuilder: (context, error, stackTrace) {
                    return Container(
                      color: AppTheme.primaryColor.withValues(alpha: 1.0),
                      child: Center(
                        child: Icon(
                          Icons.image_not_supported,
                          color: AppTheme.primaryColor,
                          size: 48,
                        ),
                      ),
                    );
                  },
                ),
                
                // 用户信息覆盖层
                Positioned(
                  bottom: 40,
                  left: 20,
                  right: 20,
                  child: Container(
                    padding: const EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withValues(alpha: 0.1),
                          blurRadius: 10,
                          offset: const Offset(0, 5),
                        ),
                      ],
                    ),
                    child: Row(
                      children: [
                        // 头像
                        GestureDetector(
                          onTap: _isEditing ? _pickAvatar : null,
                          child: Stack(
                            children: [
                              Container(
                                width: 80,
                                height: 80,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  border: Border.all(
                                    color: AppTheme.primaryColor,
                                    width: 3,
                                  ),
                                ),
                                child: ClipOval(
                                  child: _avatarPath != null
                                      ? Image.file(
                                          File(_avatarPath!),
                                          fit: BoxFit.cover,
                                          errorBuilder: (context, error, stackTrace) {
                                            return _buildDefaultAvatar();
                                          },
                                        )
                                      : _buildDefaultAvatar(),
                                ),
                              ),
                              if (_isEditing)
                                Positioned(
                                  bottom: 0,
                                  right: 0,
                                  child: Container(
                                    padding: const EdgeInsets.all(4),
                                    decoration: BoxDecoration(
                                      color: AppTheme.primaryColor,
                                      shape: BoxShape.circle,
                                      border: Border.all(color: Colors.white, width: 2),
                                    ),
                                    child: const Icon(
                                      Icons.camera_alt,
                                      color: Colors.white,
                                      size: 16,
                                    ),
                                  ),
                                ),
                            ],
                          ),
                        ),
                        
                        const SizedBox(width: 16),
                        
                        // 用户信息
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              if (_isEditing) ...[
                                TextField(
                                  controller: _nameController,
                                  style: const TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black87,
                                  ),
                                  decoration: const InputDecoration(
                                    border: InputBorder.none,
                                    hintText: 'Enter your name',
                                  ),
                                ),
                                const SizedBox(height: 8),
                                TextField(
                                  controller: _signatureController,
                                  style: TextStyle(
                                    fontSize: 14,
                                    color: Colors.grey[700],
                                  ),
                                  maxLines: 2,
                                  decoration: const InputDecoration(
                                    border: InputBorder.none,
                                    hintText: 'Enter your signature',
                                  ),
                                ),
                              ] else ...[
                                Text(
                                  _userName,
                                  style: const TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black87,
                                  ),
                                ),
                                const SizedBox(height: 4),
                                Text(
                                  _userSignature,
                                  style: TextStyle(
                                    fontSize: 14,
                                    color: Colors.grey[700],
                                    height: 1.2,
                                  ),
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ],
                            ],
                          ),
                        ),
                        
                        // 编辑按钮
                        IconButton(
                          onPressed: _isEditing ? _saveEditing : _startEditing,
                          icon: Icon(
                            _isEditing ? Icons.check : Icons.edit,
                            color: AppTheme.primaryColor,
                            size: 24,
                          ),
                        ),
                        
                        if (_isEditing)
                          IconButton(
                            onPressed: _cancelEditing,
                            icon: const Icon(
                              Icons.close,
                              color: Colors.red,
                              size: 24,
                            ),
                          ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          
          // 剩余空间
          Expanded(
            child: Container(
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.vertical(top: Radius.circular(24)),
              ),
              child: Column(
                children: [
                  
                  
                  // 空白内容区域
                  Expanded(
                    child: ListView(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      children: [
                        const SizedBox(height: 20),
                        
                        // My Likes
                        _MenuOption(
                          icon: Container(
                            width: 40,
                            height: 40,
                            decoration: BoxDecoration(
                              color: AppTheme.primaryColor,
                              borderRadius: BorderRadius.circular(8),
                              border: Border.all(
                                color: Colors.green.withValues(alpha: 0.3),
                                width: 1,
                              ),
                            ),
                            child: const Icon(
                              Icons.favorite,
                              color: Colors.white,
                              size: 20,
                            ),
                          ),
                          title: 'My Likes',
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const FavoritesScreen(),
                              ),
                            );
                          },
                        ),
                        
                        const SizedBox(height: 16),
                        
                        // User Contract
                        _MenuOption(
                          icon: Container(
                            width: 40,
                            height: 40,
                            decoration: BoxDecoration(
                              color: AppTheme.primaryColor,
                              borderRadius: BorderRadius.circular(8),
                              border: Border.all(
                                color: Colors.green.withValues(alpha: 0.3),
                                width: 1,
                              ),
                            ),
                            child: const Icon(
                              Icons.check,
                              color: Colors.white,
                              size: 20,
                            ),
                          ),
                          title: 'User Contract',
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const TermsOfServiceScreen(),
                              ),
                            );
                          },
                        ),
                        
                        const SizedBox(height: 16),
                        
                        // Privacy Policy
                        _MenuOption(
                          icon: Container(
                            width: 40,
                            height: 40,
                            decoration: BoxDecoration(
                              color: AppTheme.primaryColor,
                              shape: BoxShape.circle,
                              border: Border.all(
                                color: Colors.green.withValues(alpha: 0.3),
                                width: 1,
                              ),
                            ),
                            child: const Icon(
                              Icons.security,
                              color: Colors.white,
                              size: 20,
                            ),
                          ),
                          title: 'Privacy Policy',
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const PrivacyPolicyScreen(),
                              ),
                            );
                          },
                        ),
                        
                        const SizedBox(height: 16),
                        
                        // About us
                        _MenuOption(
                          icon: Container(
                            width: 40,
                            height: 40,
                            decoration: BoxDecoration(
                              color: AppTheme.primaryColor,
                              shape: BoxShape.circle,
                              border: Border.all(
                                color: Colors.green.withValues(alpha: 0.3),
                                width: 1,
                              ),
                            ),
                            child: const Icon(
                              Icons.info,
                              color: Colors.white,
                              size: 20,
                            ),
                          ),
                          title: 'About us',
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const AboutScreen(),
                              ),
                            );
                          },
                        ),
                      ],
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

  Widget _buildDefaultAvatar() {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [AppTheme.primaryColor, AppTheme.secondary],
        ),
      ),
      child: const Center(
        child: Icon(
          Icons.person,
          color: Colors.white,
          size: 40,
        ),
      ),
    );
  }
}

class _MenuOption extends StatelessWidget {
  final Widget icon;
  final String title;
  final VoidCallback onTap;

  const _MenuOption({
    required this.icon,
    required this.title,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 8),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: onTap,
          borderRadius: BorderRadius.circular(12),
          child: Container(
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: Colors.grey[50],
              borderRadius: BorderRadius.circular(12),
              border: Border.all(
                color: Colors.grey[200]!,
                width: 1,
              ),
            ),
            child: Row(
              children: [
                icon,
                const SizedBox(width: 16),
                Expanded(
                  child: Text(
                    title,
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Colors.black87,
                    ),
                  ),
                ),
                Icon(
                  Icons.arrow_forward_ios,
                  size: 16,
                  color: Colors.grey[400],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
} 