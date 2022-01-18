import 'package:flutter/material.dart';
import 'package:coffee_shop_finder/components/detail/detail_header.dart';
import 'package:coffee_shop_finder/components/detail/section_title.dart';
import 'package:coffee_shop_finder/components/detail/photo_list.dart';
import 'package:coffee_shop_finder/components/detail/detail_info.dart';
import 'package:coffee_shop_finder/components/detail/detail_footer.dart';

class DetailScreen extends StatefulWidget {
  final String title;
  final String location;

  const DetailScreen({Key? key, required this.title, required this.location})
      : super(key: key);

  @override
  _DetailScreenState createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            DetailHeader(title: widget.title),
            const SizedBox(height: 15),
            const SectionTitle(),
            const SizedBox(height: 15),
            const PhotoList(),
            const SizedBox(height: 20),
            // suggestion text
            const DetailInfo(
              title: 'Description',
              description:
                  'Janji Jiwa adopts a bean-to-cup concept that\nserves a selection of Indonesia Local Coffee.\nwe offer a classic coffee product to our customer.',
            ),
            const SizedBox(height: 20),
            DetailInfo(
              title: 'Location',
              description: '${widget.location}\n4 km away from your location.',
            ),
            const SizedBox(height: 20),
            const DetailFooter(),
          ],
        ),
      ),
    );
  }
}
