import 'package:flutter/material.dart';

import '../models/accessories_main_model.dart';

class ListViewCategory extends StatelessWidget {
  final MainAccessoriesModel mainAccessoriesModel;
  final Function isFavorite;
  final Function chooseFavoriteBool;

  const ListViewCategory(
      {Key? key,
      required this.mainAccessoriesModel,
      required this.isFavorite,
      required this.chooseFavoriteBool})
      : super(key: key);

  void carouselAccessoiresPage(
    BuildContext context,
  ) {
    Navigator.pushNamed(context, "/carouselAccessoiresPage",
        arguments: mainAccessoriesModel);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InkWell(
          onTap: () {
            carouselAccessoiresPage(
              context,
            );
          },
          child: Stack(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Container(
                  child: mainAccessoriesModel.images[0].startsWith("assets/")
                      ? Image.asset(
                          mainAccessoriesModel.images[0],
                          fit: BoxFit.cover,
                        )
                      : Image.network(mainAccessoriesModel.images[0]),
                ),
              ),
              Container(
                color: Colors.black45.withOpacity(0.3),
              ),
              Positioned(
                bottom: 0,
                right: 0,
                child: Container(
                  padding: EdgeInsets.symmetric(vertical: 4, horizontal: 32),
                  decoration: BoxDecoration(
                      borderRadius:
                          BorderRadius.only(topLeft: Radius.circular(12)),
                      color: Colors.black45.withOpacity(0.3)),
                  child: Text(
                    mainAccessoriesModel.name,
                    style: const TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 22,
                        color: Colors.white),
                  ),
                ),
              )
            ],
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
              onPressed: () {
                isFavorite(mainAccessoriesModel.id);
              },
              icon: Icon(
                chooseFavoriteBool(mainAccessoriesModel.id)
                    ? Icons.favorite_outlined
                    : Icons.favorite_outline,
                color: Colors.black38,
              ),
            ),
            Text(
              mainAccessoriesModel.country,
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black54),
            ),
            Text(
              mainAccessoriesModel.price,
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black54),
            )
          ],
        )
      ],
    );
  }
}
