import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:go_router/go_router.dart';
import 'package:path_provider/path_provider.dart';
import 'dart:io';
import 'dart:convert';
import '../../../core/routes/app_routes.dart';
import '../../../core/theme/app_theme.dart';
import '../../../core/constants/app_constants.dart';
import '../../social/screens/chat_page.dart';
import '../../social/models/yoga_user.dart';

class PetsScreen extends StatefulWidget {
  const PetsScreen({super.key});

  @override
  State<PetsScreen> createState() => _PetsScreenState();
}

class _PetsScreenState extends State<PetsScreen> {
  List<ChatUser> _chatUsers = [];
  bool _isLoading = true;

  @override
  void initState() {
    super.initState();
    _loadChatUsers();
  }

  Future<void> _loadChatUsers() async {
    try {
      setState(() {
        _isLoading = true;
      });
      
      final dir = await getApplicationDocumentsDirectory();
      final chatDir = Directory(dir.path);
      final List<ChatUser> users = [];

      // 查找所有聊天历史文件
      await for (final entity in chatDir.list()) {
        if (entity is File && entity.path.contains('chat_history_')) {
          final fileName = entity.path.split('/').last;
          final userId = fileName.replaceAll('chat_history_', '').replaceAll('.json', '');
          
          try {
            final jsonStr = await entity.readAsString();
            final List<dynamic> messages = json.decode(jsonStr);
            
            if (messages.isNotEmpty) {
              // 过滤掉用户信息条目，只保留实际的聊天消息
              final chatMessages = messages.where((item) => 
                item is Map<String, dynamic> && item['type'] != 'userInfo'
              ).toList();
              
              if (chatMessages.isNotEmpty) {
                // 获取最新消息
                final lastMessage = chatMessages.last;
                
                // 从聊天记录中提取用户信息
                final user = _extractUserFromMessages(messages, userId);
                
                if (user != null) {
                  users.add(ChatUser(
                    user: user,
                    lastMessage: _formatLastMessage(lastMessage),
                    lastMessageTime: lastMessage['time'] ?? '',
                    unreadCount: 0,
                  ));
                  debugPrint('Added chat user: ${user.name} with ${chatMessages.length} messages');
                }
              }
            }
          } catch (e) {
            debugPrint('Error reading chat file $fileName: $e');
          }
        }
      }

      // 按最新消息时间排序
      users.sort((a, b) => _compareTime(b.lastMessageTime, a.lastMessageTime));

      setState(() {
        _chatUsers = users;
        _isLoading = false;
      });
      
      debugPrint('Loaded ${users.length} chat users');
    } catch (e) {
      debugPrint('Error loading chat users: $e');
      setState(() {
        _isLoading = false;
      });
    }
  }

  YogaUser? _extractUserFromMessages(List<dynamic> messages, String userId) {
    try {
      // 尝试从聊天记录中提取用户信息
      for (final message in messages) {
        if (message is Map<String, dynamic> && message.containsKey('userInfo')) {
          final userInfo = message['userInfo'];
          debugPrint('Found user info for $userId: ${userInfo['name']}');
          return YogaUser(
            userId: userId,
            name: userInfo['name'] ?? 'Unknown User',
            username: userInfo['username'] ?? 'unknown',
            profilePicture: userInfo['profilePicture'] ?? 'assets/pets/1/post_1.jpg',
            userIcon: userInfo['userIcon'] ?? 'assets/pets/1/post_1.jpg',
            bio: userInfo['bio'] ?? '',
          );
        }
      }
      
      // 如果没有找到用户信息，创建一个默认用户（而不是返回null）
      debugPrint('No user info found for $userId, creating default user');
      return YogaUser(
        userId: userId,
        name: 'User $userId',
        username: 'user_$userId',
        profilePicture: 'assets/pets/1/post_1.jpg',
        userIcon: 'assets/pets/1/post_1.jpg',
        bio: 'Pet lover',
      );
    } catch (e) {
      debugPrint('Error extracting user info for $userId: $e');
      // 即使出错也返回默认用户，而不是null
      return YogaUser(
        userId: userId,
        name: 'User $userId',
        username: 'user_$userId',
        profilePicture: 'assets/pets/1/post_1.jpg',
        userIcon: 'assets/pets/1/post_1.jpg',
        bio: 'Pet lover',
      );
    }
  }

  String _formatLastMessage(Map<String, dynamic> message) {
    final type = message['type'] ?? 'text';
    switch (type) {
      case 'text':
        return message['text'] ?? '';
      case 'image':
        return '📷 Photo';
      case 'audio':
        return '🎵 Voice message';
      default:
        return 'Message';
    }
  }

  int _compareTime(String time1, String time2) {
    // 简单的时间比较，实际应用中应该使用更精确的时间戳
    return time1.compareTo(time2);
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
            height: MediaQuery.of(context).size.height * 0.3,
            child: Image.asset(
              'assets/images/eiya_chat_topbg.png',
              fit: BoxFit.cover,
              errorBuilder: (context, error, stackTrace) {
                return Container(
                  color: AppTheme.primaryColor.withValues(alpha: 0.1),
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
          ),
          
          // 聊天用户列表
          Expanded(
            child: Container(
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.vertical(top: Radius.circular(24)),
              ),
              child: Column(
                children: [
                  // 顶部装饰条
                  Container(
                    padding: const EdgeInsets.all(16),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: 40,
                          height: 4,
                          decoration: BoxDecoration(
                            color: Colors.grey[300],
                            borderRadius: BorderRadius.circular(2),
                          ),
                        ),
                      ],
                    ),
                  ),
                  
                  // 聊天列表
                  Expanded(
                    child: _isLoading
                        ? const Center(child: CircularProgressIndicator())
                        : _chatUsers.isEmpty
                            ? _buildEmptyState()
                            : ListView.builder(
                                padding: const EdgeInsets.symmetric(horizontal: 16),
                                itemCount: _chatUsers.length,
                                itemBuilder: (context, index) {
                                  final chatUser = _chatUsers[index];
                                  return _ChatUserTile(
                                    chatUser: chatUser,
                                    onTap: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => ChatPage(user: chatUser.user),
                                        ),
                                      ).then((_) {
                                        // 返回时刷新列表
                                        _loadChatUsers();
                                      });
                                    },
                                  );
                                },
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

  Widget _buildEmptyState() {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: AppTheme.primaryColor.withValues(alpha: 0.1),
              shape: BoxShape.circle,
            ),
            child: Icon(
              Icons.chat_bubble_outline,
              size: 64,
              color: AppTheme.primaryColor,
            ),
          ),
          const SizedBox(height: 24),
          Text(
            'No chats yet',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w600,
              color: Colors.black87,
            ),
          ),
          const SizedBox(height: 8),
          Text(
            'Start a conversation with other pet lovers!',
            style: TextStyle(
              fontSize: 16,
              color: Colors.grey[600],
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}

class ChatUser {
  final YogaUser user;
  final String lastMessage;
  final String lastMessageTime;
  final int unreadCount;

  ChatUser({
    required this.user,
    required this.lastMessage,
    required this.lastMessageTime,
    required this.unreadCount,
  });
}

class _ChatUserTile extends StatelessWidget {
  final ChatUser chatUser;
  final VoidCallback onTap;

  const _ChatUserTile({
    required this.chatUser,
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
          borderRadius: BorderRadius.circular(16),
          child: Container(
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: Colors.grey[50],
              borderRadius: BorderRadius.circular(16),
              border: Border.all(
                color: Colors.grey[200]!,
                width: 1,
              ),
            ),
            child: Row(
              children: [
                // 用户头像
                Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    gradient: LinearGradient(
                      colors: [AppTheme.primaryColor, AppTheme.secondary],
                    ),
                  ),
                  child: Container(
                    padding: const EdgeInsets.all(2),
                    child: CircleAvatar(
                      radius: 28,
                      backgroundImage: AssetImage(chatUser.user.profilePicture),
                    ),
                  ),
                ),
                const SizedBox(width: 16),
                
                // 用户信息和消息
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Expanded(
                            child: Text(
                              chatUser.user.name,
                              style: const TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                                color: Colors.black87,
                              ),
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                          Text(
                            chatUser.lastMessageTime,
                            style: TextStyle(
                              fontSize: 12,
                              color: Colors.grey[600],
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 4),
                      Text(
                        '@${chatUser.user.username}',
                        style: TextStyle(
                          fontSize: 14,
                          color: AppTheme.primaryColor,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      const SizedBox(height: 6),
                      Row(
                        children: [
                          Expanded(
                            child: Text(
                              chatUser.lastMessage,
                              style: TextStyle(
                                fontSize: 14,
                                color: Colors.grey[700],
                                height: 1.2,
                              ),
                              overflow: TextOverflow.ellipsis,
                              maxLines: 1,
                            ),
                          ),
                          if (chatUser.unreadCount > 0)
                            Container(
                              margin: const EdgeInsets.only(left: 8),
                              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                              decoration: BoxDecoration(
                                color: AppTheme.primaryColor,
                                borderRadius: BorderRadius.circular(12),
                              ),
                              child: Text(
                                '${chatUser.unreadCount}',
                                style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                        ],
                      ),
                    ],
                  ),
                ),
                
                const SizedBox(width: 8),
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