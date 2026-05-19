import 'package:flutter/material.dart';
import 'package:portfolio_app/utils/hover_button.dart';

class ProjectSection extends StatefulWidget {
  const ProjectSection({super.key});

  @override
  State<ProjectSection> createState() => _ProjectSectionState();
}

class _ProjectSectionState extends State<ProjectSection> {

  int hoveredIndex = -1;

  final List<Map<String, dynamic>> projects = const [
    // {
    //   "title": "Flutter Quiz App",
    //   "description":
    //   "A quiz app with Firebase backend, scoring system, and login.",
    //   "tech": ["Flutter", "Firebase", "Dart"],
    //   "github": "https://github.com/your-username/quiz-app",
    // },
    {
      "title": "Portfolio Website",
      "description":
      "My personal portfolio made using Flutter Web with responsive layout.",
      "tech": ["Flutter", "Responsive UI", "Dart"],
      "github": "https://github.com/VaghelaRanjit/portfoli",
    },

    {
      "title": "News App",
      "description": "A Flutter news application with category-wise news, search functionality, and real-time API data fetching.",
      "tech": ["Flutter", "REST API", "GetX", "Dart"],
      "github": "https://github.com/VaghelaRanjit/Kal-Tak-News"
    },
    {
      "title": "Notes App",
      "description": "A local notes application built using Hive database with create, update, delete, and offline data storage features.",
      "tech": ["Flutter", "Hive DB", "GetX", "Dart"],
      "github": "https://github.com/VaghelaRanjit/notes_app"
    },
    {
      "title": "Firebase CRUD App",
      "description": "A Flutter Firebase application with authentication and CRUD operations for storing, updating, deleting, and managing real-time user data.",
      "tech": ["Flutter", "Firebase Auth", "Cloud Firestore", "GetX", "Dart"],
      "github": "https://github.com/VaghelaRanjit/Firebase_project"
    },
    {
      "title": "API Integration App",
      "description": "A Flutter application that fetches and displays real-time data from REST APIs with search and dynamic UI updates.",
      "tech": ["Flutter", "REST API", "GetX", "Dart"],
      "github": "https://github.com/VaghelaRanjit/api_learning"
    },
    {
      "title": "GetX Demo App",
      "description": "A Flutter application demonstrating GetX state management, routing, dependency injection, and utility features with clean architecture.",
      "tech": ["Flutter", "GetX", "Dart"],
      "github": "https://github.com/VaghelaRanjit/getx_learning_app"
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 25),
            child: Text(
              "My Projects",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),

          Wrap(
            spacing: 16,
            runSpacing: 16,
            alignment: WrapAlignment.center,
            children: List.generate(projects.length, (index) {

              final project = projects[index];
              bool isHover = hoveredIndex == index;

              return MouseRegion(
                onEnter: (_) {
                  setState(() {
                    hoveredIndex = index;
                  });
                },
                onExit: (_) {
                  setState(() {
                    hoveredIndex = -1;
                  });
                },

                child: AnimatedContainer(
                  duration: const Duration(milliseconds: 200),
                  transform: isHover
                      ? (Matrix4.identity()..translate(0, -8))
                      : Matrix4.identity(),

                  width: 360,
                  height: 245,
                  padding: const EdgeInsets.all(16),

                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.shade200,
                        blurRadius: 8,
                        spreadRadius: 2,
                      )
                    ],
                  ),

                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [

                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [

                          Text(
                            project["title"],
                            style: const TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),

                          const SizedBox(height: 5),

                          Text(
                            project["description"],
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                          ),

                          const SizedBox(height: 5),

                          Wrap(
                            spacing: 8,
                            children:
                            (project["tech"] as List<String>).map((tech) {
                              return Chip(
                                label: Text(tech),
                                backgroundColor: Colors.pinkAccent,
                                labelStyle:
                                const TextStyle(color: Colors.white),
                              );
                            }).toList(),
                          ),
                        ],
                      ),

                      HoverButton(url: project["github"]),
                    ],
                  ),
                ),
              );
            }),
          ),
        ],
      ),
    );
  }
}