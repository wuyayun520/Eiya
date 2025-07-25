class AppConstants {
  // App Info
  static const String appName = 'Eiya';
  static const String appVersion = '1.0.0';
  static const String appDescription = 'Pet Sharing Social App';
  
  // API Configuration
  static const String baseUrl = 'https://api.eiya.app';
  static const String apiVersion = 'v1';
  
  // Storage Keys
  static const String userTokenKey = 'user_token';
  static const String userIdKey = 'user_id';
  static const String themeKey = 'theme_mode';
  static const String languageKey = 'language';
  
  // Pet Types
  static const List<String> petTypes = [
    'Dog',
    'Cat',
    'Bird',
    'Fish',
    'Rabbit',
    'Hamster',
    'Guinea Pig',
    'Reptile',
    'Other',
  ];
  
  // Pet Breeds - Dogs
  static const List<String> dogBreeds = [
    'Golden Retriever',
    'Labrador Retriever',
    'German Shepherd',
    'Bulldog',
    'Poodle',
    'Beagle',
    'Rottweiler',
    'Yorkshire Terrier',
    'Dachshund',
    'Siberian Husky',
    'Shih Tzu',
    'Boston Terrier',
    'Pomeranian',
    'Australian Shepherd',
    'Mixed Breed',
    'Other',
  ];
  
  // Pet Breeds - Cats
  static const List<String> catBreeds = [
    'Persian',
    'Maine Coon',
    'British Shorthair',
    'Ragdoll',
    'Bengal',
    'Abyssinian',
    'Birman',
    'Oriental Shorthair',
    'Manx',
    'Russian Blue',
    'American Shorthair',
    'Scottish Fold',
    'Sphynx',
    'Siamese',
    'Mixed Breed',
    'Other',
  ];
  
  // Post Categories
  static const List<String> postCategories = [
    'Daily Life',
    'Training Tips',
    'Health & Care',
    'Funny Moments',
    'Adoption',
    'Lost & Found',
    'Pet Products',
    'Veterinary',
    'Grooming',
    'Exercise',
  ];
  
  // Image Constraints
  static const int maxImageSize = 5 * 1024 * 1024; // 5MB
  static const int maxImagesPerPost = 10;
  static const List<String> allowedImageFormats = ['jpg', 'jpeg', 'png', 'webp'];
  
  // Pagination
  static const int defaultPageSize = 20;
  static const int maxPageSize = 50;
  
  // Validation
  static const int minUsernameLength = 3;
  static const int maxUsernameLength = 20;
  static const int minPasswordLength = 8;
  static const int maxBioLength = 500;
  static const int maxPostContentLength = 2000;
  
  // Social Features
  static const int maxFollowing = 5000;
  static const int maxFollowers = 1000000;
  
  // Time Formats
  static const String dateFormat = 'MMM dd, yyyy';
  static const String timeFormat = 'HH:mm';
  static const String dateTimeFormat = 'MMM dd, yyyy HH:mm';
  
  // Error Messages
  static const String networkError = 'Network connection error. Please check your internet connection.';
  static const String serverError = 'Server error. Please try again later.';
  static const String unknownError = 'An unknown error occurred. Please try again.';
  static const String validationError = 'Please check your input and try again.';
  
  // Success Messages
  static const String postCreated = 'Post created successfully!';
  static const String profileUpdated = 'Profile updated successfully!';
  static const String petAdded = 'Pet added successfully!';
  
  // Feature Flags
  static const bool enableDarkMode = true;
  static const bool enableNotifications = true;
  static const bool enableAnalytics = false;
  static const bool enableCrashReporting = false;
} 