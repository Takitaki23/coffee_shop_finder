import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DetailHeader extends StatelessWidget {
  final String title;

  const DetailHeader({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 25),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.of(context).pop();
                },
                child: SvgPicture.asset('assets/icons/chevron-left.svg'),
              ),
              const Text(
                'Details',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SvgPicture.asset('assets/icons/bookmark.svg'),
            ],
          ),
          const SizedBox(height: 25),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: const TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 5),
              const Text(
                'Coffe from the heart',
                style: TextStyle(
                  color: Colors.black38,
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(height: 20),
              Row(
                children: [
                  Stack(
                    clipBehavior: Clip.none,
                    children: [
                      Positioned(
                        child: Image.asset('assets/images/review1.png'),
                      ),
                      Positioned(
                        left: 30,
                        child: Image.asset('assets/images/review2.png'),
                      ),
                      Positioned(
                        left: 60,
                        child: Image.asset('assets/images/review3.png'),
                      ),
                      Positioned(
                        left: 90,
                        child: Image.asset('assets/images/review4.png'),
                      ),
                    ],
                  ),
                  const SizedBox(width: 100),
                  const Text(
                    '204 Reviewers',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
