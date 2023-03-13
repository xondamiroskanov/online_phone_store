import 'package:flutter/material.dart';
import 'package:online_phone_store/models/accessories_main_model.dart';

class AccessoriesFeaturePage extends StatelessWidget {
  final MainAccessoriesModel accessoriesfeature;

  const AccessoriesFeaturePage({Key? key, required this.accessoriesfeature})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Qo'shimcha ma'lumot",
            style: TextStyle(
                fontWeight: FontWeight.w600, fontSize: 18, color: Colors.black54),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            accessoriesfeature.additionalInformation,
            style: TextStyle(
              color: Colors.black,
              fontSize: 16,
              fontWeight: FontWeight.w500,
              // fontStyle: FontStyle.italic
            ),
          ),
          SizedBox(
            height: 24,
          ),
          Text(
            "Xususiyatlari",
            style: TextStyle(
                fontSize: 16, fontWeight: FontWeight.w600, color: Colors.black54),
          ),
          SizedBox(
            height: 10,
          ),
          RichText(
            textAlign: TextAlign.start,
            text: TextSpan(
              style: TextStyle(color: Colors.black45, fontSize: 24),
              children: [
                TextSpan(
                    text: "Nomi:   ",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.normal,
                        fontStyle: FontStyle.italic)),
                TextSpan(
                    text: accessoriesfeature.name,
                    style: TextStyle(color: Colors.black54, fontSize: 20))
              ],
            ),
          ),
          RichText(
            textAlign: TextAlign.start,
            text: TextSpan(
              style: TextStyle(color: Colors.black45, fontSize: 24),
              children: [
                TextSpan(
                    text: "Davlati:   ",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.normal,
                        fontStyle: FontStyle.italic)),
                TextSpan(
                  text: accessoriesfeature.country,
                  style: TextStyle(color: Colors.black54, fontSize: 20),
                ),
              ],
            ),
          ),
          accessoriesfeature.memory != ""
              ? RichText(
                  textAlign: TextAlign.start,
                  text: TextSpan(
                    style: TextStyle(color: Colors.black45, fontSize: 24),
                    children: [
                      TextSpan(
                          text: "Xotirasi:   ",
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.normal,
                              fontStyle: FontStyle.italic)),
                      TextSpan(
                        text: "${accessoriesfeature.memory} Gb",
                        style: TextStyle(color: Colors.black45, fontSize: 20),
                      ),
                    ],
                  ),
                )
              : Text(""),
          accessoriesfeature.ram != ""
              ? RichText(
                  textAlign: TextAlign.start,
                  text: TextSpan(
                    style: TextStyle(color: Colors.black45, fontSize: 24),
                    children: [
                      TextSpan(
                          text: "Ram:   ",
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.normal,
                              fontStyle: FontStyle.italic)),
                      TextSpan(
                          text: accessoriesfeature.ram,
                          style: TextStyle(color: Colors.black45, fontSize: 20))
                    ],
                  ),
                )
              : Text(""),
        ],
      ),
    );
  }
}
