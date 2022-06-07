import 'package:flutter/material.dart';

class SearchBar extends StatelessWidget{
  const SearchBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Flexible(
        fit: FlexFit.loose,
        child: TextField(
          decoration: InputDecoration(
            suffixIcon: const Padding(
              padding: EdgeInsets.only(right: 20),
              child: Icon(Icons.search, color: Colors.grey, size: 25,),
            ),
            hintText: 'Search category',
            hintStyle: TextStyle(color: Colors.black.withOpacity(0.5), fontSize: 17),
            border: const OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(8.0)),
                borderSide: BorderSide.none
            ),
            contentPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            fillColor: Colors.grey.shade200,
            filled: true,
          ),
          cursorColor: Colors.grey,
          style: TextStyle(color: Colors.black.withOpacity(0.5), fontSize: 17, ),
        )
    );
  }
}