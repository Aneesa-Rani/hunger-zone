import 'package:flutter/material.dart';

class CustomTextField extends StatefulWidget {
  final TextEditingController? controller;
  final String labelText;
  final bool noIcon;
  final Function(String)? onChanged;
  final TextInputType keyboardType;

  const CustomTextField({
    super.key,
    this.controller,
    required this.labelText,
    this.noIcon = true,
    this.onChanged,
    this.keyboardType = TextInputType.text, // Default to text if not specified
  });

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  bool isObsecure = false;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: isObsecure,
      onChanged: widget.onChanged,
      controller: widget.controller,
      keyboardType: widget.keyboardType,
      decoration: InputDecoration(
        suffixIconColor: const Color(0xFFFFA261),
        suffixIcon: widget.noIcon
            ? null
            : IconButton(
          onPressed: () {
            setState(() {
              isObsecure = !isObsecure;
            });
          },
          icon: Icon(
            isObsecure ? Icons.visibility : Icons.visibility_off_sharp,
          ),
        ),
        labelText: widget.labelText,
        contentPadding: const EdgeInsets.all(15),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(
            color: Colors.grey[200]!,
          ),
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(
            color: Colors.grey[200]!,
          ),
        ),
      ),
    );
  }
}
