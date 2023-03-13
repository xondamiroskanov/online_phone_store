import 'package:flutter/material.dart';
import 'package:online_phone_store/models/accessories_model.dart';

import '../models/accessories_main_model.dart';

class PhoneCategory extends StatelessWidget {
  final double height;
  final AccessoriesModel accessoriesModel;
  final List<MainAccessoriesModel> categoryAccessoriesId;

  const PhoneCategory({
    Key? key,
    required this.height,
    required this.accessoriesModel,
    required this.categoryAccessoriesId,
  }) : super(key: key);

  void accessoriesCategoryPage(BuildContext context) {
    Navigator.pushNamed(context, "/accessoriesCategoryPage", arguments: {
      "accessorires": categoryAccessoriesId,
      "accessoriesModel": accessoriesModel.title,
    });
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        accessoriesCategoryPage(context);
      },
      child: Container(
        margin: EdgeInsets.all(4),
        child: ClipRRect(
          borderRadius: BorderRadius.all(
            Radius.circular(
              20,
            ),
          ),
          child: Stack(
            children: [
              Container(
                width: double.infinity,
                child: Image.asset(
                  accessoriesModel.image,
                  height: height * 0.4,
                  fit: BoxFit.cover,
                ),
              ),
              Container(
                color: Colors.black45.withOpacity(0.3),
              ),
              Positioned(
                top: 20,
                left: 20,
                child: Text(
                  accessoriesModel.title,
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      color: Colors.white),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
