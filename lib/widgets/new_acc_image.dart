import 'package:flutter/material.dart';

class NewAccImage extends StatefulWidget {
  final TextEditingController imageController;

  NewAccImage({Key? key, required this.imageController}) : super(key: key);

  @override
  State<NewAccImage> createState() => _NewAccImageState();
}

class _NewAccImageState extends State<NewAccImage> {
  var image;

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 6),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Container(
            height: height * 0.2,
            width: width * 0.3,
            decoration: BoxDecoration(border: Border.all(color: Colors.grey)),
            child: image != null && image.isNotEmpty
                ? Image.network(
                    image,
                    fit: BoxFit.cover,
                  )
                : Center(
                    child: Text(
                      "Aksessuar Rasmini kiriting",
                      textAlign: TextAlign.center,
                    ),
                  ),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 8),
              child: TextField(
                onSubmitted: (value) {
                  setState((){
                    image = value;
                  });

                },
                controller: widget.imageController,
                decoration: InputDecoration(hintText: "Rasm linkini kiriting"),
              ),
            ),
          )
        ],
      ),
    );
  }
}
