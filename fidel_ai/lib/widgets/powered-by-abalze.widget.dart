import 'package:flutter/material.dart';

class PoweredByAblazeWidget extends StatelessWidget {
  const PoweredByAblazeWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Text(
      'Powered by Ablaze Labs',
      style: Theme.of(context)
          .textTheme
          .bodySmall
          ?.copyWith(fontWeight: FontWeight.w300),
    );
  }
}
