import 'package:flutter/material.dart';

class TextInput extends StatefulWidget {
  final TextEditingController? controller;
  final TextInputType? keyboardType;
  final Color? textColor;
  final String? hintText;
  final String? Function(String)? validator;
  final VoidCallback? iconAction;
  final String? labelText;
  final Color? labelTextColor;
  final double? labelFontSize;
  final Color? borderColor;
  final Color? focusedBorderColor;
  final Widget? prefixWidget;
  final IconData? icon;
  final double? hintTextSize;
  final bool? isPassword;
  final EdgeInsetsGeometry? contentPadding;

  TextInput(
      {@required this.controller,
      this.keyboardType = TextInputType.text,
      this.validator,
      this.labelFontSize,
      this.hintTextSize,
      this.hintText,
      this.labelTextColor,
      this.prefixWidget,
      this.icon,
      this.borderColor,
      this.focusedBorderColor,
      this.isPassword,
      this.iconAction,
      this.labelText = '',
      this.textColor,
      this.contentPadding});

  @override
  _TextInputState createState() => _TextInputState();
}

class _TextInputState extends State<TextInput> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          const EdgeInsets.only(top: 5.0, bottom: 5.0, right: 15, left: 15.0),
      child: Container(
        child: TextField(
          obscureText: this.widget.isPassword!,
          controller: this.widget.controller,
          keyboardType: this.widget.keyboardType,
          style: TextStyle(color: this.widget.textColor, fontSize: 16),
          decoration: InputDecoration(
              labelText: this.widget.labelText ?? null,
              labelStyle: TextStyle(
                  color: this.widget.labelTextColor,
                  fontSize: this.widget.labelFontSize,
                  letterSpacing: 0.0),
              hintText: this.widget.hintText ?? null,
              isDense: true,
              hintStyle: TextStyle(
                  color: Colors.grey,
                  // letterSpacing: hintTextSpacing,
                  fontSize: this.widget.hintTextSize ?? 12.0),

              // helperText: (helperText != null) ? helperText : null,
              // helperStyle: (helperTextColor != null)
              //   ? TextStyle(color: helperTextColor)
              // : null,
              prefix: this.widget.prefixWidget ?? null,
              suffixIcon: InkWell(
                child: Icon(this.widget.icon,
                    size: 25,
                    color:
                        this.widget.isPassword! ? Colors.grey : Colors.black),
                onTap: this.widget.iconAction,
              ),
              enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                      color: this.widget.borderColor ?? Colors.black)),
              focusedBorder: UnderlineInputBorder(
                  borderSide:
                      BorderSide(color: this.widget.focusedBorderColor!)),
              contentPadding: this.widget.contentPadding ?? EdgeInsets.all(0)),
        ),
      ),
    );
  }
}
