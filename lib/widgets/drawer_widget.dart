import 'package:flutter/material.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return Drawer(
      child: Column(
        children: [
         AppBar(
           title: Text("Barchasi"),
         ),
          listTile("Asosiy sahifa", Icons.home, () {
            Navigator.pushReplacementNamed(context, "/");
          }),
          listTile("Barcha aksessuarlar", Icons.category, () {
            Navigator.pushReplacementNamed(context, "/allAccessoriespage");
          }),
        ],
      ),
    );
  }

  Widget listTile(String title, IconData icon, Function() onTap) {
    return ListTile(
      onTap: onTap,
      leading: Icon(icon),
      title: Text(title),
    );
  }
}
