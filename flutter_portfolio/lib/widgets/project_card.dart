import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter_portfolio/l10n/app_localizations.dart';
import 'hover_button.dart';

class ProjectCard extends StatefulWidget {
  final String title;
  final String description;
  final String? liveLink;
  final String? githubLink;
  final List<String>? images;

  const ProjectCard({
    super.key,
    required this.title,
    required this.description,
    this.liveLink,
    this.githubLink,
    this.images,
  });

  @override
  State<ProjectCard> createState() => _ProjectCardState();
}

class _ProjectCardState extends State<ProjectCard> {
  bool _isHovered = false;

  void _launchUrl(String url) async {
    final uri = Uri.parse(url);
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri);
    }
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    final theme = Theme.of(context);

    return MouseRegion(
      onEnter: (_) => setState(() => _isHovered = true),
      onExit: (_) => setState(() => _isHovered = false),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeOut,
        width: 380,
        margin: const EdgeInsets.all(16),
        padding: const EdgeInsets.all(24),
        decoration: BoxDecoration(
          color: theme.colorScheme.surface,
          borderRadius: BorderRadius.circular(20),
          border: Border.all(
            color: _isHovered
                ? theme.primaryColor.withValues(alpha: 0.5)
                : Colors.white.withValues(alpha: 0.05),
            width: 1,
          ),
          boxShadow: [
            if (_isHovered)
              BoxShadow(
                color: theme.primaryColor.withValues(alpha: 0.1),
                blurRadius: 20,
                spreadRadius: 5,
                offset: const Offset(0, 10),
              )
            else
              BoxShadow(
                color: Colors.black.withValues(alpha: 0.2),
                blurRadius: 10,
                offset: const Offset(0, 5),
              ),
          ],
        ),
        transform: Matrix4.translationValues(0, _isHovered ? -5 : 0, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: theme.scaffoldBackgroundColor,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Icon(Icons.code, color: theme.primaryColor, size: 28),
            ),
            const SizedBox(height: 20),
            Text(
              widget.title,
              style: const TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                letterSpacing: 0.5,
              ),
            ),
            const SizedBox(height: 12),
            Text(
              widget.description,
              style: TextStyle(
                fontSize: 15,
                color: Colors.white.withValues(alpha: 0.7),
                height: 1.5,
              ),
            ),
            if (widget.images != null && widget.images!.isNotEmpty) ...[
              const SizedBox(height: 16),
              SizedBox(
                height: 80,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: widget.images!.length,
                  itemBuilder: (context, index) {
                    final imgPath = widget.images![index];
                    return MouseRegion(
                      cursor: SystemMouseCursors.click,
                      child: GestureDetector(
                        onTap: () {
                          showDialog(
                            context: context,
                            builder: (ctx) => Dialog(
                              backgroundColor: Colors.transparent,
                              insetPadding: const EdgeInsets.all(20),
                              child: Stack(
                                alignment: Alignment.center,
                                children: [
                                  InteractiveViewer(
                                    child: Image.asset(
                                      imgPath,
                                      fit: BoxFit.contain,
                                    ),
                                  ),
                                  Positioned(
                                    top: 0,
                                    right: 0,
                                    child: IconButton(
                                      icon: const Icon(
                                        Icons.close,
                                        color: Colors.white,
                                        size: 32,
                                      ),
                                      onPressed: () => Navigator.of(ctx).pop(),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          );
                        },
                        child: Container(
                          margin: const EdgeInsets.only(right: 8),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            border: Border.all(
                              color: theme.primaryColor.withValues(alpha: 0.3),
                            ),
                          ),
                          clipBehavior: Clip.antiAlias,
                          child: Image.asset(
                            imgPath,
                            height: 80,
                            width: 120,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
            const SizedBox(height: 24),
            Row(
              children: [
                if (widget.liveLink != null)
                  Expanded(
                    child: HoverButton(
                      padding: const EdgeInsets.symmetric(vertical: 12),
                      onPressed: () => _launchUrl(widget.liveLink!),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Icon(Icons.open_in_new, size: 16),
                          const SizedBox(width: 8),
                          Text(l10n.viewDemoBtn),
                        ],
                      ),
                    ),
                  ),
                if (widget.liveLink != null && widget.githubLink != null)
                  const SizedBox(width: 12),
                if (widget.githubLink != null)
                  Expanded(
                    child: HoverButton(
                      outlined: true,
                      padding: const EdgeInsets.symmetric(vertical: 12),
                      onPressed: () => _launchUrl(widget.githubLink!),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Icon(Icons.code),
                          const SizedBox(width: 8),
                          Text(l10n.viewGithub),
                        ],
                      ),
                    ),
                  ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
