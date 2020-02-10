import 'package:flutter/material.dart';
import 'package:app_concept/transaction_type.dart';

const _iconBackgroundColors = <Color>[
  Color.fromRGBO(237, 247, 255, 1),
  Color.fromRGBO(241, 236, 254, 1),
  Color.fromRGBO(255, 236, 251, 1),
  Color.fromRGBO(250, 240, 232, 1),
  Color.fromRGBO(236, 241, 253, 1),
  Color.fromRGBO(231, 252, 233, 1),
];

const _iconColors = <Color>[
  Color.fromRGBO(89, 187, 255, 1),
  Color.fromRGBO(142, 116, 221, 1),
  Color.fromRGBO(255, 117, 231, 1),
  Color.fromRGBO(252, 167, 114, 1),
  Color.fromRGBO(91, 128, 254, 1),
  Color.fromRGBO(62, 220, 105, 1),
];

const _textStrings = <String>[
  'General',
  'Transport',
  'Shopping',
  'Bills',
  'Entertainment',
  'Grocery',
];

const _iconLocations = <IconData>[
  Icons.widgets,
  Icons.directions_bus,
  Icons.shopping_basket,
  Icons.description,
  Icons.movie,
  Icons.local_grocery_store,
];

Widget buildTransationTypeWidgets(double spacing) {
  return GridView.builder(
    padding: EdgeInsets.symmetric(horizontal: spacing * 1.8, vertical: spacing),
    itemCount: 6,
    itemBuilder: (BuildContext context, int index) => TransactionType(
      iconBackgroundColor: _iconBackgroundColors[index],
      iconColor: _iconColors[index],
      iconLocation: _iconLocations[index],
      textString: _textStrings[index],
    ),
    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
      crossAxisCount: 2,
      crossAxisSpacing: spacing,
      mainAxisSpacing: spacing,
    ),
  );
}
