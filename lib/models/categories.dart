import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:instagram_app/constants/constants.dart';
import 'package:instagram_app/models/category.dart';

class Categories extends StatelessWidget {
  const Categories({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
          children: List.generate(
        demo_categories.length,
        (index) => Padding(
          padding: const EdgeInsets.only(right: defaultPadding),
          child: CategoryCard(
            icon: demo_categories[index].icons,
            title: demo_categories[index].title,
            press: () {},
          ),
        ),
      )),
    );
  }
}

class CategoryCard extends StatelessWidget {
  const CategoryCard({
    Key? key,
    required this.icon,
    required this.title,
    required this.press,
  }) : super(key: key);
  final String icon, title;
  final VoidCallback press;
  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
        onPressed: press,
        style: OutlinedButton.styleFrom(
            shape: const RoundedRectangleBorder(
                borderRadius:
                    BorderRadius.all(Radius.circular(defaultBorderRadius)))),
        child: Padding(
          padding: const EdgeInsets.symmetric(
              horizontal: defaultPadding / 4, vertical: defaultPadding / 2),
          child: Column(
            children: [
              SvgPicture.asset(
                icon,
              ),
              const SizedBox(
                height: defaultPadding / 2,
              ),
              Text(
                "Dress",
                style: Theme.of(context).textTheme.subtitle2,
              )
            ],
          ),
        ));
  }
}
