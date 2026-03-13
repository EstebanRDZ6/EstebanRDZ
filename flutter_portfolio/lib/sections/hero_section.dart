import 'package:flutter/material.dart';
import 'package:flutter_portfolio/l10n/app_localizations.dart';
import 'package:url_launcher/url_launcher.dart';
import '../widgets/hover_button.dart';

class HeroSection extends StatelessWidget {
  final VoidCallback onViewProjects;
  final VoidCallback onContactMe;

  const HeroSection({
    super.key,
    required this.onViewProjects,
    required this.onContactMe,
  });

  void _launchGithub() async {
    final uri = Uri.parse('https://github.com/EstebanRDZ6');
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri);
    }
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    final size = MediaQuery.of(context).size;
    final isMobile = size.width < 800;

    return Container(
      width: double.infinity,
      constraints: const BoxConstraints(minHeight: 600),
      padding: EdgeInsets.symmetric(
        horizontal: isMobile ? 24 : size.width * 0.15,
        vertical: 100,
      ),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Theme.of(context).scaffoldBackgroundColor,
            Theme.of(context).colorScheme.surface.withValues(alpha: 0.5),
          ],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
      ),
      child: Flex(
        direction: isMobile ? Axis.vertical : Axis.horizontal,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            flex: isMobile ? 0 : 3,
            child: Column(
              crossAxisAlignment: isMobile
                  ? CrossAxisAlignment.center
                  : CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 16,
                    vertical: 8,
                  ),
                  decoration: BoxDecoration(
                    color: Theme.of(
                      context,
                    ).primaryColor.withValues(alpha: 0.1),
                    borderRadius: BorderRadius.circular(30),
                    border: Border.all(
                      color: Theme.of(
                        context,
                      ).primaryColor.withValues(alpha: 0.3),
                    ),
                  ),
                  child: Text(
                    "Esteban Rodriguez",
                    style: TextStyle(
                      color: Theme.of(context).primaryColor,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1.2,
                    ),
                  ),
                ),
                const SizedBox(height: 24),
                Text(
                  l10n.heroTitle,
                  textAlign: isMobile ? TextAlign.center : TextAlign.left,
                  style: TextStyle(
                    fontSize: isMobile ? 36 : 56,
                    fontWeight: FontWeight.w900,
                    height: 1.1,
                    letterSpacing: -1,
                  ),
                ),
                const SizedBox(height: 24),
                Text(
                  l10n.heroSubtitle,
                  textAlign: isMobile ? TextAlign.center : TextAlign.left,
                  style: TextStyle(
                    fontSize: isMobile ? 18 : 22,
                    color: Colors.white.withValues(alpha: 0.7),
                    height: 1.5,
                  ),
                ),
                const SizedBox(height: 40),
                Wrap(
                  spacing: 16,
                  runSpacing: 16,
                  alignment: isMobile
                      ? WrapAlignment.center
                      : WrapAlignment.start,
                  children: [
                    HoverButton(
                      onPressed: onViewProjects,
                      child: Text(l10n.heroViewProjects),
                    ),
                    HoverButton(
                      onPressed: onContactMe,
                      outlined: true,
                      child: Text(l10n.heroContactMe),
                    ),
                    IconButton(
                      icon: const Icon(Icons.code),
                      color: Colors.white,
                      iconSize: 32,
                      onPressed: _launchGithub,
                      tooltip: "GitHub",
                    ),
                  ],
                ),
              ],
            ),
          ),
          if (isMobile) const SizedBox(height: 60),
          Expanded(
            flex: isMobile ? 0 : 2,
            child: Align(
              alignment: isMobile ? Alignment.center : Alignment.centerRight,
              child: Container(
                width: isMobile ? 250 : 350,
                height: isMobile ? 250 : 350,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: Theme.of(
                      context,
                    ).primaryColor.withValues(alpha: 0.3),
                    width: 4,
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Theme.of(
                        context,
                      ).primaryColor.withValues(alpha: 0.2),
                      blurRadius: 50,
                      spreadRadius: 10,
                    ),
                  ],
                  image: const DecorationImage(
                    image: AssetImage('assets/images/FotoPerfil.jpg'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
