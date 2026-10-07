import 'package:flutter/material.dart';
import 'package:perfil_dev/core/extensions/build_context_extensions.dart';
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
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            _buildAboutSection(context),
            const SizedBox(height: 20),
            _buildSkillsSection(context),
            const SizedBox(height: 20),
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
        const SizedBox(height: 10),
        Text(
          'Soy Juan Carlos Hernandez, bachiller en Ingeniería de Software con '
          'especial énfasis en desarrollo móvil con gran entusiasmo en seguir '
          'adquiriendo conocimiento día a día.',
          style: context.textTheme.bodyMedium,
        ),
      ],
    );
  }

  Widget _buildSkillsSection(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Habilidades', style: context.textTheme.headlineSmall),
        const SizedBox(height: 10),
        const BulletItem(text: 'Flutter, Dart'),
        const BulletItem(text: 'Swift, SwiftUI, UIKit'),
        const BulletItem(text: 'Figma'),
        const BulletItem(text: 'Git, GitHub, Gitflow'),
        const BulletItem(text: 'UnitTests, WidgetTests'),
        const BulletItem(text: 'Clean Architecture, MVVM, MVC'),
      ],
    );
  }
}
