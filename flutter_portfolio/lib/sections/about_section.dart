import 'package:flutter/material.dart';
import 'package:flutter_portfolio/l10n/app_localizations.dart';

class AboutSection extends StatelessWidget {
  const AboutSection({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    final size = MediaQuery.of(context).size;
    final isMobile = size.width < 800;

    return Container(
      width: double.infinity,
      color: Theme.of(context).colorScheme.surface.withValues(alpha: 0.3),
      padding: EdgeInsets.symmetric(
        horizontal: isMobile ? 24 : size.width * 0.15,
        vertical: 100,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            l10n.aboutTitle,
            style: const TextStyle(
              fontSize: 40,
              fontWeight: FontWeight.bold,
              letterSpacing: -0.5,
            ),
          ),
          const SizedBox(height: 16),
          Container(
            width: 60,
            height: 4,
            decoration: BoxDecoration(
              color: Theme.of(context).primaryColor,
              borderRadius: BorderRadius.circular(2),
            ),
          ),
          const SizedBox(height: 40),
          Container(
            padding: EdgeInsets.all(isMobile ? 24 : 40),
            decoration: BoxDecoration(
              color: Theme.of(
                context,
              ).colorScheme.surface.withValues(alpha: 0.5),
              borderRadius: BorderRadius.circular(24),
              border: Border.all(color: Colors.white.withValues(alpha: 0.05)),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _Paragraph(text: l10n.aboutP1),
                const SizedBox(height: 16),
                _Paragraph(text: l10n.aboutP2),
                const SizedBox(height: 16),
                _Paragraph(text: l10n.aboutP3),
                const SizedBox(height: 16),
                _Paragraph(text: l10n.aboutP4),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _Paragraph extends StatelessWidget {
  final String text;
  const _Paragraph({required this.text});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: 18,
        color: Colors.white.withValues(alpha: 0.8),
        height: 1.6,
      ),
    );
  }
}
