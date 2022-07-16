import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final bool expanded;
  final String text;
  final Color? color;
  final VoidCallback onPressed;
  final Color? textColor;
  final EdgeInsets? padding;
  final bool Function()? validator;
  final double? width;
  final BorderRadius? radius;
  final bool? isLoading;

  const CustomButton({
    Key? key,
    this.isLoading,
    this.expanded = false,
    required this.text,
    this.color,
    required this.onPressed,
    this.textColor,
    this.padding,
    this.validator,
    this.width,
    this.radius,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding!,
      child: SizedBox(
        width: width ?? (expanded ? double.maxFinite : null),
        child: ElevatedButton(
          onPressed: (validator == null ? true : validator!()) ? onPressed : null,
          style: ButtonStyle(
            padding: MaterialStateProperty.all(
              const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
            ),
            elevation: MaterialStateProperty.all(0.0),
            backgroundColor: (validator == null ? true : validator!())
                ? MaterialStateProperty.all(color ?? const Color(0xffFFC08A))
                : MaterialStateProperty.all(
                    (color ??const Color(0xffFFC08A)).withOpacity(0.5),
                  ),
            shape: MaterialStateProperty.all(
              RoundedRectangleBorder(
                borderRadius: radius!,
              ),
            ),
          ),
          child:  isLoading??false
              ? const Center(
            child: CupertinoActivityIndicator(
            ),
          )
          :Center(
            child: Text(
              text,
              style: TextStyle(
                color: textColor ?? Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.w700,
                fontFamily: 'SfPro',
                letterSpacing: 0.3,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

