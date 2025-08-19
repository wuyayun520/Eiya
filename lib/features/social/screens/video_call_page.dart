import 'package:flutter/material.dart';
import 'dart:async';
import '../models/yoga_user.dart';
import '../../../core/theme/app_theme.dart';

class VideoCallPage extends StatefulWidget {
  final YogaUser user;

  const VideoCallPage({super.key, required this.user});

  @override
  State<VideoCallPage> createState() => _VideoCallPageState();
}

class _VideoCallPageState extends State<VideoCallPage> {
  late Timer _countdownTimer;
  int _remainingSeconds = 20;
  bool _isCallActive = true;

  @override
  void initState() {
    super.initState();
    _startCountdown();
  }

  void _startCountdown() {
    _countdownTimer = Timer.periodic(const Duration(seconds: 1), (timer) {
      if (mounted) {
        setState(() {
          if (_remainingSeconds > 0) {
            _remainingSeconds--;
          } else {
            _isCallActive = false;
            timer.cancel();
            _showOfflineMessage();
          }
        });
      }
    });
  }

  void _showOfflineMessage() {
    if (!mounted) return;
    
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return AlertDialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          backgroundColor: Colors.white,
          title: const Row(
            children: [
              Icon(
                Icons.person_off,
                color: Colors.grey,
                size: 28,
              ),
              SizedBox(width: 10),
              Text(
                'Call Failed',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87,
                ),
              ),
            ],
          ),
          content: const Text(
            'User is offline',
            style: TextStyle(
              fontSize: 16,
              color: Colors.grey,
            ),
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop(); // 关闭对话框
                Navigator.of(context).pop(); // 返回上一页
              },
              style: TextButton.styleFrom(
                backgroundColor: AppTheme.primaryColor,
                foregroundColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
              ),
              child: const Text(
                'OK',
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 16,
                ),
              ),
            ),
          ],
        );
      },
    );
  }

  void _endCall() {
    if (_countdownTimer.isActive) {
      _countdownTimer.cancel();
    }
    Navigator.pop(context);
  }

  @override
  void dispose() {
    if (_countdownTimer.isActive) {
      _countdownTimer.cancel();
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      extendBodyBehindAppBar: true,
      extendBody: true,
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              AppTheme.primaryColor.withValues(alpha: 0.8),
              AppTheme.secondary.withValues(alpha: 0.6),
              Colors.black,
            ],
            stops: const [0.0, 0.5, 1.0],
          ),
        ),
        child: Stack(
          children: [
            // 背景图片 - 使用用户的背景图片
            Positioned.fill(
              child: Image.asset(
                widget.user.profilePicture,
                fit: BoxFit.cover,
                errorBuilder: (context, error, stackTrace) {
                  // 如果背景图片加载失败，使用渐变背景
                  return Container(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          AppTheme.primaryColor.withValues(alpha: 0.8),
                          AppTheme.secondary.withValues(alpha: 0.6),
                          Colors.black,
                        ],
                        stops: const [0.0, 0.5, 1.0],
                      ),
                    ),
                  );
                },
              ),
            ),
            
            // 倒计时 - 右上角
            Positioned(
              top: MediaQuery.of(context).padding.top + 20,
              right: 20,
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                decoration: BoxDecoration(
                  color: Colors.black.withValues(alpha: 0.7),
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(
                    color: AppTheme.primaryColor.withValues(alpha: 0.6),
                    width: 1,
                  ),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(
                      Icons.timer,
                      color: AppTheme.primaryColor,
                      size: 20,
                    ),
                    const SizedBox(width: 8),
                    Text(
                      '${_remainingSeconds}s',
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            
            // 用户头像和姓名 - 左上角
            Positioned(
              top: MediaQuery.of(context).padding.top + 20,
              left: 20,
              child: Container(
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    // 用户头像
                    Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: Colors.white,
                          width: 2,
                        ),
                      ),
                      child: CircleAvatar(
                        radius: 25,
                        backgroundColor: Colors.grey[300],
                        child: ClipOval(
                          child: Image.asset(
                            widget.user.userIcon,
                            width: 50,
                            height: 50,
                            fit: BoxFit.cover,
                            errorBuilder: (context, error, stackTrace) {
                              return Container(
                                width: 50,
                                height: 50,
                                color: Colors.grey[300],
                                child: const Icon(
                                  Icons.person,
                                  size: 25,
                                  color: Colors.grey,
                                ),
                              );
                            },
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 12),
                    // 用户名
                    Text(
                      widget.user.name,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        shadows: [
                          Shadow(
                            color: Colors.black,
                            offset: Offset(1, 1),
                            blurRadius: 2,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            
            // 控制按钮 - 底部
            Positioned(
              bottom: MediaQuery.of(context).padding.bottom + 50,
              left: 0,
              right: 0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  // 挂断按钮
                  GestureDetector(
                    onTap: _endCall,
                    child: Container(
                      width: 80,
                      height: 80,
                      decoration: BoxDecoration(
                        gradient: const LinearGradient(
                          colors: [
                            Color(0xFFFF6B6B),
                            Color(0xFFE74C3C),
                          ],
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                        ),
                        shape: BoxShape.circle,
                        boxShadow: [
                          BoxShadow(
                            color: const Color(0xFFFF6B6B).withValues(alpha: 0.6),
                            blurRadius: 20,
                            offset: const Offset(0, 8),
                          ),
                        ],
                      ),
                      child: const Icon(
                        Icons.call_end_rounded,
                        color: Colors.white,
                        size: 40,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
} 