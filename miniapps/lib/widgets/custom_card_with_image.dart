import 'package:flutter/material.dart';

class CustomCardWithImage extends StatelessWidget {
  final String routeName;
  final String image;
  final String cardText;
  final String heroTag;
  final double width;
  final double height;
  final bool isAsset;

  const CustomCardWithImage({
    super.key,
    required this.routeName,
    required this.image,
    required this.cardText,
    required this.heroTag,
    this.width = double.infinity,
    this.height = 275,
    this.isAsset = true,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, routeName);
      },
      child: SizedBox(
        width: width,
        height: height,
        child: Card(
          elevation: 10,
          margin: EdgeInsets.zero,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20)),
          child: Column(
            children: [
              Hero(
                tag: heroTag,
                child: ClipRRect(
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20),
                    ),
                    child: isAsset
                    ? Image.asset(
                      image,
                      height: 225,
                      width: double.infinity,
                      fit: BoxFit.cover,
                    )
                    : Image.asset(
                      image,
                      height: 225,
                      width: double.infinity,
                      fit: BoxFit.cover,
                    )),
              ),
              const SizedBox(height: 5),
              Text(
                cardText,
                style: const TextStyle(fontSize: 20),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
