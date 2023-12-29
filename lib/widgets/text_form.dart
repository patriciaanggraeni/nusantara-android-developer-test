import 'package:flutter/material.dart';
import 'package:nusantara_android_developer_test/utils/util.dart';

class CustomTextFormField extends StatefulWidget {
  const CustomTextFormField({
    super.key, 
    required this.icon, 
    required this.hint,
    required this.controller,
  });

  final String hint;
  final IconData icon;
  final TextEditingController controller;

  @override
  State<CustomTextFormField> createState() => _CustomTextFormFieldState();
}

class _CustomTextFormFieldState extends State<CustomTextFormField> {
  bool _isObscure = true;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: TextFormField(
            controller: widget.controller,
            obscureText: widget.hint == "Password" ? _isObscure : false,
            decoration: InputDecoration(
              hintText: widget.hint,
              hintMaxLines: 1,
              hintStyle: Util.myTextStyle(
                color: Colors.grey,
                size: 15,
              ),
              prefixIcon: Icon(widget.icon),
              suffixIcon: iconToggle(),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: const BorderSide(
                  color: Colors.black38,
                ),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: const BorderSide(
                  color: Colors.blue,
                ),
              ),
            ),
            style: Util.myTextStyle(size: 15,),
          ),
        ),
      ],
    );
  }

  Widget iconToggle() {
    Widget icon = const SizedBox();

    if (widget.hint == "Password") {
      if (_isObscure) {
        icon = const Icon(
          Icons.visibility,
          color: Colors.grey,
        );
      } else {
        icon = const Icon(
          Icons.visibility_off,
           color: Colors.grey,
        );
      }
    }
    return IconButton(
      onPressed: () {
        setState(() {
          _isObscure = !_isObscure;
        });
      }, 
      icon:icon,
    );
  }
}