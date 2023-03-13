import 'package:flutter/material.dart';
import 'package:online_phone_store/widgets/accessories.dart';

import '../models/accessories_main_model.dart';
import '../models/accessories_model.dart';

class HomePage extends StatelessWidget {
  final List<AccessoriesModel> accessoriesList;
  final List<MainAccessoriesModel> mainAccessoriesModelList;

  HomePage(
      {Key? key,
      required this.accessoriesList,
      required this.mainAccessoriesModelList})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(8),
        child: GridView.builder(
            itemCount: accessoriesList.length,
            gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 300,
                crossAxisSpacing: 14,
                childAspectRatio: 3 / 3.5),
            itemBuilder: (BuildContext context, int index) {
              final categoryAccessoriesId = mainAccessoriesModelList
                  .where((mainid) =>
                      mainid.categoryId == accessoriesList[index].id)
                  .toList();
              return PhoneCategory(
                height: height,
                accessoriesModel: accessoriesList[index],
                categoryAccessoriesId: categoryAccessoriesId,
              );
            }),
      ),
    );
  }
}
