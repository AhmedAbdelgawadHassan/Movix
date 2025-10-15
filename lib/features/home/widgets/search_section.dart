// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:movix/shared/customText.dart';

class SearchSection extends StatelessWidget {
   SearchSection({super.key});
   String? searchText;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Gap(25),
        Customtext(text: 'Search for a content', fontSize: 20),
        Gap(15),
        Container(
          height: 65,
          padding: EdgeInsets.all(1),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(24),
            gradient: LinearGradient(
              colors: [Colors.cyan, Colors.blue, Colors.purple],
            ),
          ),
          child: Container(
            // a container inside container to make a multi color border
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.circular(24),
            ),
            child: TextField(
              style: TextStyle(color: Colors.white),
              decoration: InputDecoration(
                hintText: 'Search for a content',
                hintStyle: TextStyle(color: Color(0xff6B6B6B),fontWeight: FontWeight.bold),
                focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(24)),
                enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(24)),
              ),
              onChanged: (value) {
                searchText=value;      // text that writted in TextField
                // print(searchText);
              },
            ),
          ),
        ),
      ],
    );
  }
}
