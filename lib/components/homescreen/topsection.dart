import 'package:faithcast/models/constants.dart';
import 'package:flutter/material.dart';

class TopSection extends StatefulWidget {
  const TopSection({super.key});

  @override
  State<TopSection> createState() => _TopSectionState();
}

class _TopSectionState extends State<TopSection> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        'Listen the favorite\nPodcast',
        style: TextStyle(
          color: Colors.black,
          fontSize: apptitles,
          fontFamily: primaryFont
        ),
      ),
    );
  }
}
