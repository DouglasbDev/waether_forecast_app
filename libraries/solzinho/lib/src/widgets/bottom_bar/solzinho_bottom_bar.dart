import 'package:flutter/material.dart';

class SolzinhoBottomBar extends StatefulWidget {
  final Widget iconWind;
  final Widget titleWind;
  final Widget subtitleWind;
  final Widget iconTemperature;
  final Widget titleTemperature;
  final Widget subtitleTemperature;
  const SolzinhoBottomBar(
      {super.key,
      required this.iconWind,
      required this.titleWind,
      required this.subtitleWind,
      required this.iconTemperature,
      required this.titleTemperature,
      required this.subtitleTemperature});

  @override
  State<SolzinhoBottomBar> createState() => _SolzinhoBottomBarState();
}

class _SolzinhoBottomBarState extends State<SolzinhoBottomBar> {
  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: const BoxConstraints(maxWidth: 300),
      child: Container(
        height: 140,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          color: const Color(0xff0E56B7),
          borderRadius: BorderRadius.circular(50),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  widget.iconWind,
                  widget.titleWind,
                  widget.subtitleWind
                ],
              ),
            ),
            const VerticalDivider(
              width: 100,
              thickness: 0.5,
              indent: 30,
              endIndent: 30,
              color: Color(0xff3D76C5),
            ),
            Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  widget.iconTemperature,
                  widget.titleTemperature,
                  widget.subtitleTemperature
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
