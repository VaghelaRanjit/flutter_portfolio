import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio_app/utils/animated_icon_button.dart';
import 'package:url_launcher/url_launcher.dart';

class SocialRow extends StatefulWidget {
  const SocialRow({super.key});

  @override
  State<SocialRow> createState() => _SocialRowState();
}

class _SocialRowState extends State<SocialRow> {
  Future<void> _launchURL(String url) async {
    final Uri uri = Uri.parse(url);
    if (!await launchUrl(uri, mode: LaunchMode.externalApplication)) {
      throw Exception('Could not launch $url');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        AnimatedIconButton(
          iconData: FontAwesomeIcons.facebook,
          onTap: () async {
            await _launchURL("https://www.facebook.com");
          },
        ),
        const SizedBox(width: 8.0),
        AnimatedIconButton(
          iconData: FontAwesomeIcons.instagram,
          onTap: () async {
            await _launchURL("https://www.instagram.com/flutterwithranjit");
          },
        ),
        const SizedBox(width: 8.0),
        AnimatedIconButton(
          iconData: FontAwesomeIcons.threads,
          onTap: () async {
            await _launchURL("https://www.twitter.com");
          },
        ),
      ],
    );
  }
}
