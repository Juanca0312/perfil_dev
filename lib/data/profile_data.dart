import 'package:perfil_dev/domain/experience.dart';
import 'package:perfil_dev/domain/profile.dart';

const currentProfile = Profile(
  name: 'Juan Carlos Hernandez',
  biography:
      'Bachiller en Ingeniería de Software con especial énfasis en desarrollo '
      'móvil y gran entusiasmo en seguir adquiriendo conocimiento día a día.',
  skills: [
    'Flutter, Dart',
    'Swift, SwiftUI, UIKit',
    'Figma',
    'Git, GitHub, Gitflow',
    'UnitTests, WidgetTests',
    'Clean Architecture, MVVM, MVC',
  ],
);

const List<Experience> professionalExperiences = [
  Experience(
    role: 'Flutter Developer',
    company: 'Pacífico Seguros',
    period: 'Abr 2025 - Actualidad',
    description:
        'Desarrollo de aplicaciones mobile y web con Flutter, '
        'implementando flujos de seguros, búsqueda de clínicas y '
        'gestión de documentos.',
  ),
  Experience(
    role: 'iOS Developer',
    company: 'Scotiabank',
    period: 'Ene 2025 - Mar 2025',
    description:
        'Desarrollo de funcionalidades móviles con SwiftUI, '
        'arquitectura MVVM y Swift Package Manager.',
  ),
  Experience(
    role: 'iOS Developer',
    company: 'Interbank',
    period: 'Ago 2024 - Dic 2024',
    description:
        'Desarrollo de funcionalidades para aplicaciones bancarias '
        'con Swift, MVVM, APIs REST y patrones de diseño.',
  ),
];
