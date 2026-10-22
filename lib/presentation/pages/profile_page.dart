import 'package:flutter/material.dart';
import 'package:perfil_dev/core/constants/app_spacing.dart';
import 'package:perfil_dev/core/extensions/build_context_extensions.dart';
import 'package:perfil_dev/data/profile_data.dart';
import 'package:perfil_dev/presentation/pages/experience_page.dart';
import 'package:perfil_dev/presentation/widgets/about_section.dart';
import 'package:perfil_dev/presentation/widgets/skills_section.dart';

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
          IconButton(
            onPressed: onToggleTheme,
            icon: const Icon(Icons.brightness_4),
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: AppSpacing.lg),
        child: Column(
          children: [
            AboutSection(
              name: currentProfile.name,
              biography: currentProfile.biography,
            ),
            const SizedBox(height: AppSpacing.xl),
            SkillsSection(skills: currentProfile.skills),
            const SizedBox(height: AppSpacing.xl),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => const ExperiencePage()),
                );
              },
              child: const Text('Revisar experiencia'),
            ),
          ],
        ),
      ),
    );
  }
}
