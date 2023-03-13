import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:online_phone_store/models/accessories_main_model.dart';
import 'package:online_phone_store/models/accessories_model.dart';
import 'package:online_phone_store/pages/accessories_category_page.dart';
import 'package:online_phone_store/pages/all_accessories_page.dart';
import 'package:online_phone_store/pages/carousel_accessories_page.dart';
import 'package:online_phone_store/pages/new_add_acc_page.dart';
import 'package:online_phone_store/widgets/bootom_widget.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  AccessoriesCategory accessoriesCategory = AccessoriesCategory();

  MainAccessoriesModelList mainAccessoriesModelList =
      MainAccessoriesModelList();

  void isFavoriteId(String favoriteId) {
    setState(() {
      mainAccessoriesModelList.isFavoriteId(favoriteId);
    });
  }

  bool chooseFavoriteBool(String favoriteBool) {
    return mainAccessoriesModelList.favorites
        .any((element) => element.id == favoriteBool);
  }

  void newAccAdd(MainAccessoriesModel newAcc) {
    setState(() {
      mainAccessoriesModelList.newAccAdd(newAcc);
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.cyan),
        fontFamily: GoogleFonts.montserrat().fontFamily,
      ),
      initialRoute: "/",
      routes: {
        "/": (context) => BootomWidget(
            accessoriesList: accessoriesCategory.accessoriesList,
            mainAccessoriesModelList:
                mainAccessoriesModelList.mainAccessoriesModelList,
            isFavoriteId: isFavoriteId,
            mainAccessoriesFavorite: mainAccessoriesModelList.favorites,
            chooseFavoriteBool: chooseFavoriteBool),
        "/accessoriesCategoryPage": (context) => AccessoriesCategoryPage(
            accessoriesFeature:
                mainAccessoriesModelList.mainAccessoriesModelList,
            isFavorite: isFavoriteId,
            chooseFavoriteBool: chooseFavoriteBool),
        "/carouselAccessoiresPage": (context) => CarouselAccessoriesPage(),
        "/allAccessoriespage": (context) => AllAccessoriesPage(
            mainAccessoriesModelList:
                mainAccessoriesModelList.mainAccessoriesModelList),
        "/newAddAccessoriesPage": (context) => NewAddAccessoriesPage(
              accessoriesCategory: accessoriesCategory.accessoriesList,
            newAccAdd:newAccAdd
            ),
      },
    );
  }
}
