import 'package:flutter/material.dart';
import 'package:tutorial/themes/colors.dart';
import 'package:tutorial/themes/text_styles.dart';

class WebScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Icon(Icons.web, size: 72, color: primary),
          const SizedBox(height: 02),
          Text('Web Screen', style: TextStyles.text20_600.copyWith(color: primary)),
        ],
      ),
    );
  }
}
