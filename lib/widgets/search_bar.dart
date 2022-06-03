import 'package:flutter/material.dart';

class SearchBar extends StatelessWidget{
  const SearchBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Flexible(
        child: TextField(
          decoration: InputDecoration(
            suffixIcon: const Padding(
              padding: EdgeInsets.only(right: 20),
              child: Icon(Icons.search, color: Colors.grey, size: 30,),
            ),
            hintText: 'Search category',
            hintStyle: const TextStyle(color: Colors.grey, fontSize: 18),
            border: const OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(8.0)),
                borderSide: BorderSide.none
            ),
            contentPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            fillColor: Colors.grey.shade200,
            filled: true,
          ),
          cursorColor: Colors.grey,
          style: const TextStyle(color: Colors.grey, fontSize: 20, ),
          cursorHeight: 25,
        )
    );
  }
}