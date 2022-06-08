import 'package:flutter/material.dart';

class CategoryMenuItem extends StatelessWidget{
  final String path, title;
  final bool isSelected;
  const CategoryMenuItem({Key? key, required this.path, required this.title, required this.isSelected}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 20, horizontal: 5),
      padding: const EdgeInsets.all(5),
      decoration: BoxDecoration(
        border: isSelected ? null: Border.all(color: Colors.grey.shade300),
        borderRadius: BorderRadius.circular(2),
        color: isSelected ? Colors.white : Colors.transparent,
        boxShadow: isSelected ? [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            spreadRadius: 1,
            blurRadius: 10,
            offset: Offset(0, 10), // changes position of shadow
          ),
        ] : [],

      ),
      child: Row(
        children: [
          Container(
            color: Colors.grey.shade300,
            width: 25,
            height: 25,
            padding: const EdgeInsets.all(3.0),
            margin: const EdgeInsets.only(right:  5.0),
            child: Image.asset(path),
          ),
          Text(title,style: const TextStyle(color: Colors.black),)
        ],
      ),
    );
  }
}