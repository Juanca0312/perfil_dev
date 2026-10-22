import 'package:flutter/material.dart';
import 'package:perfil_dev/core/constants/app_spacing.dart';
import 'package:perfil_dev/domain/experience.dart';

class ExperienceItem extends StatelessWidget {
  const ExperienceItem({super.key, required this.experience});

  final Experience experience;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Padding(
      padding: const EdgeInsets.only(bottom: AppSpacing.xxl),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(experience.role, style: textTheme.titleLarge),
          Text(experience.company, style: textTheme.titleMedium),
          Text(experience.period, style: textTheme.bodySmall),
          const SizedBox(height: AppSpacing.sm),
          Text(experience.description),
        ],
      ),
    );
  }
}
