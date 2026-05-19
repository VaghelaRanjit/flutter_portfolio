import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class HoverButton extends StatefulWidget {
  final String url;

  const HoverButton({super.key, required this.url});

  @override
  State<HoverButton> createState() => _HoverButtonState();
}

class _HoverButtonState extends State<HoverButton> {
  bool isHovered = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => setState(() => isHovered = true),
      onExit: (_) => setState(() => isHovered = false),
      child: ElevatedButton.icon(
        onPressed: () => _launchURL(widget.url),
        icon: const Icon(Icons.link),
        label: const Text("GitHub Link"),
        style: ElevatedButton.styleFrom(
          backgroundColor: isHovered ? Colors.pinkAccent : Colors.black,
          foregroundColor: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12.0),
          ),
        ),
      ),
    );
  }

  Future<void> _launchURL(String url) async {
    final uri = Uri.parse(url);
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri, mode: LaunchMode.externalApplication);
    }
  }
}
