import 'package:flutter/material.dart';
import 'package:perfil_dev/core/constants/app_spacing.dart';
import 'package:perfil_dev/data/profile_data.dart';
import 'package:perfil_dev/presentation/widgets/experience_item.dart';

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
              ExperienceItem(experience: experience),
          ],
        ),
      ),
    );
  }
}
