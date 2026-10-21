import 'package:flutter/material.dart';
import 'package:perfil_dev/core/constants/app_spacing.dart';
import 'package:perfil_dev/core/extensions/build_context_extensions.dart';

class BulletItem extends StatelessWidget {
  const BulletItem({required this.text, super.key});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: AppSpacing.xs),
      child: Row(
        children: [
          Container(
            width: 6,
            height: 6,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: context.colorScheme.primary,
            ),
          ),
          const SizedBox(width: AppSpacing.sm),
          Text(text, style: context.textTheme.bodyMedium),
        ],
      ),
    );
  }
}
