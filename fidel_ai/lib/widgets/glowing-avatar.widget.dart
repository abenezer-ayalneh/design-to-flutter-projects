import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class GlowingAvatarWidget extends StatefulWidget {
  const GlowingAvatarWidget({Key? key, required this.avatar}) : super(key: key);
  final Image avatar;

  @override
  State<GlowingAvatarWidget> createState() => _GlowingAvatarWidgetState();
}

class _GlowingAvatarWidgetState extends State<GlowingAvatarWidget> {
  bool isSelected = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 63.sp,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        boxShadow: [
          BoxShadow(
            color: isSelected
                ? Theme.of(context).colorScheme.primary
                : Theme.of(context).colorScheme.secondary,
            blurRadius: 12.sp,
            spreadRadius: 4.sp,
            offset: const Offset(0, 0),
            blurStyle: BlurStyle.outer,
          ),
        ],
      ),
      child: widget.avatar,
    );
  }
}
