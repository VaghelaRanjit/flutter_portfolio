import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class AnimatedIconButton extends StatefulWidget {
  final IconData iconData;
  final VoidCallback onTap;

  const AnimatedIconButton({
    super.key,
    required this.iconData,
    required this.onTap,
  });

  @override
  State<AnimatedIconButton> createState() => _AnimatedIconButtonState();
}

class _AnimatedIconButtonState extends State<AnimatedIconButton> {
  bool isHovering = false;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
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

          padding: EdgeInsets.all(8.0),
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(4.0),
                child: FaIcon(widget.iconData, size: 28.0),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
