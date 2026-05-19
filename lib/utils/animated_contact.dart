import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class AnimatedContact extends StatefulWidget {
  final IconData iconData;
  final String title;
  final String Subtitle;
  final VoidCallback onTap;
  const AnimatedContact({
    super.key,
    required this.iconData,
    required this.title,
    required this.Subtitle,
    required this.onTap,
  });

  @override
  State<AnimatedContact> createState() => _AnimatedContactState();
}

class _AnimatedContactState extends State<AnimatedContact> {
  bool isHovering = false;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: widget.onTap,
      onHover: (val) {
        setState(() {
          isHovering = val;
        });
      },
      child: AnimatedContainer(
        duration: Duration(milliseconds: 300),
        child: Container(
          decoration: BoxDecoration(
            color: isHovering ? Colors.grey.shade300 : Colors.white,
            borderRadius: BorderRadius.circular(12.0),
            border: Border.all(color: isHovering ? Colors.grey : Colors.white),
          ),
          margin: EdgeInsets.only(top: 10.0),
          padding: EdgeInsets.all(8.0),
          child: Row(
            children: [
              Card(
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: FaIcon(widget.iconData, size: 20.0),
                ),
              ),

              const SizedBox(width: 5.0),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.title,
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Container(
                    child: Text(
                      widget.Subtitle,
                      style: TextStyle(fontSize: 10.0),
                      softWrap: true,
                      overflow: TextOverflow.ellipsis,
                      maxLines: 2,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
