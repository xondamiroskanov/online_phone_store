import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:online_phone_store/models/accessories_main_model.dart';
import 'package:online_phone_store/widgets/accessories_feature.dart';

class CarouselAccessoriesPage extends StatefulWidget {
  CarouselAccessoriesPage({Key? key}) : super(key: key);

  @override
  State<CarouselAccessoriesPage> createState() =>
      _CarouselAccessoriesPageState();
}

class _CarouselAccessoriesPageState extends State<CarouselAccessoriesPage> {
  int activImage = 0;

  @override
  Widget build(BuildContext context) {
    final accessoriesfeature =
        ModalRoute.of(context)!.settings.arguments as MainAccessoriesModel;
    return Scaffold(
      appBar: AppBar(
        title: Text(accessoriesfeature.name),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Card(
              elevation: 8,
              child: CarouselSlider(
                options: CarouselOptions(
                    initialPage: activImage,
                    onPageChanged: (index, reason) {
                      setState(() {
                        activImage = index;
                      });
                    },
                    viewportFraction: 1,
                    height: 400.0),
                items: accessoriesfeature.images.map((i) {
                  return Builder(
                    builder: (BuildContext context) {
                      return Container(
                        width: MediaQuery.of(context).size.width,
                        margin: EdgeInsets.symmetric(horizontal: 5.0),
                        decoration: BoxDecoration(color: Colors.white),
                        child: i.startsWith("assets/")
                            ? Image.asset(
                                i,
                                fit: BoxFit.cover,
                              )
                            : Image.network(
                                i,
                                fit: BoxFit.cover,
                              ),
                      );
                    },
                  );
                }).toList(),
              ),
            ),
            Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: accessoriesfeature.images.map((e) {
                  final activImageIndex = accessoriesfeature.images.indexOf(e);
                  return Container(
                    margin: EdgeInsets.all(6),
                    height: 10,
                    width: 10,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey),
                        color: activImage == activImageIndex
                            ? Colors.black.withOpacity(0.5)
                            : Colors.black26,
                        shape: BoxShape.circle),
                  );
                }).toList()),
            Center(
              child: Text(
                "${accessoriesfeature.price} \$",
                style: TextStyle(
                  fontSize: 24,
                  color: Colors.black54,
                ),
              ),
            ),
            AccessoriesFeaturePage(accessoriesfeature: accessoriesfeature)
          ],
        ),
      ),
    );
  }
}
