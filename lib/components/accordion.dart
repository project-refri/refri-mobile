import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:refri_mobile/constants/colors.dart';
import 'package:refri_mobile/constants/icon.dart';
import 'package:refri_mobile/constants/typography.dart';

class Accordion extends StatefulWidget {
  final String title;
  final String description;
  final Widget content;

  const Accordion({
    Key? key,
    required this.title,
    required this.description,
    required this.content,
  }) : super(key: key);

  @override
  State<Accordion> createState() => _AccordionState();
}

class _AccordionState extends State<Accordion> {
  bool _showContent = true;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _showContent = !_showContent;
        });
      },
      child: Container(
        decoration: const BoxDecoration(
          border: Border(
            bottom: BorderSide(
              color: subColor3,
              width: 1,
            ),
          ),
        ),
        child: Column(children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: SizedBox(
              height: 64,
              child: Row(
                children: [
                  Text(
                    widget.title,
                    style: defaultTextStyle.copyWith(
                        fontSize: 20, fontWeight: FontWeight.w600),
                  ),
                  const SizedBox(width: 10),
                  Expanded(
                    child: Text(
                      widget.description,
                      style: defaultTextStyle.copyWith(
                          fontSize: 10, fontWeight: FontWeight.w400),
                    ),
                  ),
                  SvgPicture.asset(_showContent
                      ? IconAsset.arrowTopIcon.path
                      : IconAsset.arrowBottomIcon.path),
                ],
              ),
            ),
          ),
          _showContent ? widget.content : Container()
        ]),
      ),
    );
  }
}
