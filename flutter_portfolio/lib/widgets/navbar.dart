import 'package:flutter/material.dart';
import 'package:flutter_portfolio/l10n/app_localizations.dart';
import '../main.dart';


class NavBar extends StatelessWidget {
  final VoidCallback onHomeTap;
  final VoidCallback onAboutTap;
  final VoidCallback onSkillsTap;
  final VoidCallback onProjectsTap;
  final VoidCallback onContactTap;

  const NavBar({
    super.key,
    required this.onHomeTap,
    required this.onAboutTap,
    required this.onSkillsTap,
    required this.onProjectsTap,
    required this.onContactTap,
  });

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    final isDesktop = MediaQuery.of(context).size.width > 900;

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 16),
      decoration: BoxDecoration(
        color: Theme.of(
          context,
        ).scaffoldBackgroundColor.withValues(alpha: 0.85),
        border: Border(
          bottom: BorderSide(color: Colors.white.withValues(alpha: 0.1)),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          MouseRegion(
            cursor: SystemMouseCursors.click,
            child: GestureDetector(
              onTap: onHomeTap,
              child: Text(
                "ESTEBAN.DEV",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w900,
                  letterSpacing: 1.2,
                  color: Theme.of(context).primaryColor,
                ),
              ),
            ),
          ),
          if (isDesktop)
            Row(
              children: [
                _NavTextBtn(title: l10n.navHome, onTap: onHomeTap),
                _NavTextBtn(title: l10n.navAbout, onTap: onAboutTap),
                _NavTextBtn(title: l10n.navSkills, onTap: onSkillsTap),
                _NavTextBtn(title: l10n.navProjects, onTap: onProjectsTap),
                _NavTextBtn(title: l10n.navContact, onTap: onContactTap),
                const SizedBox(width: 20),
                _LanguageSwitcher(),
              ],
            )
          else
            _LanguageSwitcher(),
        ],
      ),
    );
  }
}

class _NavTextBtn extends StatefulWidget {
  final String title;
  final VoidCallback onTap;

  const _NavTextBtn({required this.title, required this.onTap});

  @override
  State<_NavTextBtn> createState() => _NavTextBtnState();
}

class _NavTextBtnState extends State<_NavTextBtn> {
  bool _isHovered = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      child: MouseRegion(
        onEnter: (_) => setState(() => _isHovered = true),
        onExit: (_) => setState(() => _isHovered = false),
        cursor: SystemMouseCursors.click,
        child: GestureDetector(
          onTap: widget.onTap,
          child: AnimatedDefaultTextStyle(
            duration: const Duration(milliseconds: 200),
            style: TextStyle(
              color: _isHovered
                  ? Theme.of(context).primaryColor
                  : Colors.white70,
              fontSize: 16,
              fontWeight: _isHovered ? FontWeight.bold : FontWeight.normal,
            ),
            child: Text(widget.title),
          ),
        ),
      ),
    );
  }
}

class _LanguageSwitcher extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.surface,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: Colors.white.withValues(alpha: 0.1)),
      ),
      child: DropdownButtonHideUnderline(
        child: DropdownButton<String>(
          value: Localizations.localeOf(context).languageCode,
          dropdownColor: Theme.of(context).colorScheme.surface,
          icon: const Icon(Icons.language, size: 18, color: Colors.white70),
          isDense: true,
          items: const [
            DropdownMenuItem(
              value: 'en',
              child: Text(' EN', style: TextStyle(color: Colors.white)),
            ),
            DropdownMenuItem(
              value: 'es',
              child: Text(' ES', style: TextStyle(color: Colors.white)),
            ),
          ],
          onChanged: (value) {
            if (value != null) {
              PortfolioApp.setLocale(context, Locale(value));
            }
          },
        ),
      ),
    );
  }
}
