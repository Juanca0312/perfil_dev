import 'package:flutter/material.dart';
import 'package:perfil_dev/core/constants/app_spacing.dart';

class ExperiencePage extends StatelessWidget {
  const ExperiencePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Experiencia')),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(AppSpacing.lg),
        child: Column(
          children: const [
            _ExperienceItem(
              role: 'Flutter Developer',
              company: 'Pacífico Seguros',
              period: 'Abr 2025 - Actualidad',
              description:
                  'Desarrollo de aplicaciones mobile y web con Flutter, '
                  'implementando flujos de seguros, búsqueda de clínicas y '
                  'gestión de documentos.',
            ),
            _ExperienceItem(
              role: 'iOS Developer',
              company: 'Scotiabank',
              period: 'Ene 2025 - Mar 2025',
              description:
                  'Desarrollo de funcionalidades móviles con SwiftUI, '
                  'arquitectura MVVM y Swift Package Manager.',
            ),
            _ExperienceItem(
              role: 'iOS Developer',
              company: 'Interbank',
              period: 'Ago 2024 - Dic 2024',
              description:
                  'Desarrollo de funcionalidades para aplicaciones bancarias '
                  'con Swift, MVVM, APIs REST y patrones de diseño.',
            ),
          ],
        ),
      ),
    );
  }
}

class _ExperienceItem extends StatelessWidget {
  const _ExperienceItem({
    required this.role,
    required this.company,
    required this.period,
    required this.description,
  });

  final String role;
  final String company;
  final String period;
  final String description;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: AppSpacing.xxl),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(role, style: Theme.of(context).textTheme.titleLarge),
          Text(company, style: Theme.of(context).textTheme.titleMedium),
          Text(period, style: Theme.of(context).textTheme.bodySmall),
          const SizedBox(height: AppSpacing.sm),
          Text(description),
        ],
      ),
    );
  }
}
