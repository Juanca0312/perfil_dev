import 'package:flutter/material.dart';
import 'package:perfil_dev/core/constants/app_spacing.dart';
import 'package:perfil_dev/core/extensions/build_context_extensions.dart';
import 'package:perfil_dev/presentation/widgets/bullet_item.dart';

class SkillsSection extends StatelessWidget {
  const SkillsSection({super.key, required this.skills});

  final List<String> skills;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Habilidades', style: context.textTheme.headlineSmall),
        const SizedBox(height: AppSpacing.md),
        for (final skill in skills) BulletItem(text: skill),
      ],
    );
  }
}
