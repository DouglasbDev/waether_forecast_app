import 'package:flutter/material.dart';

class SolzinhoBottomBar extends StatefulWidget {
  const SolzinhoBottomBar({super.key});

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
          color: Color(0xff0E56B7),
          borderRadius: BorderRadius.circular(50),
        ),
      ),
    );
  }
}
