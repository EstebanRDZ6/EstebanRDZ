import 'package:flutter/material.dart';
import 'package:flutter_portfolio/l10n/app_localizations.dart';

class SkillsSection extends StatelessWidget {
  const SkillsSection({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    final size = MediaQuery.of(context).size;
    final isMobile = size.width < 800;

    final categories = [
      _SkillCategory(
        title: l10n.catProgramming,
        skills: ['Python', 'C#', 'Dart', 'JavaScript', 'TypeScript', 'HTML'],
      ),
      _SkillCategory(
        title: l10n.catBackend,
        skills: [
          'FastAPI',
          '.NET Framework',
          '.NET',
          'ASP.NET Core',
          'REST APIs',
          'SQLAlchemy',
          'JWT Authentication',
          'WebSockets',
        ],
      ),
      _SkillCategory(
        title: l10n.catFrontend,
        skills: ['Flutter', 'Dart', 'JavaScript', 'TypeScript', 'HTML'],
      ),
      _SkillCategory(
        title: l10n.catDatabases,
        skills: [
          'PostgreSQL',
          'Microsoft SQL Server',
          'SQL',
          'Database Design',
          'ETL Pipelines',
          'Alembic Migrations',
          'Redis',
        ],
      ),
      _SkillCategory(
        title: l10n.catDevops,
        skills: ['Docker', 'Docker Compose', 'Redis', 'Linux', 'Git', 'GitHub'],
      ),
      _SkillCategory(
        title: l10n.catCloud,
        skills: ['Firebase', 'Cloud-ready Architecture'],
      ),
    ];

    return Container(
      width: double.infinity,
      color: Theme.of(context).scaffoldBackgroundColor,
      padding: EdgeInsets.symmetric(
        horizontal: isMobile ? 24 : size.width * 0.15,
        vertical: 100,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            l10n.skillsTitle,
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
            alignment: WrapAlignment.start,
            children: categories
                .map((cat) => _buildCategoryCard(context, cat, isMobile))
                .toList(),
          ),
        ],
      ),
    );
  }

  Widget _buildCategoryCard(
    BuildContext context,
    _SkillCategory category,
    bool isMobile,
  ) {
    return Container(
      width: isMobile ? double.infinity : 380,
      padding: const EdgeInsets.all(24),
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.surface,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: Colors.white.withValues(alpha: 0.05)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            category.title,
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Theme.of(context).primaryColor,
            ),
          ),
          const SizedBox(height: 20),
          Wrap(
            spacing: 8,
            runSpacing: 8,
            children: category.skills.map((skill) {
              return Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 14,
                  vertical: 8,
                ),
                decoration: BoxDecoration(
                  color: Theme.of(context).scaffoldBackgroundColor,
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(
                    color: Colors.white.withValues(alpha: 0.1),
                  ),
                ),
                child: Text(
                  skill,
                  style: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              );
            }).toList(),
          ),
        ],
      ),
    );
  }
}

class _SkillCategory {
  final String title;
  final List<String> skills;
  _SkillCategory({required this.title, required this.skills});
}
