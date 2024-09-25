import 'package:flutter/material.dart';
import 'package:tutorial/themes/colors.dart';
import 'package:tutorial/themes/text_styles.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Icon(Icons.web, size: 72, color: primary),
          const SizedBox(height: 02),
          Text('Home Screen', style: TextStyles.text20_600.copyWith(color: primary)),
        ],
      ),
    );
  }
}
