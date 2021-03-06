import 'package:flutter/material.dart';
import 'package:flutter/services.dart';


class CustomTextField extends StatefulWidget {
  final String? hint;
  final ValueChanged<String>? onChanged;
  final bool headerLess;
  final TextEditingController? textEditingController;
  final int lines;
  final bool readOnly;
  final bool obscureText;
  final Widget? prefix;
  final TextInputType? keyboardType;
  final List<TextInputFormatter>? inputFormatters;
  final FocusNode? focusNode;
  final Widget? suffix;
  final TextInputAction textInputAction;
  final Border? border;
  final Color? backgroundColor;
  final String? prefixText;
  final BorderRadius? radius;
  final TextStyle? hintstyle;

  const CustomTextField({
    Key? key,
    this.hint,
    this.onChanged,
    this.headerLess = false,
    this.textEditingController,
    this.lines = 1,
    this.readOnly = false,
    this.obscureText = false,
    this.prefix,
    this.keyboardType,
    this.inputFormatters,
    this.focusNode,
    this.radius,
    this.suffix,
    this.hintstyle,
    this.textInputAction = TextInputAction.done,
    this.border,
    this.backgroundColor,
    this.prefixText,
  }) : super(key: key);

  @override
  _CustomTextFieldState createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  @override
  void initState() {
    _node = widget.focusNode ?? FocusNode();
    super.initState();
  }

  FocusNode? _node;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).requestFocus(_node);
      },
      child: Container(
        padding: const EdgeInsets.symmetric(
          horizontal: 5,
          vertical: 2,
        ),
        child: Row(
          children: [
            Expanded(
              child: TextFormField(
                focusNode: _node,
                cursorColor: Colors.black87,
                readOnly: widget.readOnly,
                onChanged: widget.onChanged,
                textInputAction: widget.textInputAction,
                obscureText: widget.obscureText,
                keyboardType: widget.keyboardType,
                controller: widget.textEditingController,
                inputFormatters: widget.inputFormatters,
                maxLines: widget.obscureText ? 1 : (widget.lines),
                minLines: widget.obscureText ? 1 : (widget.lines),
                style: const TextStyle(
                  fontWeight: FontWeight.w600,
                  color:Colors.black,
                  fontSize: 14,
                ),
                decoration: InputDecoration(
                  prefix: widget.prefix ?? const SizedBox(width: 15),
                  suffix: widget.suffix ?? const SizedBox(),
                  focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: Color(0xffFFC08A),),
                    borderRadius: BorderRadius.circular(16),
                  ),
                  filled: true,
                  fillColor:const Color(0xffF9FAFB),
                  prefixText: widget.prefixText,
                  prefixStyle: const TextStyle(
                    fontWeight: FontWeight.w600,
                    color: Colors.black,
                    fontSize: 14,
                  ),
                  border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.circular(16),
                  ),
                  labelStyle: const TextStyle(
                    color: Colors.grey,
                  ),
                  label: Text(
                    widget.hint ?? '',
                  ),
                  hintStyle:widget.hintstyle,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
