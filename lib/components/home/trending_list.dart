import 'package:flutter/material.dart';
import 'package:coffee_shop_finder/screens/detail_screen.dart';

import '../../dummy.dart';

class TrendingList extends StatelessWidget {
  const TrendingList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 346,
      width: double.infinity,
      margin: const EdgeInsets.only(left: 30),
      child: ListView.builder(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemCount: trending.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(right: 25),
            child: GestureDetector(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => DetailScreen(
                      title: trending[index]['title'],
                      location: trending[index]['subtitle'],
                    ),
                  ),
                );
              },
              child: Stack(
                children: [
                  SizedBox(
                    height: 346,
                    width: 245,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Image.asset(
                        trending[index]['imageUrl'],
                        fit: BoxFit.cover,
                        color: Colors.black.withOpacity(0.1),
                        colorBlendMode: BlendMode.darken,
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 30,
                    left: 20,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          trending[index]['title'],
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          trending[index]['subtitle'],
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
