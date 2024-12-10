import 'package:faithcast/models/constants.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class SearchBarSection extends StatefulWidget {
  const SearchBarSection({super.key});

  @override
  State<SearchBarSection> createState() => _SearchBarSectionState();
}

class _SearchBarSectionState extends State<SearchBarSection> {
  @override
  Widget build(BuildContext context) {
    double width_size= MediaQuery.of(context).size.width;
    return Container(
      width: width_size,
      height: 55,
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.black.withOpacity(0.4),
        ),
        borderRadius: BorderRadius.circular(20)
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(width: 10,),
          Text('Search Podcast', style: TextStyle(color: Colors.grey, fontFamily: primaryFont, fontSize: bodytext),),
          Spacer(),
          Icon(Iconsax.search_normal, color: Colors.grey,),
          SizedBox(width: 20,),
        ],
      ),
    );
  }
}
