class YogaUser {
  final String userId;
  final String name;
  final String profilePicture;
  final String userIcon;
  final String username;
  final String? bio;
  final String? location;
  final int followers;
  final int following;
  final bool verified;

  YogaUser({
    required this.userId,
    required this.name,
    required this.profilePicture,
    required this.userIcon,
    required this.username,
    this.bio,
    this.location,
    this.followers = 0,
    this.following = 0,
    this.verified = false,
  });

  factory YogaUser.fromJson(Map<String, dynamic> json) {
    return YogaUser(
      userId: json['id'] ?? '',
      name: json['displayName'] ?? '',
      profilePicture: json['avatar'] ?? '',
      userIcon: json['avatar'] ?? '',
      username: json['username'] ?? '',
      bio: json['bio'],
      location: json['location'],
      followers: json['followers'] ?? 0,
      following: json['following'] ?? 0,
      verified: json['verified'] ?? false,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': userId,
      'displayName': name,
      'avatar': profilePicture,
      'username': username,
      'bio': bio,
      'location': location,
      'followers': followers,
      'following': following,
      'verified': verified,
    };
  }
} 