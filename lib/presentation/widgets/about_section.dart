import 'package:flutter/material.dart';
import 'package:perfil_dev/core/constants/app_spacing.dart';
import 'package:perfil_dev/core/extensions/build_context_extensions.dart';

class AboutSection extends StatelessWidget {
  const AboutSection({super.key, required this.name, required this.biography});

  final String name;
  final String biography;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Sobre mí', style: context.textTheme.headlineSmall),
        const SizedBox(height: AppSpacing.md),
        Text(name, style: context.textTheme.titleMedium),
        const SizedBox(height: AppSpacing.sm),
        Text(biography, style: context.textTheme.bodyMedium),
      ],
    );
  }
}
