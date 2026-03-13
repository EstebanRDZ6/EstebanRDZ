import 'package:flutter/material.dart';

import '../widgets/navbar.dart';
import '../sections/hero_section.dart';
import '../sections/about_section.dart';
import '../sections/skills_section.dart';
import '../sections/projects_section.dart';
import '../sections/contact_section.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final ScrollController _scrollController = ScrollController();

  final _homeKey = GlobalKey();
  final _aboutKey = GlobalKey();
  final _skillsKey = GlobalKey();
  final _projectsKey = GlobalKey();
  final _contactKey = GlobalKey();

  void _scrollTo(GlobalKey key) {
    if (key.currentContext != null) {
      Scrollable.ensureVisible(
        key.currentContext!,
        duration: const Duration(milliseconds: 600),
        curve: Curves.easeInOut,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SingleChildScrollView(
            controller: _scrollController,
            child: Column(
              children: [
                Container(
                  key: _homeKey,
                  child: HeroSection(
                    onViewProjects: () => _scrollTo(_projectsKey),
                    onContactMe: () => _scrollTo(_contactKey),
                  ),
                ),
                Container(key: _aboutKey, child: const AboutSection()),
                Container(key: _skillsKey, child: const SkillsSection()),
                Container(key: _projectsKey, child: const ProjectsSection()),
                Container(key: _contactKey, child: const ContactSection()),
              ],
            ),
          ),
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: NavBar(
              onHomeTap: () => _scrollTo(_homeKey),
              onAboutTap: () => _scrollTo(_aboutKey),
              onSkillsTap: () => _scrollTo(_skillsKey),
              onProjectsTap: () => _scrollTo(_projectsKey),
              onContactTap: () => _scrollTo(_contactKey),
            ),
          ),
        ],
      ),
    );
  }
}
