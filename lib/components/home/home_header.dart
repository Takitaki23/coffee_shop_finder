import 'package:flutter/material.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: const [
                  Icon(
                    Icons.coffee,
                    size: 20,
                    color: Colors.black,
                  ),
                  SizedBox(width: 6),
                  Text(
                    'Coffee Shop Finder',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1.5,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
              IconButton(
                icon: Icon(
                  Icons.notifications,
                  size: 20,
                  color: Colors.black,
                ),
                onPressed: () {
                  // Add notification functionality here
                },
              ),
            ],
          ),
          SizedBox(height: 20),
          Text(
            'Discover',
            style: TextStyle(
              fontSize: 32,
              fontWeight: FontWeight.w700,
              color: Colors.black,
            ),
          ),
          Text(
            'Amazing Coffee Shops',
            style: TextStyle(
              fontSize: 32,
              fontWeight: FontWeight.w800,
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}
