import 'package:flutter/material.dart';
import 'package:flutter_portfolio/l10n/app_localizations.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactSection extends StatelessWidget {
  const ContactSection({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    final size = MediaQuery.of(context).size;
    final isMobile = size.width < 800;

    return Container(
      width: double.infinity,
      color: Theme.of(context).scaffoldBackgroundColor,
      padding: EdgeInsets.symmetric(
        horizontal: isMobile ? 24 : size.width * 0.15,
        vertical: 100,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            l10n.contactTitle,
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
          const SizedBox(height: 60),
          Wrap(
            spacing: 24,
            runSpacing: 24,
            alignment: WrapAlignment.center,
            children: [
              _ContactCard(
                icon: Icons.email,
                title: l10n.contactEmail,
                value: 'estebanrdrgz6@gmail.com',
                url: 'mailto:estebanrdrgz6@gmail.com',
              ),
              _ContactCard(
                icon: Icons.phone_android,
                title: l10n.contactWhatsapp,
                value: '+54 376 471-6233',
                url: 'https://wa.me/543764716233',
              ),
              _ContactCard(
                icon: Icons.business,
                title: l10n.contactLinkedin,
                value: 'linkedin.com/in/rdz6',
                url: 'https://www.linkedin.com/in/rdz6/',
              ),
              _ContactCard(
                icon: Icons.code,
                title: l10n.contactGithub,
                value: 'github.com/EstebanRDZ6',
                url: 'https://github.com/EstebanRDZ6',
              ),
            ],
          ),
          const SizedBox(height: 100),
          Text(
            "© ${DateTime.now().year} Esteban Rodriguez. All rights reserved.",
            style: TextStyle(color: Colors.white.withValues(alpha: 0.5)),
          ),
        ],
      ),
    );
  }
}

class _ContactCard extends StatefulWidget {
  final IconData icon;
  final String title;
  final String value;
  final String url;

  const _ContactCard({
    required this.icon,
    required this.title,
    required this.value,
    required this.url,
  });

  @override
  State<_ContactCard> createState() => _ContactCardState();
}

class _ContactCardState extends State<_ContactCard> {
  bool _isHovered = false;

  void _launchUrl() async {
    final uri = Uri.parse(widget.url);
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri);
    }
  }

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => setState(() => _isHovered = true),
      onExit: (_) => setState(() => _isHovered = false),
      cursor: SystemMouseCursors.click,
      child: GestureDetector(
        onTap: _launchUrl,
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 200),
          width: 250,
          padding: const EdgeInsets.all(24),
          decoration: BoxDecoration(
            color: _isHovered
                ? Theme.of(context).primaryColor.withValues(alpha: 0.1)
                : Theme.of(context).colorScheme.surface,
            borderRadius: BorderRadius.circular(16),
            border: Border.all(
              color: _isHovered
                  ? Theme.of(context).primaryColor.withValues(alpha: 0.5)
                  : Colors.white.withValues(alpha: 0.05),
            ),
          ),
          child: Column(
            children: [
              Icon(
                widget.icon,
                size: 40,
                color: _isHovered
                    ? Theme.of(context).primaryColor
                    : Colors.white70,
              ),
              const SizedBox(height: 16),
              Text(
                widget.title,
                style: const TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
              ),
              const SizedBox(height: 8),
              Text(
                widget.value,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white.withValues(alpha: 0.7),
                  fontSize: 14,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
