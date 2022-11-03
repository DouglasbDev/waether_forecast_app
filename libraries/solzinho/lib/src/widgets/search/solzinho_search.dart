import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class SolzinhoSearchWidget extends StatefulWidget {
  final IconData? prefix;
  final Widget? suffixIcon;
  final String? hintText;

  final List<TextInputFormatter>? inputFormatters;
  final TextEditingController? controller;
  final String? Function(String? text)? validator;
  final String? Function(String text)? onChanged;
  const SolzinhoSearchWidget(
      {super.key,
      this.prefix,
      this.suffixIcon,
      this.hintText,
      this.inputFormatters,
      this.controller,
      this.validator,
      this.onChanged});

  @override
  State<SolzinhoSearchWidget> createState() => _SolzinhoSearchWidgetState();
}

class _SolzinhoSearchWidgetState extends State<SolzinhoSearchWidget> {
  @override
  Widget build(BuildContext context) {
    final headline6 = Theme.of(context).textTheme.headline6;
    final size = MediaQuery.of(context).size;
    double widthSize = size.width;
    double heightSize = size.height;
    return TextFormField(
      inputFormatters: widget.inputFormatters,
      onChanged: widget.onChanged,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      validator: widget.validator,
      controller: widget.controller,
      decoration: InputDecoration(
          prefixIcon: Icon(
            widget.prefix,
            size: widthSize * 0.064,
            color: const Color(0xffB4AFEB),
          ),
          suffixIcon: widget.suffixIcon,
          hintText: widget.hintText,
          hintStyle: headline6),
    );
  }
}
