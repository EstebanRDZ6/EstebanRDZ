import 'package:flutter/material.dart';
import 'package:flutter_portfolio/l10n/app_localizations.dart';
import '../widgets/project_card.dart';

class ProjectsSection extends StatelessWidget {
  const ProjectsSection({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    final size = MediaQuery.of(context).size;
    final isMobile = size.width < 800;

    return Container(
      width: double.infinity,
      color: Theme.of(context).colorScheme.surface.withValues(alpha: 0.2),
      padding: EdgeInsets.symmetric(
        horizontal: isMobile ? 24 : size.width * 0.15,
        vertical: 100,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            l10n.projectsTitle,
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
          Center(
            child: Wrap(
              alignment: WrapAlignment.center,
              children: [
                ProjectCard(
                  title: l10n.projAberturasTitle,
                  description: l10n.projAberturasDesc,
                  githubLink:
                      'https://github.com/EstebanRDZ6/Aberturas-Bros-Ecommerce',
                  images: const [
                    'assets/aberturas_bros/1.jpg',
                    'assets/aberturas_bros/2.jpg',
                    'assets/aberturas_bros/3.jpg',
                    'assets/aberturas_bros/4.jpg',
                    'assets/aberturas_bros/5.jpg',
                    'assets/aberturas_bros/6.jpg',
                    'assets/aberturas_bros/7.jpg',
                    'assets/aberturas_bros/8.jpg',
                    'assets/aberturas_bros/9.jpg',
                    'assets/aberturas_bros/10.jpg',
                    'assets/aberturas_bros/11.jpg',
                    'assets/aberturas_bros/Pedidos2.jpg',
                  ],
                ),
                ProjectCard(
                  title: l10n.projEmilyTitle,
                  description: l10n.projEmilyDesc,
                  githubLink:
                      'https://github.com/EstebanRDZ6/EmilyShowroom-clothing-store',
                ),
                ProjectCard(
                  title: l10n.projStockTitle,
                  description: l10n.projStockDesc,
                  githubLink:
                      'https://github.com/EstebanRDZ6/Stock-control-program',
                  images: const [
                    'assets/stock_control/1.png',
                    'assets/stock_control/2.png',
                    'assets/stock_control/3.png',
                    'assets/stock_control/4.png',
                    'assets/stock_control/5.png',
                    'assets/stock_control/6.png',
                    'assets/stock_control/7.png',
                  ],
                ),
                ProjectCard(
                  title: l10n.projUniTitle,
                  description: l10n.projUniDesc,
                  githubLink:
                      'https://github.com/EstebanRDZ6/University-_works-_carried-_out',
                ),
                ProjectCard(
                  title: l10n.projForensicTitle,
                  description: l10n.projForensicDesc,
                  githubLink:
                      'https://github.com/EstebanRDZ6/AnalisisForense/tree/master',
                  images: const [
                    'assets/forensic/1f.jpg',
                    'assets/forensic/2f.jpg',
                    'assets/forensic/3f.jpg',
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(height: 80),
          Text(
            l10n.projectsExtraTitle,
            style: const TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 40),
          Center(
            child: Wrap(
              alignment: WrapAlignment.center,
              children: [
                ProjectCard(
                  title: l10n.projEcommerceTitle,
                  description: l10n.projEcommerceDesc,
                  liveLink: 'https://estebanrdz6.github.io/webmoderna-demo/',
                ),
                ProjectCard(
                  title: l10n.projDentalTitle,
                  description: l10n.projDentalDesc,
                  liveLink: 'https://estebanrdz6.github.io/dental-clinic-demo/',
                ),
                ProjectCard(
                  title: l10n.projRestoTitle,
                  description: l10n.projRestoDesc,
                  liveLink: 'https://estebanrdz6.github.io/resto-bar-demo/',
                ),
                ProjectCard(
                  title: l10n.projCrmTitle,
                  description: l10n.projCrmDesc,
                  liveLink:
                      'https://estebanrdz6.github.io/crm-enterprise-demo/',
                ),
                ProjectCard(
                  title: l10n.projSaasTitle,
                  description: l10n.projSaasDesc,
                  liveLink:
                      'https://estebanrdz6.github.io/automation-saas-demo/',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
