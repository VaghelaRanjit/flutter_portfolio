import 'package:flutter/material.dart';
import 'package:portfolio_app/components/about.dart';
import 'package:portfolio_app/components/education.dart';
import 'package:portfolio_app/components/footer.dart';
import 'package:portfolio_app/components/project_section.dart';
import 'package:portfolio_app/components/skills.dart';

class Portfolio extends StatefulWidget {
  const Portfolio({super.key});

  @override
  State<Portfolio> createState() => _PortfolioState();
}

class _PortfolioState extends State<Portfolio> {
  final aboutKey = GlobalKey();
  final educationKey = GlobalKey();
  final skillsKey = GlobalKey();
  final projectKey = GlobalKey();
  final footerKey = GlobalKey();
  final finalYearProjectKey = GlobalKey();

  bool isMobile = false;

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    isMobile = screenWidth < 800;

    List<Widget> navItems = [
      _navButton("About", aboutKey),
      _navButton("Education", educationKey),
      _navButton("Skills", skillsKey),
      //_navButton("Final Year Project", finalYearProjectKey),
      _navButton("Projects", projectKey),
      _navButton("Contact", footerKey),
    ];

    return Scaffold(
      backgroundColor: const Color(0xFFFFB6C1),

      appBar: AppBar(
        backgroundColor: const Color(0xFFFFB6C1),
        elevation: 0,
        scrolledUnderElevation: 0,
        surfaceTintColor: Colors.transparent,
        title: const Text(
          "Flutter Developer",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        actions: isMobile ? null : navItems,
      ),

      drawer: isMobile ? Drawer(child: ListView(children: navItems)) : null,

      body: SingleChildScrollView(
        child: Column(
          children: [

            /// CENTERED CONTENT
            Center(
              child: ConstrainedBox(
                constraints: const BoxConstraints(maxWidth: 1200),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    children: [

                      /// ABOUT + EDUCATION
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 20),
                        child: isMobile
                            ? Column(
                          children: [
                            Container(
                              key: aboutKey,
                              padding: const EdgeInsets.all(20),
                              child: const About(),
                            ),
                            const SizedBox(height: 20),
                            Container(
                              key: educationKey,
                              padding: const EdgeInsets.all(20),
                              child: const Education(),
                            ),
                          ],
                        )
                            : IntrinsicHeight(
                          child: Row(
                            crossAxisAlignment:
                            CrossAxisAlignment.stretch,
                            children: [
                              Expanded(
                                child: Container(
                                  key: aboutKey,
                                  padding:
                                  const EdgeInsets.fromLTRB(
                                      20, 40, 20, 20),
                                  child: const About(),
                                ),
                              ),
                              Expanded(
                                child: Container(
                                  key: educationKey,
                                  padding:
                                  const EdgeInsets.fromLTRB(
                                      20, 20, 20, 20),
                                  child: const Education(),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),

                      /// SKILLS
                      Container(key: skillsKey, child: const Skills()),

                      /// PROJECTS
                      Container(key: projectKey, child: const ProjectSection()),
                    ],
                  ),
                ),
              ),
            ),

            /// FULL WIDTH FOOTER
            Container(
              key: footerKey,
              width: double.infinity,
              child: const Footer(),
            ),
          ],
        ),
      ),
    );
  }

  Widget _navButton(String title, GlobalKey key) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Builder(
        builder: (context) => ElevatedButton(
          onPressed: () {
            if (Scaffold.of(context).isDrawerOpen) {
              Navigator.of(context).pop();
            }

            final sectionContext = key.currentContext;
            if (sectionContext != null) {
              Scrollable.ensureVisible(
                sectionContext,
                duration: const Duration(milliseconds: 500),
                curve: Curves.easeInOut,
              );
            }
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.white,
            foregroundColor: Colors.pinkAccent,
          ),
          child: Text(title),
        ),
      ),
    );
  }
}