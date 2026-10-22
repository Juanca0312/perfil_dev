import 'package:flutter/material.dart';
import 'package:perfil_dev/core/constants/app_spacing.dart';
import 'package:perfil_dev/core/extensions/build_context_extensions.dart';
import 'package:perfil_dev/data/profile_data.dart';
import 'package:perfil_dev/presentation/pages/experience_page.dart';
import 'package:perfil_dev/presentation/widgets/bullet_item.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key, required this.onToggleTheme});

  final VoidCallback onToggleTheme;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Mi Perfil Dev',
          style: context.textTheme.headlineMedium?.copyWith(
            fontWeight: FontWeight.w400,
          ),
        ),
        actions: [
          IconButton(onPressed: onToggleTheme, icon: Icon(Icons.brightness_4)),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: AppSpacing.lg),
        child: Column(
          children: [
            _buildAboutSection(context),
            const SizedBox(height: AppSpacing.xl),
            _buildSkillsSection(context),
            const SizedBox(height: AppSpacing.xl),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => const ExperiencePage()),
                );
              },
              child: Text('Revisar experiencia'),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildAboutSection(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Sobre mí', style: context.textTheme.headlineSmall),
        const SizedBox(height: AppSpacing.md),
        Text(currentProfile.name, style: context.textTheme.titleMedium),
        const SizedBox(height: AppSpacing.sm),
        Text(currentProfile.biography, style: context.textTheme.bodyMedium),
      ],
    );
  }

  Widget _buildSkillsSection(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Habilidades', style: context.textTheme.headlineSmall),
        const SizedBox(height: AppSpacing.md),
        for (final skill in currentProfile.skills) BulletItem(text: skill),
      ],
    );
  }
}
