import 'package:flutter/material.dart';

class DmTextField extends StatelessWidget {
  final Function(String)? onChanged;
  final String? label;
  final String? errorText;
  final bool? isSecret;

  const DmTextField({super.key, this.onChanged, this.label, this.errorText, this.isSecret});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      width: MediaQuery.sizeOf(context).width * 0.9,
      child: TextFormField(
        onChanged: onChanged,
        obscureText: isSecret ?? false,
        decoration: InputDecoration(
          labelText: label,
          errorText: errorText,
          errorStyle: const TextStyle(color: Colors.red, letterSpacing: 0.2),
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
          focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(20), borderSide: const BorderSide(color: Colors.white)),
          disabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
          focusedErrorBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(20), borderSide: const BorderSide(color: Colors.red)),
          errorBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(20), borderSide: const BorderSide(color: Colors.red)),
        ),
      ),
    );
  }
}
