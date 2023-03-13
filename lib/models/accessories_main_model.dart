class MainAccessoriesModel {
  final String name;
  final List<String> images;
  final String price;
  final String country;
  final String id;
  final String memory;
  final String ram;
  final String categoryId;
  final String additionalInformation;

  MainAccessoriesModel(
      {required this.name,
      required this.images,
      required this.price,
      required this.country,
      required this.id,
      required this.memory,
      required this.ram,
      required this.categoryId,
      required this.additionalInformation});
}

class MainAccessoriesModelList {
  List<MainAccessoriesModel> _mainAccessoriesModelList = [
    MainAccessoriesModel(
        name: "iphone 8",
        images: [
          "assets/images/iphone0.jpg",
          "assets/images/iphone1.jpg",
          "assets/images/iphone2.jpg",
        ],
        price: "\$ 200",
        country: "Germanya",
        id: "b1",
        memory: "128",
        ram: "4",
        categoryId: "a1",
        additionalInformation:
            "Yili 2019, Hamma joyi soz \nyomks 88 %, telefon Toshkentda"),
    MainAccessoriesModel(
        name: "iphone 12",
        images: [
          "assets/images/iphone1.jpg",
          "assets/images/iphone0.jpg",
          "assets/images/iphone2.jpg",
        ],
        price: "\$ 480",
        country: "Germanya",
        id: "b2",
        memory: "256",
        ram: "16",
        categoryId: "a1",
        additionalInformation:
            "Yili 2020, Hamma joyi soz \nyomks 92 %, telefon Jizzaxda "),
    MainAccessoriesModel(
        name: "iphone 8",
        images: [
          "assets/images/iphone2.jpg",
          "assets/images/iphone1.jpg",
          "assets/images/iphone0.jpg",
        ],
        price: "\$ 220",
        country: "Germanya",
        id: "b3",
        memory: "128",
        ram: "8",
        categoryId: "a1",
        additionalInformation:
            "Yili 2022, Hamma joyi soz \nyomks 100 %, telefon Toshkentda"),
    MainAccessoriesModel(
        name: "Note",
        images: [
          "assets/images/android.jpg",
          "assets/images/android1.jpg",
          "assets/images/anroid2.jpg",
        ],
        price: "\$ 260",
        country: "Italya",
        id: "b4",
        memory: "128",
        ram: '8',
        categoryId: "a2",
        additionalInformation:
            "Yili 2019, Hamma joyi soz \nzaryadi 1 kunga yetadi, \ntelefon Toshkentda realni oladiganlar tel qilsin"),
    MainAccessoriesModel(
        name: "Redmi 10",
        images: [
          "assets/images/android1.jpg",
          "assets/images/android.jpg",
          "assets/images/anroid2.jpg",
        ],
        price: "\$ 200",
        country: "Italya",
        id: "b5",
        memory: "128",
        ram: '8',
        categoryId: "a2",
        additionalInformation:
            "Yili 2019 Redmi 10 ishlashi yaxshi, Hamma joyi soz \nzaryadi 1 kunga yetadi, telefon Toshkentda"),
    MainAccessoriesModel(
        name: "Samsung S 10",
        images: [
          "assets/images/anroid2.jpg",
          "assets/images/android1.jpg",
          "assets/images/android.jpg",
        ],
        price: "\$ 250",
        country: "Xitoy",
        id: "b6",
        memory: "256",
        ram: '8',
        categoryId: "a2",
        additionalInformation:
            "Yili 2019, Hamma joyi soz \nyomks 88 %, telefon Toshkentda"),
    MainAccessoriesModel(
        name: "Mackbook pro",
        images: [
          "assets/images/mackbook.jpg",
          "assets/images/mackbook1.jpg",
          "assets/images/mackbook2.jpg",
        ],
        price: "\$ 420",
        country: "Germanya",
        id: "b7",
        memory: "1024",
        ram: "16",
        categoryId: "a4",
        additionalInformation:
            "Yili 2019, Hamma joyi soz \nyomks 88 %, telefon Toshkentda"),
    MainAccessoriesModel(
        name: "Mackbook pro",
        images: [
          "assets/images/mackbook1.jpg",
          "assets/images/mackbook2.jpg",
          "assets/images/mackbook.jpg",
        ],
        price: "\$ 420",
        country: "Germanya",
        id: "b8",
        memory: "1024",
        ram: "16",
        categoryId: "a4",
        additionalInformation:
            "Yili 2019, Hamma joyi soz \nyomks 88 %, telefon Toshkentda"),
    MainAccessoriesModel(
        name: "Mackbook air",
        images: [
          "assets/images/mackbook2.jpg",
          "assets/images/mackbook1.jpg",
          "assets/images/mackbook.jpg",
        ],
        price: "\$ 700",
        country: "Germanya",
        id: "b9",
        memory: "2048",
        ram: "32",
        categoryId: "a4",
        additionalInformation:
            "Yili 2019, Hamma joyi soz \nyomks 88 %, telefon Toshkentda"),
    MainAccessoriesModel(
        name: "airpods pro 5",
        images: [
          "assets/images/headphone2.jpg",
          "assets/images/headphone1.jpg",
          "assets/images/headphone.jpg",
        ],
        price: "\$ 10",
        country: "Xitoy",
        id: "b10",
        memory: "",
        ram: "",
        categoryId: "a5",
        additionalInformation:
            "Biz online savdo qilamiz yetkazib berish 2 kunda \nzaryadi karobkasi bn 1 haftaga yetadi \nairpods ozi 3,  4 soatga telefon raqam 99 123 45 67"),
    MainAccessoriesModel(
        name: "airpods 2.2 lux",
        images: [
          "assets/images/headphone1.jpg",
          "assets/images/headphone2.jpg",
          "assets/images/headphone.jpg",
        ],
        price: "\$ 20",
        country: "Xitoy",
        id: "b11",
        memory: "",
        ram: "",
        categoryId: "a5",
        additionalInformation:
            "Biz online savdo qilamiz yetkazib berish 2 kunda \nzaryadi karobkasi bn 1 haftaga yetadi \nairpods ozi 3,  4 soatga \ntelefon raqam 99 123 45 67"),
  ];

  List<MainAccessoriesModel> get mainAccessoriesModelList {
    return _mainAccessoriesModelList;
  }

  List<MainAccessoriesModel> _favorites = [];

  List<MainAccessoriesModel> get favorites {
    return _favorites;
  }

  void isFavoriteId(String favoriteId) {
    final favoriteIdindex =
        _favorites.indexWhere((element) => element.id == favoriteId);
    if (favoriteIdindex < 0) {
      _favorites.add(
        mainAccessoriesModelList
            .firstWhere((element) => element.id == favoriteId),
      );
    } else {
      _favorites.removeWhere((element) => element.id == favoriteId);
    }
  }

  void newAccAdd(MainAccessoriesModel newAcc) {
    _mainAccessoriesModelList.add(newAcc);
  }

  void deleteIdItem(String deleteid) {
    _mainAccessoriesModelList.removeWhere((element) => element.id == deleteid);
  }
}
