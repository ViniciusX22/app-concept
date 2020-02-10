import 'dart:math';
import 'package:flutter/material.dart';

import 'package:app_concept/transactions.dart';

const _containerPadding = EdgeInsets.only(top: 25.0);
const _horizontalPadding = 20.0;
const _titleFontSize = 26.0;
const _bodyFontSize = _titleFontSize * 0.65;
const _iconSize = 30.0;

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Transaction Classification Concept',
        home: Scaffold(
          body: Container(
            padding: _containerPadding,
            color: Color.fromRGBO(249, 251, 252, 1),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: _horizontalPadding * 1.8),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(top: 15.0),
                        child: Text(
                          'Classify transaction',
                          style: TextStyle(
                              fontSize: _titleFontSize,
                              color: Colors.black,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 8.0),
                        child: Text(
                          'Classify this transaction into a particular category',
                          style: TextStyle(
                              color: Color.fromRGBO(152, 155, 154, 1),
                              fontSize: _bodyFontSize),
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: SizedBox.expand(
                      child: buildTransationTypeWidgets(_horizontalPadding)),
                ),
              ],
            ),
          ),
        ));
  }
}
