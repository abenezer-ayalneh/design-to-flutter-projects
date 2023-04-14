import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class EducationOrGameOnboardingPage extends StatelessWidget {
  const EducationOrGameOnboardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Center(child: Text('Education or Game')),
      ),
    );
  }
}
