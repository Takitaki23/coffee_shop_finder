import 'package:coffee_shop_finder/components/home/home_header.dart';
import 'package:coffee_shop_finder/components/home/search_bar.dart';
import 'package:coffee_shop_finder/components/home/section_title.dart';
import 'package:coffee_shop_finder/components/home/suggestion_list.dart';
import 'package:coffee_shop_finder/components/home/trending_list.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: const [
            HomeHeader(),
            SizedBox(height: 20),
            SearchBar(),
            SizedBox(height: 20),
            SectionTitle(title: 'Trending'),
            SizedBox(height: 20),
            TrendingList(),
            SizedBox(height: 25),
            SectionTitle(title: 'Suggestion'),
            SizedBox(height: 20),
            SuggestionList(),
          ],
        ),
      ),
    );
  }
}
