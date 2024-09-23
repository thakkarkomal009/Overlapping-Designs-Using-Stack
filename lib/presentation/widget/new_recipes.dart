import 'package:custom_rating_bar/custom_rating_bar.dart';
import 'package:flutter/material.dart';

class NewRecipes extends StatelessWidget {
  final String image;
  final String recipeName;
  final double rating;
  final String cookingTime;
  final String servingPeople;

  const NewRecipes({
    super.key,
    required this.image,
    required this.recipeName,
    required this.rating,
    required this.cookingTime,
    required this.servingPeople,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          padding: const EdgeInsets.only(top: 20),
          child: Container(
            height: 350,
            margin: const EdgeInsets.only(left: 10, right: 10),
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(20)),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 150,
                  padding: const EdgeInsets.all(10),
                  child: Text(
                    recipeName,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(
                      fontSize: 14,
                      color: Colors.black87,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10.0),
                  child: RatingBar.readOnly(
                    isHalfAllowed: true,
                    size: 18,
                    alignment: Alignment.centerLeft,
                    filledIcon: Icons.star,
                    emptyIcon: Icons.star_border,
                    emptyColor: Colors.redAccent,
                    filledColor: Colors.amberAccent,
                    halfFilledColor: Colors.amberAccent,
                    halfFilledIcon: Icons.star_half,
                    initialRating: rating,
                    maxRating: 5,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8.0, top: 8),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Icon(
                        size: 18,
                        Icons.watch_later_outlined,
                        color: Colors.black38,
                      ),
                      Text(
                        cookingTime,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: const TextStyle(
                          fontSize: 14,
                          color: Colors.black38,
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      const Icon(
                        size: 18,
                        Icons.room_service_outlined,
                        color: Colors.black38,
                      ),
                      Text(
                        servingPeople,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: const TextStyle(
                          fontSize: 14,
                          color: Colors.black38,
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
        Positioned(
          right: 10,
          top: -3,
          child: SizedBox(
            child: Image.asset(
              width: 180,
              height: 120,
              fit: BoxFit.contain,
              image,
            ),
          ),
        ),
      ],
    );
  }
}
