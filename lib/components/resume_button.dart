import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class NeonResumeButton extends StatefulWidget {
  const NeonResumeButton({super.key});

  @override
  State<NeonResumeButton> createState() => _NeonResumeButtonState();
}

class _NeonResumeButtonState extends State<NeonResumeButton> {
  bool _isHovering = false;

  Future<void> _openPDF() async {
    const url = 'assets/resume/Ranjit_Vaghela_Flutter_Developer_Resume.pdf';
    final uri = Uri.parse(url);
    if (!await launchUrl(uri)) {
      throw 'Could not open resume';
    }
  }

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => setState(() => _isHovering = true),
      onExit: (_) => setState(() => _isHovering = false),
      child: GestureDetector(
        onTap: _openPDF,
        child: AnimatedContainer(
          duration: Duration(milliseconds: 200),
          padding: EdgeInsets.symmetric(horizontal: 24, vertical: 14),
          decoration: BoxDecoration(
            color: _isHovering ? Colors.pinkAccent : Colors.black,
            borderRadius: BorderRadius.circular(12.0),
            boxShadow: _isHovering
                ? [
                    BoxShadow(
                      color: Colors.pinkAccent.withOpacity(0.6),
                      blurRadius: 20,
                      spreadRadius: 1,
                      offset: Offset(0, 0),
                    ),
                  ]
                : [],
            border: Border.all(color: Colors.pinkAccent, width: 2),
          ),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(
                Icons.download,
                color: _isHovering ? Colors.white : Colors.pinkAccent,
              ),
              SizedBox(width: 10),
              Text(
                "Download Resume",
                style: TextStyle(
                  color: _isHovering ? Colors.white : Colors.pinkAccent,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
