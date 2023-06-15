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
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: SectionTitle(),
            ),
            const SizedBox(height: 15),
            PhotoList(),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: DetailInfo(
                title: 'Description',
                description:
                    'Welcome to our cozy coffee shop, a haven for coffee enthusiasts and connoisseurs alike. Indulge in the rich aroma of freshly brewed coffee as you step into our inviting space.',
              ),
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: DetailInfo(
                title: 'Location',
                description: '${widget.location}\n km away from your location.',
              ),
            ),
            const SizedBox(height: 20),
            DetailFooter(),
          ],
        ),
      ),
    );
  }
}
