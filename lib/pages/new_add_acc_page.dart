import 'package:flutter/material.dart';
import 'package:online_phone_store/models/accessories_main_model.dart';
import 'package:online_phone_store/widgets/new_acc_image.dart';

import '../models/accessories_model.dart';

class NewAddAccessoriesPage extends StatefulWidget {
  List<AccessoriesModel> accessoriesCategory;
  final Function newAccAdd;

  NewAddAccessoriesPage(
      {Key? key, required this.accessoriesCategory, required this.newAccAdd})
      : super(key: key);

  @override
  State<NewAddAccessoriesPage> createState() => _NewAddAccessoriesPageState();
}

class _NewAddAccessoriesPageState extends State<NewAddAccessoriesPage> {
  late String accName;

  @override
  void initState() {
    super.initState();
    accName = widget.accessoriesCategory[0].id;
  }

  @override
  Widget build(BuildContext context) {
    TextEditingController _nameAccController = TextEditingController();
    TextEditingController _addDataController = TextEditingController();
    TextEditingController _memoryAccController = TextEditingController();
    TextEditingController _priceDataController = TextEditingController();
    TextEditingController _countryAccController = TextEditingController();
    TextEditingController _ramDataController = TextEditingController();
    TextEditingController _mainImageController = TextEditingController();
    TextEditingController _firstImageController = TextEditingController();
    TextEditingController _secondImageController = TextEditingController();

    void submit() {
      if (_nameAccController.text.isEmpty ||
          _addDataController.text.isEmpty ||
          _priceDataController.text.isEmpty ||
          _countryAccController.text.isEmpty) {
        return;
      }
      final List<String> images = [
        _mainImageController.text,
        _firstImageController.text,
        _secondImageController.text
      ];
      widget.newAccAdd(
        MainAccessoriesModel(
            name: _nameAccController.text,
            images: images,
            price: _priceDataController.text,
            country: _countryAccController.text,
            id: UniqueKey().toString(),
            memory: _memoryAccController.text,
            ram: _ramDataController.text,
            categoryId: accName,
            additionalInformation: _addDataController.text),
      );
      Navigator.pop(context);
    }

    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Aksessuar qo'shish",
          style: TextStyle(color: Colors.white),
        ),
        actions: [
          IconButton(
            onPressed: () {
              submit();
            },
            icon: Icon(
              Icons.save_alt,
              color: Colors.white,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: EdgeInsets.all(14),
            child: Column(
              children: [
                Container(
                  height: 50,
                  width: double.infinity,
                  child: DropdownButton(
                      isExpanded: true,
                      borderRadius: BorderRadius.circular(12),
                      value: accName,
                      items: widget.accessoriesCategory
                          .map((e) => DropdownMenuItem(
                                child: Text(
                                  e.title,
                                ),
                                value: e.id,
                              ))
                          .toList(),
                      onChanged: (value) {
                        setState(() {
                          accName = value as String;
                        });
                      }),
                ),
                TextField(
                  controller: _nameAccController,
                  decoration:
                      InputDecoration(hintText: "Aksessuar nomini kiriting"),
                ),
                TextField(
                  controller: _addDataController,
                  maxLines: 4,
                  decoration: InputDecoration(
                      hintText: "Aksessuar uchun qo'shimcha ma'lumot kiriting"),
                ),
                TextField(
                  controller: _memoryAccController,
                  decoration: InputDecoration(
                      hintText: "Aksessuar xotirasini kiriting"),
                ),
                TextField(
                  controller: _priceDataController,
                  decoration:
                      InputDecoration(hintText: "Aksessuar narxini kiriting"),
                ),
                TextField(
                  controller: _countryAccController,
                  decoration: InputDecoration(
                      hintText: "Aksessuar ishlab chiqilgan davlatni kiriting"),
                ),
                TextField(
                  controller: _ramDataController,
                  decoration: InputDecoration(
                      hintText: "Aksessuar tezkor xotirasini (ram) kiriting"),
                ),
                NewAccImage(
                  imageController: _mainImageController,
                ),
                NewAccImage(
                  imageController: _firstImageController,
                ),
                NewAccImage(
                  imageController: _secondImageController,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
