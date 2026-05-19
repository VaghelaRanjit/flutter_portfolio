//
//
// import 'package:flutter/material.dart';
// import 'package:velocity_x/velocity_x.dart';
//
// class Skills extends StatelessWidget {
//   const Skills({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     final double cardWidth = context.screenWidth < 900
//         ? context.screenWidth * 0.9
//         : ((context.screenWidth * 0.7) / 3);
//
//     return Column(
//       children: [
//         const Padding(
//           padding: EdgeInsets.symmetric(vertical: 20.0),
//           child: Text(
//             "My Skills",
//             style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.w700),
//           ),
//         ),
//         Wrap(
//           spacing: 20.0,
//           runSpacing: 20.0,
//           alignment: WrapAlignment.center,
//           children: [
//             _buildSkillCard(
//               title: "Programming Languages",
//               skills: ["Dart", "C++", "JavaScript"],
//               width: cardWidth,
//             ),
//             _buildSkillCard(
//               title: "Frameworks",
//               skills: ["Flutter", "Django", "FastAPI"],
//               width: cardWidth,
//             ),
//             _buildSkillCard(
//               title: "Others",
//               skills: ["Postman", "Android Studio", "Firebase"],
//               width: cardWidth,
//             ),
//           ],
//         ),
//       ],
//     );
//   }
//
//   Widget _buildSkillCard({
//     required String title,
//     required List<String> skills,
//     required double width,
//   }) {
//     return Container(
//       width: width,
//       height: 230, // 👈 Fixed height for all cards
//       padding: const EdgeInsets.all(20.0),
//       decoration: BoxDecoration(
//         color: Colors.white,
//         borderRadius: BorderRadius.circular(20.0),
//       ),
//       child: Column(
//         mainAxisAlignment: MainAxisAlignment.spaceBetween, // 👈 Balanced layout
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Text(
//             title,
//             style: const TextStyle(fontSize: 22.0, fontWeight: FontWeight.w600),
//           ),
//           const Divider(),
//           Wrap(
//             spacing: 8.0,
//             runSpacing: 8.0,
//             children: skills.map((skill) {
//               return Chip(
//                 backgroundColor: Colors.white,
//                 label: Text(skill),
//                 labelStyle: const TextStyle(color: Colors.pinkAccent),
//                 side: const BorderSide(color: Colors.pinkAccent),
//               );
//             }).toList(),
//           ),
//         ],
//       ),
//     );
//   }
// }
// import 'package:flutter/material.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';
// import 'package:velocity_x/velocity_x.dart';
//
// class Skills extends StatelessWidget {
//   const Skills({super.key});
//
//   Widget skillChip(IconData icon, String label) {
//     return Chip(
//       avatar: FaIcon(icon, color: Colors.pinkAccent, size: 18),
//       label: Text(label),
//       backgroundColor: Colors.white,
//       labelStyle: const TextStyle(color: Colors.pinkAccent),
//       side: const BorderSide(color: Colors.pinkAccent),
//     );
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     final isMobile = context.screenWidth < 900;
//     final double cardWidth = isMobile
//         ? context.screenWidth * 0.9
//         : ((context.screenWidth * 0.7) / 3);
//     final double? cardHeight = isMobile ? null : 230; // 👈 Fixed height on web
//
//     return Column(
//       children: [
//         const Padding(
//           padding: EdgeInsets.symmetric(vertical: 20.0),
//           child: Text(
//             "My Skills",
//             style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.w700),
//           ),
//         ),
//         Wrap(
//           spacing: 20.0,
//           runSpacing: 20.0,
//           alignment: WrapAlignment.center,
//           children: [
//             _buildSkillCard(
//               title: "Programming Languages",
//               skills: [
//                 skillChip(FontAwesomeIcons.code, "Dart"),
//                 skillChip(FontAwesomeIcons.c, "Python"),
//                 skillChip(FontAwesomeIcons.js, "JAVA"),
//               ],
//               width: cardWidth,
//               height: cardHeight,
//             ),
//             _buildSkillCard(
//               title: "Frameworks",
//               skills: [
//                 skillChip(FontAwesomeIcons.mobileAlt, "Flutter"),
//                 skillChip(FontAwesomeIcons.rocket, "FastAPI"),
//               ],
//               width: cardWidth,
//               height: cardHeight,
//             ),
//             _buildSkillCard(
//               title: "Others",
//               skills: [
//                 skillChip(FontAwesomeIcons.paperPlane, "Postman"),
//                 skillChip(FontAwesomeIcons.android, "Android Studio"),
//                 skillChip(FontAwesomeIcons.fire, "Firebase"),
//               ],
//               width: cardWidth,
//               height: cardHeight,
//             ),
//           ],
//         ),
//       ],
//     );
//   }
//
//   Widget _buildSkillCard({
//     required String title,
//     required List<Widget> skills,
//     required double width,
//     required double? height,
//   }) {
//     return Container(
//       width: width,
//       height: height, // 👈 This line ensures same height on web
//       padding: const EdgeInsets.all(20.0),
//       decoration: BoxDecoration(
//         color: Colors.white,
//         borderRadius: BorderRadius.circular(20.0),
//       ),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Text(
//             title,
//             style: const TextStyle(fontSize: 22.0, fontWeight: FontWeight.w600),
//           ),
//           const SizedBox(height: 8),
//           const Divider(),
//           Expanded(
//             // 👈 Ensures skill chips are scrollable if overflowed
//             child: Wrap(spacing: 8.0, runSpacing: 8.0, children: skills),
//           ),
//         ],
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:velocity_x/velocity_x.dart';

class Skills extends StatelessWidget {
  const Skills({super.key});

  Widget skillChip(IconData icon, String label) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: Colors.pinkAccent),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          FaIcon(icon, color: Colors.pinkAccent, size: 16),
          const SizedBox(width: 6),
          Text(
            label,
            style: const TextStyle(
              color: Colors.pinkAccent,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final isMobile = context.screenWidth < 900;

    final double cardWidth =
    isMobile ? context.screenWidth * 0.9 : ((context.screenWidth * 0.7) / 3);

    final double? cardHeight = isMobile ? null : 230;

    return Column(
      children: [
        const Padding(
          padding: EdgeInsets.symmetric(vertical: 30),
          child: Text(
            "My Skills",
            style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.w700),
          ),
        ),

        /// SKILL CARDS
        Wrap(
          spacing: 20,
          runSpacing: 20,
          alignment: WrapAlignment.center,
          children: [
            _buildSkillCard(
              title: "Programming Languages",
              skills: [
                skillChip(FontAwesomeIcons.code, "Dart"),
                skillChip(FontAwesomeIcons.js, "Java"),
              ],
              width: cardWidth,
              height: cardHeight,
            ),
            _buildSkillCard(
              title: "Frameworks",
              skills: [
                skillChip(FontAwesomeIcons.mobileAlt, "Flutter"),
                skillChip(FontAwesomeIcons.bolt, "GetX"),
              ],
              width: cardWidth,
              height: cardHeight,
            ),
            _buildSkillCard(
              title: "Databases / Storage",
              skills: [
                skillChip(FontAwesomeIcons.fire, "Firebase"),
               // skillChip(FontAwesomeIcons.fire, "Hive"),
                skillChip(FontAwesomeIcons.boxArchive, "Hive"),
                skillChip(FontAwesomeIcons.database, "MySQL"),


              ],
              width: cardWidth,
              height: cardHeight,
            ),
            _buildSkillCard(
              title: "APIs & Tools",
              skills: [

                // skillChip(FontAwesomeIcons.paperPlane, "Postman"),
                // skillChip(FontAwesomeIcons.android, "Android Studio"),
                // skillChip(FontAwesomeIcons.laptopCode, "VS Code"),
                // skillChip(FontAwesomeIcons.networkWired, "RESTful APIs"),
                Wrap(
                  spacing: 8,
                  runSpacing: 8,
                  children: [
                    skillChip(FontAwesomeIcons.paperPlane, "Postman"),
                    skillChip(FontAwesomeIcons.android, "Android Studio"),
                    skillChip(FontAwesomeIcons.laptopCode, "VS Code"),
                    skillChip(FontAwesomeIcons.networkWired, "RESTful APIs"),
                  ],
                )
              ],
              width: cardWidth,
              height: cardHeight,
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildSkillCard({
    required String title,
    required List<Widget> skills,
    required double width,
    required double? height,
  }) {
    return Container(
      width: width,
      height: height,
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: const Color(0xFFEDEDED), // same grey as project cards
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: const TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox(height: 8),
          const Divider(),
          const SizedBox(height: 10),
          Expanded(
            child: Wrap(
              spacing: 7,
              runSpacing: 7,
              children: skills,
            ),
          ),
        ],
      ),
    );
  }
}


