import 'package:flutter/material.dart';

class Custombutton extends StatelessWidget {
  const Custombutton({super.key, required this.label, required this.onPressed});
  final String label;
  final void Function() onPressed;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 50,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Color(0xFF3883A9),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(13),
          ),
        ),
        onPressed: onPressed,
        child: Text(label,
            style: const TextStyle(color: Colors.white, fontSize: 20)

            // const Text(
            //   'Login',
            //   style: TextStyle(color: Colors.white, fontSize: 20
            // ),
            ),
      ),
    );
  }
}
