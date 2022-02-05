import 'package:flutter/material.dart';
import 'package:instagram_app/constants/constants.dart';
import 'package:instagram_app/details/details_screen.dart';
import 'package:instagram_app/screens/home/components/section_title.dart';
import 'package:instagram_app/screens/home/product.dart';
import 'package:instagram_app/screens/home/product_card.dart';

class NewArrival extends StatelessWidget {
  const NewArrival({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SectionTitle(
          title: "NewArrival",
          pressSeeAll: () {},
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: List.generate(
              demo_product.length,
              (index) => Padding(
                padding: const EdgeInsets.only(left: defaultPadding),
                child: ProductCard(
                  image: demo_product[index].image,
                  title: demo_product[index].title,
                  price: demo_product[index].price,
                  bgColor: demo_product[index].bgColor,
                  press: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => DetailsScreen(
                                  product: demo_product[index],
                                )));
                  },
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
