import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  const MyButton({
    super.key,
    this.height,
    this.width,
    this.color,
    required this.textName,
    this.fSize,
    this.fColor,
    this.fontWeight,
    required this.onTap,
  });

  final double? height;
  final double? width;
  final Color? color;
  final String textName;
  final FontWeight? fontWeight;
  final double? fSize;
  final Color? fColor;
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height:height?? 50,
        width: width ?? MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: color ?? Colors.orange,
        ),
        child: Center(
          child: Text(
            "Login",
            style: TextStyle(
              fontWeight: fontWeight ?? FontWeight.normal,
              fontSize: fSize ?? 12,
              color: fColor ?? Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
