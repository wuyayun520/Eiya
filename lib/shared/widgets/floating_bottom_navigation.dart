import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../core/routes/app_routes.dart';
import '../../core/theme/app_theme.dart';

class FloatingBottomNavigation extends StatelessWidget {
  final Widget child;
  
  const FloatingBottomNavigation({super.key, required this.child});

  int _calculateSelectedIndex(BuildContext context) {
    final String location = GoRouterState.of(context).uri.path;
    if (location.startsWith(AppRoutes.home)) return 0;
    if (location.startsWith(AppRoutes.social)) return 1;
    if (location.startsWith(AppRoutes.pets)) return 2;
    if (location.startsWith(AppRoutes.profile)) return 3;
    return 0;
  }

  void _onItemTapped(BuildContext context, int index) {
    switch (index) {
      case 0:
        context.go(AppRoutes.home);
        break;
      case 1:
        context.go(AppRoutes.social);
        break;
      case 2:
        context.go(AppRoutes.pets);
        break;
      case 3:
        context.go(AppRoutes.profile);
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    final selectedIndex = _calculateSelectedIndex(context);
    
    return Scaffold(
      body: child,
      extendBody: true,
      bottomNavigationBar: Container(
        margin: const EdgeInsets.only(left: 20, right: 20, bottom: 40),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(30),
          child: Container(
            height: 60,
            decoration: BoxDecoration(
              color: const Color(0xFF2D2D2D),
              borderRadius: BorderRadius.circular(30),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.2),
                  blurRadius: 20,
                  offset: const Offset(0, 8),
                ),
              ],
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _buildNavItem(
                  context: context,
                  index: 0,
                  isSelected: selectedIndex == 0,
                  normalIcon: 'assets/images/tab_1/eiya_tab_1_nor.png',
                  selectedIcon: 'assets/images/tab_2/eiya_tab_1_pre.png',
                ),
                _buildNavItem(
                  context: context,
                  index: 1,
                  isSelected: selectedIndex == 1,
                  normalIcon: 'assets/images/tab_1/eiya_tab_2_nor.png',
                  selectedIcon: 'assets/images/tab_2/eiya_tab_2_pre.png',
                ),
                _buildNavItem(
                  context: context,
                  index: 2,
                  isSelected: selectedIndex == 2,
                  normalIcon: 'assets/images/tab_1/eiya_tab_3_nor.png',
                  selectedIcon: 'assets/images/tab_2/eiya_tab_3_pre.png',
                ),
                _buildNavItem(
                  context: context,
                  index: 3,
                  isSelected: selectedIndex == 3,
                  normalIcon: 'assets/images/tab_1/eiya_tab_4_nor.png',
                  selectedIcon: 'assets/images/tab_2/eiya_tab_4_pre.png',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildNavItem({
    required BuildContext context,
    required int index,
    required bool isSelected,
    required String normalIcon,
    required String selectedIcon,
  }) {
    return Expanded(
      child: GestureDetector(
        onTap: () => _onItemTapped(context, index),
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 12),
          child: Center(
            child: Image.asset(
              isSelected ? selectedIcon : normalIcon,
              width: isSelected ? 80 : 28, // 选中时40px，未选中时28px
              height: isSelected ? 80 : 28,
              fit: BoxFit.contain,
            ),
          ),
        ),
      ),
    );
  }
} 