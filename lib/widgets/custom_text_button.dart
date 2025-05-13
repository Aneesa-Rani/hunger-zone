import 'package:flutter/material.dart';

class CustomTextButton extends StatefulWidget {
  final String text;
  final VoidCallback onPressed;
  final bool isDisabled;
  final bool isOutlined;

  const CustomTextButton({
    super.key,
    required this.text,
    required this.onPressed,
    required this.isDisabled,
    required this.isOutlined,
  });

  @override
  State<CustomTextButton> createState() => _CustomTextButtonState();
}

class _CustomTextButtonState extends State<CustomTextButton> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: widget.isDisabled ? null : widget.onPressed,
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.symmetric(vertical: 18),
        decoration: BoxDecoration(
          color: widget.isOutlined
              ? Colors.transparent
              : (widget.isDisabled ? Colors.grey[400] : const Color(0xFFFFA261)),
          borderRadius: BorderRadius.circular(8),
          border: widget.isOutlined
              ? Border.all(
            color: widget.isDisabled ? Colors.grey : const Color(0xFFFFA261),
            width: 2,
          )
              : null,
        ),
        child: Center(
          child: Text(
            widget.text,
            textAlign: TextAlign.center,
            style: TextStyle(
              color: widget.isOutlined
                  ? (widget.isDisabled ? Colors.grey : const Color(0xFFFFA261))
                  : Colors.white,
              fontSize: 15,
            ),
          ),
        ),
      ),
    );
  }
}
