import 'package:flutter/material.dart';
import 'package:portfolio_app/utils/hover_button.dart';

class FinalYearProject extends StatelessWidget {
  const FinalYearProject({super.key});

  final Map<String, dynamic> finalYearProject = const {
    "title": "Smart Attendance System",
    "description":
        "A mobile-based attendance system using facial recognition. Developed using Flutter for frontend and Firebase for backend.",
    "tech": ["Flutter", "Firebase", "ML Kit", "Dart"],
    "github": "https://github.com/your-username/smart-attendance-system",
  };

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Text(
            "Final Year Project",
            style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.w700),
          ),
          const SizedBox(height: 20),
          Container(
            // width: context.screenWidth < 900 ? context.screenWidth * 0.95 : 700,
            width: 360,
            height: 330,
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(16),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  finalYearProject["title"],
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 10),
                Text(
                  finalYearProject["description"],
                  style: const TextStyle(fontSize: 16),
                ),
                const SizedBox(height: 12),
                Wrap(
                  spacing: 8,
                  runSpacing: 8,
                  children: (finalYearProject["tech"] as List<String>).map((
                    tech,
                  ) {
                    return Chip(
                      label: Text(tech),
                      backgroundColor: Colors.pinkAccent,
                      labelStyle: const TextStyle(color: Colors.white),
                    );
                  }).toList(),
                ),
                const SizedBox(height: 16),
                HoverButton(url: finalYearProject["github"]),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
