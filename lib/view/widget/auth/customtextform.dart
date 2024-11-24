import 'package:flutter/material.dart';

class Customtextform extends StatelessWidget {
  const Customtextform(
      {super.key, required this.labeltext, required this.prefixIcon});
  final String labeltext;
  final Widget prefixIcon;
  @override
  Widget build(BuildContext context) {
    return TextField(
        decoration: InputDecoration(
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(13),
      ),
      prefixIcon: prefixIcon,
      // border: OutlineInputBorder(),
      labelText: labeltext,
    ));
  }
}

class PasswordField extends StatefulWidget {
  const PasswordField({super.key, required this.labeltext});
  final String labeltext;

  @override
  _PasswordFieldState createState() => _PasswordFieldState();
}

class _PasswordFieldState extends State<PasswordField> {
  bool _obscureText = true;

  void _toggleVisibility() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: _obscureText,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(13),
        ),
        labelText: widget.labeltext,
        prefixIcon: Icon(Icons.lock),
        suffixIcon: IconButton(
          icon: Icon(
            _obscureText ? Icons.visibility : Icons.visibility_off,
          ),
          onPressed: _toggleVisibility,
        ),
      ),
    );
  }
}
