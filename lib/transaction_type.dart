import 'dart:math';

import 'package:flutter/material.dart';

const _iconSize = 30.0;

class TransactionType extends StatelessWidget {
  final Color iconBackgroundColor;
  final Color iconColor;
  final IconData iconLocation;
  final String textString;
  final double textFonSize;

  const TransactionType(
      {Key key,
      @required this.iconBackgroundColor,
      @required this.iconColor,
      @required this.iconLocation,
      @required this.textString,
      this.textFonSize = 16.0})
      : assert(iconLocation != null),
        assert(iconColor != null),
        assert(iconBackgroundColor != null),
        assert(textString != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20.0),
            color: Colors.white,
            boxShadow: <BoxShadow>[
              BoxShadow(
                color: Color.fromRGBO(242, 242, 242, 1),
                offset: Offset.fromDirection(pi * 45 / 180, 25.0),
                blurRadius: 20.0,
                spreadRadius: 10.0,
              )
            ]),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Container(
                width: _iconSize + 35,
                height: _iconSize + 35,
                decoration: BoxDecoration(
                    color: iconBackgroundColor,
                    borderRadius: BorderRadius.circular(_iconSize)),
                child: Icon(
                  iconLocation,
                  size: _iconSize,
                  color: iconColor,
                ),
              ),
              Text(
                textString,
                style: TextStyle(
                    fontSize: textFonSize,
                    color: iconColor,
                    fontWeight: FontWeight.w600),
              )
            ],
          ),
        ));
  }
}
