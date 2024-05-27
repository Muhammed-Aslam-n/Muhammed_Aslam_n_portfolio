import 'package:flutter/material.dart';
import 'package:portfolio_web/constants/app_assets.dart';
import 'package:portfolio_web/constants/colors.dart';
import 'package:portfolio_web/constants/sns_links.dart';
import 'package:portfolio_web/widgets/contact/contact_section.dart';
import 'package:portfolio_web/widgets/education/education_desktop.dart';
import 'package:portfolio_web/widgets/education/education_mobile.dart';
import 'package:portfolio_web/widgets/main/main_desktop.dart';
import 'package:portfolio_web/widgets/main/main_mobile.dart';
import 'package:portfolio_web/widgets/project/projects_section.dart';
import 'package:portfolio_web/widgets/skill/skills_desktop.dart';
import 'package:portfolio_web/widgets/skill/skills_mobile.dart';
import 'dart:js' as js;
import '../constants/size.dart';

import '../widgets/drawer/drawer_mobile.dart';
import '../widgets/footer/footer.dart';
import '../widgets/header/header_desktop.dart';
import '../widgets/header/header_mobile.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final scaffoldKey = GlobalKey<ScaffoldState>();
  final scrollController = ScrollController();
  final List<GlobalKey> navbarKeys = List.generate(6, (index) => GlobalKey());

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final screenWidth = screenSize.width;

    return LayoutBuilder(
      builder: (context, constraints) {
        return Scaffold(
          key: scaffoldKey,
          backgroundColor: CustomColor.scaffoldBg,
          endDrawer: constraints.maxWidth >= kMinDesktopWidth
              ? null
              : DrawerMobile(onNavItemTap: (int navIndex) {
                  scaffoldKey.currentState?.closeEndDrawer();
                  scrollToSection(navIndex);
                }),
          body: SingleChildScrollView(
            controller: scrollController,
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                SizedBox(key: navbarKeys.first),

                // MAIN
                if (constraints.maxWidth >= kMinDesktopWidth)
                  HeaderDesktop(
                    onNavMenuTap: (int navIndex) {
                      scrollToSection(navIndex);
                    },
                  )
                else
                  HeaderMobile(
                    onLogoTap: () {},
                    onMenuTap: () {
                      scaffoldKey.currentState?.openEndDrawer();
                    },
                  ),

                if (constraints.maxWidth >= kMinDesktopWidth)
                  const MainDesktop()
                else
                  const MainMobile(),

                // SKILLS
                Container(
                  key: navbarKeys[1],
                  width: screenWidth,
                  padding: const EdgeInsets.fromLTRB(25, 20, 25, 60),
                  color: CustomColor.bgLight1,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      // title
                      const Text(
                        "What I can do",
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: CustomColor.whitePrimary,
                        ),
                      ),
                      const SizedBox(height: 50),

                      // platforms and skills
                      if (constraints.maxWidth >= kMedDesktopWidth)
                        const SkillsDesktop()
                      else
                        const SkillsMobile(),
                    ],
                  ),
                ),

                const SizedBox(height: 30),

                // PROJECTS
                ProjectsSection(
                  key: navbarKeys[2],
                ),

                const SizedBox(height: 30),

                Container(
                  key: navbarKeys[3],
                  width: screenWidth,
                  padding: const EdgeInsets.fromLTRB(25, 20, 25, 60),
                  color: CustomColor.bgLight1,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      // title
                      const Text(
                        "Education & Experience",
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: CustomColor.whitePrimary,
                        ),
                      ),
                      const SizedBox(height: 50),

                      // platforms and skills
                      if (constraints.maxWidth >= kMedDesktopWidth)
                        const EducationDesktop()
                      else
                        const EducationMobile(),
                    ],
                  ),
                ),

                const SizedBox(height: 30),

                // CONTACT
                ContactSection(
                  key: navbarKeys[4],
                ),
                const SizedBox(height: 30),

                // FOOTER
                const Footer(),
              ],
            ),
          ),
        );
      },
    );
  }

  void scrollToSection(int navIndex) {
    if (navIndex == 4) {
      // open a blog page
      js.context.callMethod('open', [SnsLinks.blog]);
      return;
    } else if (navIndex == 5) {
      js.context.callMethod('open', [AppAssets.resumeURL]);
    }

    final key = navbarKeys[navIndex];
    Scrollable.ensureVisible(
      key.currentContext!,
      duration: const Duration(milliseconds: 500),
      curve: Curves.easeInOut,
    );
  }
}
