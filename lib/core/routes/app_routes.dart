import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../features/home/screens/home_screen.dart';
import '../../features/profile/screens/profile_screen.dart';
import '../../features/pets/screens/pets_screen.dart';
import '../../features/social/screens/social_screen.dart';
import '../../features/auth/screens/login_screen.dart';
import '../../features/auth/screens/register_screen.dart';
import '../../features/auth/screens/welcome_screen.dart';
import '../../features/auth/screens/terms_of_service_screen.dart';
import '../../features/auth/screens/privacy_policy_screen.dart';
import '../../shared/widgets/floating_bottom_navigation.dart';

class AppRoutes {
  // Route Names
  static const String splash = '/';
  static const String welcome = '/welcome';
  static const String login = '/login';
  static const String register = '/register';
  static const String termsOfService = '/terms-of-service';
  static const String privacyPolicy = '/privacy-policy';
  static const String home = '/home';
  static const String social = '/social';
  static const String pets = '/pets';
  static const String profile = '/profile';
  static const String addPet = '/add-pet';
  static const String petDetail = '/pet/:petId';
  static const String createPost = '/create-post';
  static const String postDetail = '/post/:postId';
  static const String userProfile = '/user/:userId';
  static const String settings = '/settings';
  static const String editProfile = '/edit-profile';
  static const String notifications = '/notifications';
  static const String search = '/search';
  
  // Router Configuration
  static final GoRouter router = GoRouter(
    initialLocation: splash,
    routes: [
      // Welcome/Splash Screen
      GoRoute(
        path: splash,
        name: 'welcome',
        builder: (context, state) => const WelcomeScreen(),
      ),
      
      // Auth Routes
      GoRoute(
        path: login,
        name: 'login',
        builder: (context, state) => const LoginScreen(),
      ),
      GoRoute(
        path: register,
        name: 'register',
        builder: (context, state) => const RegisterScreen(),
      ),
      
      // Legal Pages
      GoRoute(
        path: termsOfService,
        name: 'termsOfService',
        builder: (context, state) => const TermsOfServiceScreen(),
      ),
      GoRoute(
        path: privacyPolicy,
        name: 'privacyPolicy',
        builder: (context, state) => const PrivacyPolicyScreen(),
      ),
      
      // Main App Routes with Bottom Navigation
      ShellRoute(
        builder: (context, state, child) => FloatingBottomNavigation(child: child),
        routes: [
          GoRoute(
            path: home,
            name: 'home',
            builder: (context, state) => const HomeScreen(),
          ),
          GoRoute(
            path: social,
            name: 'social',
            builder: (context, state) => const SocialScreen(),
          ),
          GoRoute(
            path: pets,
            name: 'pets',
            builder: (context, state) => const PetsScreen(),
          ),
          GoRoute(
            path: profile,
            name: 'profile',
            builder: (context, state) => const ProfileScreen(),
          ),
        ],
      ),
      
      // Detail Routes (Full Screen)
      GoRoute(
        path: petDetail,
        name: 'petDetail',
        builder: (context, state) {
          final petId = state.pathParameters['petId']!;
          return PetDetailScreen(petId: petId);
        },
      ),
      GoRoute(
        path: postDetail,
        name: 'postDetail',
        builder: (context, state) {
          final postId = state.pathParameters['postId']!;
          return PostDetailScreen(postId: postId);
        },
      ),
      GoRoute(
        path: userProfile,
        name: 'userProfile',
        builder: (context, state) {
          final userId = state.pathParameters['userId']!;
          return UserProfileScreen(userId: userId);
        },
      ),
      
      // Action Routes
      GoRoute(
        path: addPet,
        name: 'addPet',
        builder: (context, state) => const AddPetScreen(),
      ),
      GoRoute(
        path: createPost,
        name: 'createPost',
        builder: (context, state) => const CreatePostScreen(),
      ),
      GoRoute(
        path: editProfile,
        name: 'editProfile',
        builder: (context, state) => const EditProfileScreen(),
      ),
      
      // Utility Routes
      GoRoute(
        path: settings,
        name: 'settings',
        builder: (context, state) => const SettingsScreen(),
      ),
      GoRoute(
        path: notifications,
        name: 'notifications',
        builder: (context, state) => const NotificationsScreen(),
      ),
      GoRoute(
        path: search,
        name: 'search',
        builder: (context, state) => const SearchScreen(),
      ),
    ],
    
    // Error handling
    errorBuilder: (context, state) => Scaffold(
      appBar: AppBar(title: const Text('Page Not Found')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(
              Icons.error_outline,
              size: 64,
              color: Colors.grey,
            ),
            const SizedBox(height: 16),
            Text(
              'Page Not Found',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            const SizedBox(height: 8),
            Text(
              'The page you are looking for does not exist.',
              style: Theme.of(context).textTheme.bodyMedium,
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 24),
            ElevatedButton(
              onPressed: () => context.go(home),
              child: const Text('Go Home'),
            ),
          ],
        ),
      ),
    ),
  );
}

// Placeholder screens for routes that will be implemented later
class PetDetailScreen extends StatelessWidget {
  final String petId;
  
  const PetDetailScreen({super.key, required this.petId});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Pet Details')),
      body: Center(child: Text('Pet Detail Screen - ID: $petId')),
    );
  }
}

class PostDetailScreen extends StatelessWidget {
  final String postId;
  
  const PostDetailScreen({super.key, required this.postId});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Post Details')),
      body: Center(child: Text('Post Detail Screen - ID: $postId')),
    );
  }
}

class UserProfileScreen extends StatelessWidget {
  final String userId;
  
  const UserProfileScreen({super.key, required this.userId});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('User Profile')),
      body: Center(child: Text('User Profile Screen - ID: $userId')),
    );
  }
}

class AddPetScreen extends StatelessWidget {
  const AddPetScreen({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Add Pet')),
      body: const Center(child: Text('Add Pet Screen')),
    );
  }
}

class CreatePostScreen extends StatelessWidget {
  const CreatePostScreen({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Create Post')),
      body: const Center(child: Text('Create Post Screen')),
    );
  }
}

class EditProfileScreen extends StatelessWidget {
  const EditProfileScreen({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Edit Profile')),
      body: const Center(child: Text('Edit Profile Screen')),
    );
  }
}

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Settings')),
      body: const Center(child: Text('Settings Screen')),
    );
  }
}

class NotificationsScreen extends StatelessWidget {
  const NotificationsScreen({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Notifications')),
      body: const Center(child: Text('Notifications Screen')),
    );
  }
}

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Search')),
      body: const Center(child: Text('Search Screen')),
    );
  }
} 