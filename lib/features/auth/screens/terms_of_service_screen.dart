import 'package:flutter/material.dart';
import '../../../core/theme/app_theme.dart';

class TermsOfServiceScreen extends StatelessWidget {
  const TermsOfServiceScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Terms of Service'),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Header
            Container(
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    AppTheme.primaryColor.withOpacity(0.1),
                    AppTheme.secondary.withOpacity(0.1),
                  ],
                ),
                borderRadius: BorderRadius.circular(16),
              ),
              child: Row(
                children: [
                  Container(
                    width: 60,
                    height: 60,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          AppTheme.primaryColor,
                          AppTheme.secondary,
                        ],
                      ),
                      shape: BoxShape.circle,
                    ),
                    child: const Icon(
                      Icons.pets,
                      color: Colors.white,
                      size: 30,
                    ),
                  ),
                  const SizedBox(width: 16),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Eiya Terms of Service',
                          style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                            fontWeight: FontWeight.bold,
                            color: AppTheme.primaryColor,
                          ),
                        ),
                        const SizedBox(height: 4),
                        Text(
                          'Last updated: 2025-07',
                          style: Theme.of(context).textTheme.bodySmall?.copyWith(
                            color: AppTheme.textSecondary,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            
            const SizedBox(height: 32),
            
            // Terms Content
            _buildSection(
              context,
              '1. Acceptance of Terms',
              'By downloading, installing, or using the Eiya mobile application ("App"), you agree to be bound by these Terms of Service ("Terms"). If you do not agree to these Terms, please do not use our App.',
            ),
            
            _buildSection(
              context,
              '2. Description of Service',
              'Eiya is a social platform designed for pet owners to share photos, stories, and experiences about their pets. Our service allows users to:\n\n• Share photos and videos of their pets\n• Connect with other pet owners\n• Discover pet-related content\n• Access pet care tips and resources\n• Participate in pet communities',
            ),
            
            _buildSection(
              context,
              '3. User Responsibilities',
              'As a user of Eiya, you agree to:\n\n• Provide accurate and truthful information\n• Respect other users and their pets\n• Not share inappropriate or harmful content\n• Follow community guidelines\n• Respect intellectual property rights\n• Not engage in spam or malicious activities',
            ),
            
            _buildSection(
              context,
              '4. Content Guidelines',
              'All content shared on Eiya must:\n\n• Be related to pets or pet care\n• Be appropriate for all ages\n• Not contain violence or harmful content\n• Respect privacy of others\n• Not infringe on copyrights\n• Follow local laws and regulations',
            ),
            
            _buildSection(
              context,
              '5. Privacy and Data Protection',
              'We take your privacy seriously. Please review our Privacy Policy to understand how we collect, use, and protect your personal information. By using Eiya, you consent to our data practices as described in the Privacy Policy.',
            ),
            
            _buildSection(
              context,
              '6. Intellectual Property',
              'The Eiya app, including its design, features, and content, is protected by intellectual property laws. Users retain ownership of their original content but grant Eiya a license to use, display, and distribute such content within the platform.',
            ),
            
            _buildSection(
              context,
              '7. Prohibited Activities',
              'Users are prohibited from:\n\n• Harassing or bullying other users\n• Sharing false or misleading information\n• Attempting to hack or disrupt the service\n• Creating fake accounts\n• Selling or promoting illegal products\n• Violating any applicable laws',
            ),
            
            _buildSection(
              context,
              '8. Account Termination',
              'We reserve the right to suspend or terminate user accounts that violate these Terms or engage in prohibited activities. Users may also delete their accounts at any time through the app settings.',
            ),
            
            _buildSection(
              context,
              '9. Limitation of Liability',
              'Eiya is provided "as is" without warranties. We are not liable for any damages arising from the use of our service, including but not limited to direct, indirect, or consequential damages.',
            ),
            
            _buildSection(
              context,
              '10. Changes to Terms',
              'We may update these Terms from time to time. Users will be notified of significant changes through the app or email. Continued use of the service after changes constitutes acceptance of the new Terms.',
            ),
            
            _buildSection(
              context,
              '11. Contact Information',
              'If you have questions about these Terms of Service, please contact us at:\n\nEmail: support@eiya.app\nWebsite: www.eiya.app\n\nThank you for being part of the Eiya community! 🐾',
            ),
            
            const SizedBox(height: 32),
            
            // Accept Button
            Container(
              width: double.infinity,
              height: 50,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    AppTheme.primaryColor,
                    AppTheme.primaryVariant,
                  ],
                ),
                borderRadius: BorderRadius.circular(25),
                boxShadow: [
                  BoxShadow(
                    color: AppTheme.primaryColor.withOpacity(0.3),
                    blurRadius: 15,
                    offset: const Offset(0, 5),
                  ),
                ],
              ),
              child: ElevatedButton(
                onPressed: () => Navigator.of(context).pop(),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.transparent,
                  shadowColor: Colors.transparent,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25),
                  ),
                ),
                child: const Text(
                  'I Understand',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            
            const SizedBox(height: 24),
            
            // 底部间距，避免被悬浮tabbar挡住
            const SizedBox(height: 80),
          ],
        ),
      ),
    );
  }

  Widget _buildSection(BuildContext context, String title, String content) {
    return Container(
      margin: const EdgeInsets.only(bottom: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: Theme.of(context).textTheme.titleLarge?.copyWith(
              fontWeight: FontWeight.bold,
              color: AppTheme.primaryColor,
            ),
          ),
          const SizedBox(height: 12),
          Text(
            content,
            style: Theme.of(context).textTheme.bodyMedium?.copyWith(
              height: 1.6,
              color: AppTheme.textPrimary,
            ),
          ),
        ],
      ),
    );
  }
} 