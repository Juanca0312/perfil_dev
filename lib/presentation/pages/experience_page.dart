import 'package:flutter/material.dart';
import 'package:perfil_dev/core/constants/app_spacing.dart';
import 'package:perfil_dev/data/profile_data.dart';
import 'package:perfil_dev/domain/experience.dart';

class ExperiencePage extends StatelessWidget {
  const ExperiencePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Experiencia')),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(AppSpacing.lg),
        child: Column(
          children: [
            for (final experience in professionalExperiences)
              _ExperienceItem(experience: experience),
          ],
        ),
      ),
    );
  }
}

class _ExperienceItem extends StatelessWidget {
  const _ExperienceItem({required this.experience});

  final Experience experience;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: AppSpacing.xxl),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(experience.role, style: Theme.of(context).textTheme.titleLarge),
          Text(
            experience.company,
            style: Theme.of(context).textTheme.titleMedium,
          ),
          Text(experience.period, style: Theme.of(context).textTheme.bodySmall),
          const SizedBox(height: AppSpacing.sm),
          Text(experience.description),
        ],
      ),
    );
  }
}
