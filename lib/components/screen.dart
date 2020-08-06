import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:number2text/components/number_to_text.dart';

class TranslatingScreen extends StatefulWidget {
  final String title;

  const TranslatingScreen({Key key, this.title}) : super(key: key);
  @override
  _TranslatingScreenState createState() => _TranslatingScreenState();
}

class _TranslatingScreenState extends State<TranslatingScreen> {
  var _inputTextController = TextEditingController();
  String _translatedValue = '';
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
          margin: EdgeInsets.all(15.0),
          child: Column(
            children: <Widget>[
              TextFormField(
                controller: _inputTextController,
                textAlign: TextAlign.center,
                decoration: InputDecoration(
                  hintText: 'enter a number',
                ),
                keyboardType: TextInputType.number,
              ),
              FlatButton(
                onPressed: () {
                  var _value = _inputTextController.text;
                  String _translated =
                      NumberToText().convert(value: double.parse(_value));
                  setState(() {
                    _translatedValue = _translated;
                  });
                },
                child: Text('Translate'),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  _translatedValue,
                  style: Theme.of(context).textTheme.headline6,
                ),
              )
            ],
          )),
    );
  }
}
