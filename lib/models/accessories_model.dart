class AccessoriesModel {
  final String title;
  final String image;
  final String id;

  AccessoriesModel(
      {required this.title, required this.image, required this.id});
}

class AccessoriesCategory {
  List<AccessoriesModel> _accessoriesList = [
    AccessoriesModel(
        title: "Iphonelar", image: "assets/images/iphone.jpg", id: "a1"),
    AccessoriesModel(
        title: "Androidlar", image: "assets/images/android.jpg", id: "a2"),
    AccessoriesModel(
        title: "Smart watchlar", image: "assets/images/smart.jpg", id: "a3"),
    AccessoriesModel(
        title: "Mackbooklar", image: "assets/images/mackbook.jpg", id: "a4"),
    AccessoriesModel(
        title: "Quloqchinlar", image: "assets/images/headphone.jpg", id: "a5"),
  ];

  List<AccessoriesModel> get accessoriesList {
    return _accessoriesList;
  }
}
