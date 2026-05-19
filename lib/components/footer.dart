import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio_app/components/socialrow.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.all(20.0),
      margin: EdgeInsets.only(top: 20.0),

      child: Column(
        children: [
          SocialRow(),
          SizedBox(height: 10.0),

          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
             // FaIcon(FontAwesomeIcons.faceMeh, size: 20),
              SizedBox(width: 5.0),
              Text(
                "© 2026 Ranjit Vaghela | Built with Flutter",
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic,
                  fontFamily: 'Roboto', // optional custom font
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
