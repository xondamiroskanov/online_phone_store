import 'package:flutter/material.dart';
import 'package:online_phone_store/pages/accessories_category_page.dart';
import 'package:online_phone_store/widgets/list_view_category.dart';

import '../models/accessories_main_model.dart';

class FavoritePage extends StatefulWidget {
  final Function isFavoriteId;
  final List<MainAccessoriesModel> mainAccessoriesFavorite;
  final Function chooseFavoriteBool;

  const FavoritePage(
      {Key? key,
      required this.isFavoriteId,
      required this.mainAccessoriesFavorite,
      required this.chooseFavoriteBool})
      : super(key: key);

  @override
  State<FavoritePage> createState() => _FavoritePageState();
}

class _FavoritePageState extends State<FavoritePage> {
  void _isFavorite(String foodId) {
    setState(() {
      widget.isFavoriteId(foodId);
    });

    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(
          "Sevimli aksessuar o'chmoqda",
        ),
        action: SnackBarAction(
          label: "Bekor qilish",
          onPressed: () {
            setState(() {
              widget.isFavoriteId(foodId);
            });
          },
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: widget.mainAccessoriesFavorite.length,
        itemBuilder: (BuildContext context, int index) {
          return ListViewCategory(
              mainAccessoriesModel: widget.mainAccessoriesFavorite[index],
              isFavorite: _isFavorite,
              chooseFavoriteBool: widget.chooseFavoriteBool);
        },
      ),
    );
  }
}
