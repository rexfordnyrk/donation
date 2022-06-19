import 'package:donation/screens/DetailsScreen.dart';
import 'package:flutter/material.dart';

class AmountsGridCard extends StatelessWidget {
  final int selected;
  final Function select;

  const AmountsGridCard(
      {super.key, required this.selected, required this.select});

  @override
  Widget build(BuildContext context) {
    return GridView(
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 5 / 3.8,
          crossAxisSpacing: 10,
          mainAxisSpacing: 0),
      shrinkWrap: true,
      children: [
        Container(
          margin: const EdgeInsets.only(bottom: 20, left: 10, right: 10),
          decoration: BoxDecoration(
            border: selected == 1
                ? null
                : Border.all(color: Colors.grey.shade300, width: 2),
            borderRadius: BorderRadius.circular(2),
            color: selected == 1 ? Colors.white : Colors.transparent,
            boxShadow: selected == 1
                ? [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.1),
                      spreadRadius: 1,
                      blurRadius: 10,
                      offset: const Offset(0, 10), // changes position of shadow
                    ),
                  ]
                : [],
          ),
          child: MaterialButton(
            padding: EdgeInsets.zero,
            onPressed: () => select(1, 50.0),
            child: const Align(
              child: Text(
                "\$50",
                style: TextStyle(fontSize: 35, fontWeight: FontWeight.w500),
              ),
            ),
          ),
        ),
        Container(
          margin: const EdgeInsets.only(bottom: 20, left: 5, right: 5),
          decoration: BoxDecoration(
            border: selected == 2
                ? null
                : Border.all(color: Colors.grey.shade300, width: 2),
            borderRadius: BorderRadius.circular(2),
            color: selected == 2 ? Colors.white : Colors.transparent,
            boxShadow: selected == 2
                ? [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.1),
                      spreadRadius: 1,
                      blurRadius: 10,
                      offset: const Offset(0, 10), // changes position of shadow
                    ),
                  ]
                : [],
          ),
          child: MaterialButton(
            padding: EdgeInsets.zero,
            onPressed: () => select(2, 100.0),
            child: const Align(
              child: Text(
                "\$100",
                style: TextStyle(fontSize: 35, fontWeight: FontWeight.w500),
              ),
            ),
          ),
        ),
        Container(
          margin: const EdgeInsets.only(bottom: 20, left: 5, right: 5),
          decoration: BoxDecoration(
            border: selected == 3
                ? null
                : Border.all(color: Colors.grey.shade300, width: 2),
            borderRadius: BorderRadius.circular(2),
            color: selected == 3 ? Colors.white : Colors.transparent,
            boxShadow: selected == 3
                ? [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.1),
                      spreadRadius: 1,
                      blurRadius: 10,
                      offset: const Offset(0, 10), // changes position of shadow
                    ),
                  ]
                : [],
          ),
          child: MaterialButton(
            padding: EdgeInsets.zero,
            onPressed: () => select(3, 200.0),
            child: const Align(
              child: Text(
                "\$200",
                style: TextStyle(fontSize: 35, fontWeight: FontWeight.w500),
              ),
            ),
          ),
        ),
        Container(
          margin: const EdgeInsets.only(bottom: 20, left: 5, right: 5),
          decoration: BoxDecoration(
            border: selected == 4
                ? null
                : Border.all(color: Colors.grey.shade300, width: 2),
            borderRadius: BorderRadius.circular(2),
            color: selected == 4 ? Colors.white : Colors.transparent,
            boxShadow: selected == 4
                ? [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.1),
                      spreadRadius: 1,
                      blurRadius: 10,
                      offset: const Offset(0, 10), // changes position of shadow
                    ),
                  ]
                : [],
          ),
          child: MaterialButton(
            padding: EdgeInsets.zero,
            onPressed: () => select(4, 250.0),
            child: const Align(
              child: Text(
                "\$250",
                style: TextStyle(fontSize: 35, fontWeight: FontWeight.w500),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
