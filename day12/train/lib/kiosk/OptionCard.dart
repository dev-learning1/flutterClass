// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class OptionCard extends StatelessWidget {
  const OptionCard({
    Key? key,
    required this.foodName,
    required this.ImgUrl,
    required this.onTap,
  }) : super(key: key);
  final String foodName;
  final String ImgUrl;
  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: onTap,
        child: Card(
          margin: EdgeInsets.all(4),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                  child: Image.network(
                ImgUrl,
                fit: BoxFit.cover,
              )),
              Text(foodName),
              Text('[담기]')
            ],
          ),
        ));
  }
}
