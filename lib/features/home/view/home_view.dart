import 'package:flutter/material.dart';
import 'package:movix/features/home/widgets/home_caregories_section.dart';
import 'package:movix/features/home/widgets/most_searched_section.dart';
import 'package:movix/features/home/widgets/search_section.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(), //textfieldلما ادوس علي اي حتة في الشاشة الكيبورد يتشال من
        child: Scaffold(
          body: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child:CustomScrollView(
              slivers: [
                SliverToBoxAdapter(
                  child: SearchSection(),
                ),
                SliverToBoxAdapter(
                  child: HomeCaregoriesSection(),
                ),
                SliverToBoxAdapter(
                  child: MostSearchedSection(),
                ),
              ],
            )
          ),
        ),
      ),
    );
  }
}
