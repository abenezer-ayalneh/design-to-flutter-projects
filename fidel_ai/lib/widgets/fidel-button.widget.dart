import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

enum FidelButtonType {
  primary,
  secondary,
}

class FidelButton extends StatelessWidget {
  const FidelButton({
    Key? key,
    required this.onTap,
    required this.text,
    this.buttonType = FidelButtonType.primary,
  }) : super(key: key);

  final void Function()? onTap;
  final FidelButtonType buttonType;
  final String text;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(15.sp),
      child: Ink(
        height: 52.sp,
        width: double.infinity,
        decoration: BoxDecoration(
          color: buttonType == FidelButtonType.primary
              ? Theme.of(context).colorScheme.primary
              : Theme.of(context).colorScheme.secondary,
          borderRadius: BorderRadius.circular(15.sp),
        ),
        child: Container(
          height:double.infinity,
          width: double.infinity,
          alignment: Alignment.center,
          child: Text(
            text,
            style: Theme.of(context).textTheme.bodyLarge,
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
