// import 'package:flutter/material.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';
// import 'package:portfolio_app/components/resume_button.dart';
// import 'package:portfolio_app/components/socialrow.dart';
// import 'package:url_launcher/url_launcher.dart';
// import 'package:velocity_x/velocity_x.dart';
//
// import '../utils/animated_contact.dart';
//
// class About extends StatefulWidget {
//   const About({super.key});
//
//   @override
//   State<About> createState() => _AboutState();
// }
//
// class _AboutState extends State<About> {
//   // Future<void> _launchURL(String url) async {
//   //   final uri = Uri.parse(url);
//   //   if (await canLaunchUrl(uri)) {
//   //     await launchUrl(uri);
//   //   } else {
//   //     throw 'Could not launch $url';
//   //   }
//   // }
//
//   Future<void> _launchURL(String url) async {
//     final Uri uri = Uri.parse(url);
//     if (!await launchUrl(uri, mode: LaunchMode.externalApplication)) {
//       throw Exception('Could not launch $url');
//     }
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       width: context.screenWidth < 900
//           ? context.screenWidth * 0.9
//           : context.screenWidth < 1600
//           ? context.screenWidth * 0.3
//           : context.screenWidth * 0.2,
//
//       decoration: BoxDecoration(
//         color: Colors.white,
//         borderRadius: BorderRadius.circular(12.0),
//       ),
//
//       // remove this height and padding later
//       padding: EdgeInsets.all(30.0),
//       // height: 800.0,
//       // child: Column(children: [Image.asset("assets/dev.avif", height: 156.0)]),
//       child: SingleChildScrollView(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//           children: [
//             Column(
//               children: [
//                 Image.asset("assets/dev.png", height: 200, fit: BoxFit.contain),
//
//                 Text(
//                   "Ranjit",
//                   style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.w600),
//                 ),
//                 Padding(
//                   padding: EdgeInsets.symmetric(vertical: 8.0),
//                   child: Text(
//                     "I’m a Flutter developer passionate about building cross-platform apps. Currently exploring mobile and web development, and looking for exciting dev roles to grow and contribute.",
//                     textAlign: TextAlign.center,
//                     style: TextStyle(fontWeight: FontWeight.w500),
//                   ),
//                 ),
//                 Wrap(
//                   spacing: 8.0,
//                   runSpacing: 8.0,
//                   children: const [
//                     Chip(
//                       label: Text("Flutter Developer"),
//                       labelStyle: TextStyle(color: Colors.white),
//                       backgroundColor: Colors.pinkAccent,
//                       padding: EdgeInsets.all(8.0),
//                     ),
//                     Chip(
//                       label: Text("App Developer"),
//                       labelStyle: TextStyle(color: Colors.white),
//                       backgroundColor: Colors.pinkAccent,
//                       padding: EdgeInsets.all(8.0),
//                     ),
//                   ],
//                 ),
//
//                 // ElevatedButton.icon(
//                 //   onPressed: () async {
//                 //     const url = 'assets/resume.pdf';
//                 //     final uri = Uri.parse(url);
//                 //     if (!await launchUrl(uri)) {
//                 //       throw 'Could not open resume';
//                 //     }
//                 //   },
//                 //   icon: Icon(Icons.download, color: Colors.pinkAccent),
//                 //   label: Text(
//                 //     "Download Resume",
//                 //     style: TextStyle(
//                 //       color: Colors.pinkAccent,
//                 //       fontWeight: FontWeight.bold,
//                 //     ),
//                 //   ),
//                 //   style: ElevatedButton.styleFrom(
//                 //     backgroundColor: Colors.white,
//                 //     shadowColor: Colors.transparent,
//                 //     side: BorderSide(color: Colors.pinkAccent, width: 2),
//                 //     shape: RoundedRectangleBorder(
//                 //       borderRadius: BorderRadius.circular(16),
//                 //     ),
//                 //     padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
//                 //   ),
//                 // ),
//                 SizedBox(height: 12.0),
//                 NeonResumeButton(),
//                 Divider(),
//
//                 Padding(
//                   padding: EdgeInsets.only(right: 15.0, left: 15.0),
//                   child: AnimatedContact(
//                     iconData: FontAwesomeIcons.github,
//                     title: "Github",
//                     Subtitle: "The Developer",
//                     onTap: () async {
//                       try {
//                         await _launchURL("https://github.com/VaghelaRanjit");
//                       } catch (e) {
//                         ScaffoldMessenger.of(context).showSnackBar(
//                           SnackBar(content: Text('Could not open email app.')),
//                         );
//                       }
//                     },
//                   ),
//                 ),
//                 Padding(
//                   padding: EdgeInsets.only(right: 15.0, left: 15.0),
//                   child: AnimatedContact(
//                     iconData: FontAwesomeIcons.linkedin,
//                     title: "LinkedIn",
//                     Subtitle: "The Developer",
//                     onTap: () async {
//                       try {
//                         await _launchURL("https://www.linkedin.com");
//                       } catch (e) {
//                         ScaffoldMessenger.of(context).showSnackBar(
//                           SnackBar(content: Text('Could not open email app.')),
//                         );
//                       }
//                     },
//                   ),
//                 ),
//                 Padding(
//                   padding: EdgeInsets.only(right: 15.0, left: 15.0),
//                   child: AnimatedContact(
//                     iconData: FontAwesomeIcons.envelope,
//                     title: "E-mail",
//                     Subtitle: "rv5765853@gmail.com",
//                     onTap: () async {
//                       try {
//                         await _launchURL("mailto:rv5765853@gmail.com");
//                       } catch (e) {
//                         ScaffoldMessenger.of(context).showSnackBar(
//                           SnackBar(content: Text('Could not open email app.')),
//                         );
//                       }
//                     },
//                   ),
//                 ),
//               ],
//             ),
//
//             SizedBox(height: 10.0),
//             Column(children: [Divider(), SocialRow()]),
//           ],
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio_app/components/resume_button.dart';
import 'package:portfolio_app/components/socialrow.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:velocity_x/velocity_x.dart';

import '../utils/animated_contact.dart';

class About extends StatefulWidget {
  const About({super.key});

  @override
  State<About> createState() => _AboutState();
}

class _AboutState extends State<About> {
  Future<void> _launchURL(String url) async {
    final Uri uri = Uri.parse(url);
    if (!await launchUrl(uri, mode: LaunchMode.externalApplication)) {
      throw Exception('Could not launch $url');
    }
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        width: context.screenWidth < 900
            ? context.screenWidth * 0.9
            : context.screenWidth < 1600
            ? context.screenWidth * 0.3
            : context.screenWidth * 0.2,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12.0),
        ),
        padding: const EdgeInsets.all(30.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                Image.asset("assets/dev.png", height: 200, fit: BoxFit.contain),
                const SizedBox(height: 12),
                const Text(
                  "Ranjit",
                  style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.w600),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 8.0),
                  child: Text(
                    "I’m a Flutter developer passionate about building cross-platform apps. Currently exploring mobile and web development, and looking for exciting dev roles to grow and contribute.",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontWeight: FontWeight.w500),
                  ),
                ),
                Wrap(
                  spacing: 8.0,
                  runSpacing: 8.0,
                  children: const [
                    Chip(
                      label: Text("Flutter Developer"),
                      labelStyle: TextStyle(color: Colors.white),
                      backgroundColor: Colors.pinkAccent,
                      padding: EdgeInsets.all(8.0),
                    ),
                    Chip(
                      label: Text("App Developer"),
                      labelStyle: TextStyle(color: Colors.white),
                      backgroundColor: Colors.pinkAccent,
                      padding: EdgeInsets.all(8.0),
                    ),
                  ],
                ),

                const SizedBox(height: 20),
                const NeonResumeButton(),
                const SizedBox(height: 16),
                const Divider(),

                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15.0),
                  child: AnimatedContact(
                    iconData: FontAwesomeIcons.github,
                    title: "Github",
                    Subtitle: "The Developer",
                    onTap: () async {
                      try {
                        await _launchURL("https://github.com/VaghelaRanjit");
                      } catch (e) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                            content: Text('Could not open GitHub'),
                          ),
                        );
                      }
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15.0),
                  child: AnimatedContact(
                    iconData: FontAwesomeIcons.linkedin,
                    title: "LinkedIn",
                    Subtitle: "The Developer",
                    onTap: () async {
                      try {
                        await _launchURL("https://www.linkedin.com/in/ranjit-vaghela-ba69a931");
                      } catch (e) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                            content: Text('Could not open LinkedIn'),
                          ),
                        );
                      }
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15.0),
                  child: AnimatedContact(
                    iconData: FontAwesomeIcons.envelope,
                    title: "E-mail",
                    Subtitle: "ranjitvaghela0007@gmail.com",
                    onTap: () async {
                      try {
                        await _launchURL("mailto:ranjitvaghela0007@gmail.com");
                      } catch (e) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                            content: Text('Could not open email app.'),
                          ),
                        );
                      }
                    },
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10.0),
            const Divider(),
            const SocialRow(),
          ],
        ),
      ),
    );
  }
}
