import 'package:flutter/material.dart';
import 'package:online_phone_store/widgets/drawer_widget.dart';

import '../models/accessories_main_model.dart';

class AllAccessoriesPage extends StatefulWidget {
  List<MainAccessoriesModel> mainAccessoriesModelList;
  final Function deleteIdItem;

  AllAccessoriesPage(
      {Key? key,
      required this.mainAccessoriesModelList,
      required this.deleteIdItem})
      : super(key: key);

  @override
  State<AllAccessoriesPage> createState() => _AllAccessoriesPageState();
}

class _AllAccessoriesPageState extends State<AllAccessoriesPage> {
  void newAddAccPage() {
    Navigator.pushNamed(context, "/newAddAccessoriesPage");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {
              newAddAccPage();
            },
            icon: Icon(
              Icons.add,
            ),
          ),
        ],
        title: Text("Barcha Aksessurlar"),
      ),
      body: ListView.builder(
          itemCount: widget.mainAccessoriesModelList.length,
          itemBuilder: (BuildContext context, int index) {
            return ListTile(
              leading: CircleAvatar(
                  radius: 36,
                  backgroundImage: widget
                          .mainAccessoriesModelList[index].images[0]
                          .startsWith("assets/")
                      ? AssetImage(
                          widget.mainAccessoriesModelList[index].images[0],
                        )
                      : NetworkImage(
                          widget.mainAccessoriesModelList[index].images[0],
                        ) as ImageProvider),
              title: Text(
                widget.mainAccessoriesModelList[index].name,
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
              ),
              subtitle: Text(widget.mainAccessoriesModelList[index].price),
              trailing: IconButton(
                  onPressed: () {

                      widget.deleteIdItem(
                          widget.mainAccessoriesModelList[index].id);

                  },
                  icon: Icon(Icons.delete)),
            );
          }),
      drawer: DrawerWidget(),
    );
  }
}
