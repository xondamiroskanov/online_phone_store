import 'package:flutter/material.dart';
import 'package:online_phone_store/pages/favorites_page.dart';
import 'package:online_phone_store/pages/home_page.dart';
import 'package:online_phone_store/widgets/drawer_widget.dart';

import '../models/accessories_main_model.dart';
import '../models/accessories_model.dart';

class BootomWidget extends StatefulWidget {
  final List<AccessoriesModel> accessoriesList;
  final List<MainAccessoriesModel> mainAccessoriesModelList;
  final List<MainAccessoriesModel> mainAccessoriesFavorite;
  final Function isFavoriteId;
  final Function chooseFavoriteBool;

  BootomWidget(
      {Key? key,
      required this.accessoriesList,
      required this.mainAccessoriesModelList,
      required this.isFavoriteId,
      required this.mainAccessoriesFavorite,
      required this.chooseFavoriteBool})
      : super(key: key);

  @override
  State<BootomWidget> createState() => _BootomWidgetState();
}

class _BootomWidgetState extends State<BootomWidget> {
  int activBottomIndex = 0;
  List pages = [];

  @override
  void initState() {
    super.initState();
    pages = [
      HomePage(
          accessoriesList: widget.accessoriesList,
          mainAccessoriesModelList: widget.mainAccessoriesModelList),
      FavoritePage(
          isFavoriteId: widget.isFavoriteId,
          mainAccessoriesFavorite: widget.mainAccessoriesFavorite,
          chooseFavoriteBool: widget.chooseFavoriteBool)
    ];
  }

  String accTitle() {
    if (activBottomIndex == 0) {
      return "Aksesuarlar";
    } else {
      return "Sevimlilar";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(accTitle())),
      drawer: DrawerWidget(),
      body: pages[activBottomIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: activBottomIndex,
        onTap: (int index) {
          setState(() {
            activBottomIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.more_horiz,
              ),
              label: "Aksessuarlar"),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.favorite_outline,
              ),
              label: "Sevimlilar"),
        ],
      ),
    );
  }
}
