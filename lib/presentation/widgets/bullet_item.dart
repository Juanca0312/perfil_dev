import 'package:flutter/material.dart';
import 'package:perfil_dev/core/extensions/build_context_extensions.dart';

class BulletItem extends StatelessWidget {
  const BulletItem({required this.text, super.key});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 2),
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
          const SizedBox(width: 8),
          Text(text, style: context.textTheme.bodyMedium),
        ],
      ),
    );
  }
}
