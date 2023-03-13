import 'package:flutter/material.dart';
import 'package:online_phone_store/widgets/list_view_category.dart';

import '../models/accessories_main_model.dart';

class AccessoriesCategoryPage extends StatelessWidget {
  final List<MainAccessoriesModel> accessoriesFeature;
  final Function isFavorite;
  final Function chooseFavoriteBool;

  const AccessoriesCategoryPage({
    Key? key,
    required this.accessoriesFeature,
    required this.isFavorite,
    required this.chooseFavoriteBool,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final categoryData =
        ModalRoute.of(context)!.settings.arguments as Map<String, dynamic>;
    final id = categoryData["accessorires"] as List;
    final categoryTitle = categoryData["accessoriesModel"];
    return Scaffold(
      appBar: AppBar(
        title: Text(categoryTitle),
      ),
      body: Card(
        child: id.length > 0
            ? ListView.builder(
                padding: EdgeInsets.all(10),
                itemCount: id.length,
                itemBuilder: (BuildContext context, int index) {
                  return ListViewCategory(
                    mainAccessoriesModel: id[index],
                    isFavorite: isFavorite,
                    chooseFavoriteBool: chooseFavoriteBool,
                  );
                })
            : const Center(
                child: Text(
                "Bu Akssesuar bo'yicha modellar yoq",
                style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 18,
                    color: Colors.black45),
              )),
      ),
    );
  }
}
