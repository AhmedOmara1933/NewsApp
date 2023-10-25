import 'package:flutter/material.dart';

// ignore: must_be_immutable
class DefaultTextFormField extends StatelessWidget {
  String? text;
  IconData? prefixicon;
  String? Function(String?)? validate;
  void Function()? onTap;
  TextEditingController? controller;
  void Function(String)?onChanged;

  DefaultTextFormField({
    super.key,
    this.onChanged,
    required this.text,
    required this.prefixicon,
    required this.validate,
    this.onTap,
    this.controller,
  });

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(
        border: const OutlineInputBorder(),
        hintText: text,
        prefixIcon: Icon(
          prefixicon,
        ),
      ),
      onChanged:onChanged,
      validator: validate,
      onTap: onTap,
    );
  }
}