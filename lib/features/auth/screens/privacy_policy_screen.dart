import 'package:flutter/material.dart';
import '../../../core/theme/app_theme.dart';

class PrivacyPolicyScreen extends StatelessWidget {
  const PrivacyPolicyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Privacy Policy'),
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
                    AppTheme.secondary.withOpacity(0.1),
                    AppTheme.primaryColor.withOpacity(0.1),
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
                          AppTheme.secondary,
                          AppTheme.primaryColor,
                        ],
                      ),
                      shape: BoxShape.circle,
                    ),
                    child: const Icon(
                      Icons.privacy_tip,
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
                          'Eiya Privacy Policy',
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
            
            // Privacy Policy Content
            _buildSection(
              context,
              '1. Information We Collect',
              'We collect information you provide directly to us, such as:\n\n• Account information (name, email, username)\n• Profile information and pet details\n• Photos, videos, and posts you share\n• Messages and communications\n• Device information and usage data\n• Location data (with your permission)',
            ),
            
            _buildSection(
              context,
              '2. How We Use Your Information',
              'We use the information we collect to:\n\n• Provide and maintain our services\n• Personalize your experience\n• Communicate with you about our services\n• Improve our app and develop new features\n• Ensure safety and security\n• Comply with legal obligations',
            ),
            
            _buildSection(
              context,
              '3. Information Sharing',
              'We may share your information in the following circumstances:\n\n• With other users (public posts and profile info)\n• With service providers who assist our operations\n• For legal compliance or safety reasons\n• With your explicit consent\n• In connection with business transfers\n\nWe never sell your personal information to third parties.',
            ),
            
            _buildSection(
              context,
              '4. Data Security',
              'We implement appropriate security measures to protect your information:\n\n• Encryption of data in transit and at rest\n• Regular security assessments\n• Limited access to personal information\n• Secure data storage practices\n• Incident response procedures',
            ),
            
            _buildSection(
              context,
              '5. Your Privacy Rights',
              'You have the right to:\n\n• Access your personal information\n• Correct or update your data\n• Delete your account and data\n• Control privacy settings\n• Opt out of marketing communications\n• Data portability (where applicable)',
            ),
            
            _buildSection(
              context,
              '6. Children\'s Privacy',
              'Eiya is designed for users aged 13 and above. We do not knowingly collect personal information from children under 13. If we become aware that we have collected such information, we will take steps to delete it promptly.',
            ),
            
            _buildSection(
              context,
              '7. Cookies and Tracking',
              'We use cookies and similar technologies to:\n\n• Remember your preferences\n• Analyze app usage and performance\n• Provide personalized content\n• Improve user experience\n\nYou can manage cookie preferences in your device settings.',
            ),
            
            _buildSection(
              context,
              '8. Third-Party Services',
              'Our app may contain links to third-party services or integrate with external platforms. We are not responsible for the privacy practices of these third parties. Please review their privacy policies separately.',
            ),
            
            _buildSection(
              context,
              '9. International Data Transfers',
              'Your information may be transferred to and processed in countries other than your own. We ensure appropriate safeguards are in place to protect your data during such transfers.',
            ),
            
            _buildSection(
              context,
              '10. Data Retention',
              'We retain your information for as long as necessary to provide our services and comply with legal obligations. You can request deletion of your account and associated data at any time.',
            ),
            
            _buildSection(
              context,
              '11. Changes to This Policy',
              'We may update this Privacy Policy from time to time. We will notify you of any material changes through the app or by email. Your continued use of Eiya after such changes constitutes acceptance of the updated policy.',
            ),
            
            _buildSection(
              context,
              '12. Contact Us',
              'If you have questions about this Privacy Policy or our data practices, please contact us:\n\nEmail: privacy@eiya.app\nData Protection Officer: dpo@eiya.app\nWebsite: www.eiya.app/privacy\n\nYour privacy matters to us! 🔒',
            ),
            
            const SizedBox(height: 32),
            
            // Accept Button
            Container(
              width: double.infinity,
              height: 50,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    AppTheme.secondary,
                    AppTheme.primaryColor,
                  ],
                ),
                borderRadius: BorderRadius.circular(25),
                boxShadow: [
                  BoxShadow(
                    color: AppTheme.secondary.withOpacity(0.3),
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