import 'package:flutter/material.dart';

class CommonTextField extends StatefulWidget {
  TextEditingController tc = TextEditingController();
  String? Function(String?)? validator;
  bool isSuffix;
  bool passToggle;
  String lableText;
  IconData formFieldIcon;
  CommonTextField({
    super.key,
    required this.validator,
    required this.isSuffix,
    required this.passToggle,
    required this.tc,
    required this.lableText,
    required this.formFieldIcon,
  });

  @override
  State<CommonTextField> createState() => _CommonTextFieldState();
}

class _CommonTextFieldState extends State<CommonTextField> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.tc,
      decoration: InputDecoration(
          suffix: widget.isSuffix
              ? InkWell(
                  onTap: () {
                    setState(() {
                      widget.passToggle = !widget.passToggle;
                    });
                  },
                  child: Icon(widget.passToggle
                      ? Icons.visibility
                      : Icons.visibility_off),
                )
              : null,
          labelText: widget.lableText,
          enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.black),
          ),
          focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Color.fromARGB(255, 22, 221, 221)),
          ),
          prefixIcon: Icon(widget.formFieldIcon),
          labelStyle: const TextStyle(color: Colors.grey)),
      validator: widget.validator,
      style: const TextStyle(color: Color.fromARGB(255, 0, 0, 0), fontSize: 18),
    );
  }
}
