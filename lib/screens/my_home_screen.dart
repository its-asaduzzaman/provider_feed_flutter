import 'package:flutter/material.dart';
import 'package:provider_feed/widgets/button_widget.dart';
import 'package:provider_feed/widgets/input_widget.dart';

class MyHomePage extends StatelessWidget {
  final TextEditingController _height = TextEditingController();

  final TextEditingController _weight = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Provider Feed'),
      ),
      body: Column(
        children: [
          Container(
            child: Text(
              "Feed",
              style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.bold,
                color: Colors.brown,
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            children: [
              SizedBox(
                width: 10,
              ),
              Expanded(
                child: TextFieldWidget(
                    textController: _height,
                    textHint: 'Height in cm',
                    borderRadius: 20),
              ),
              SizedBox(
                width: 10,
              ),
              Expanded(
                child: TextFieldWidget(
                    textController: _weight,
                    textHint: 'Weight in kg',
                    borderRadius: 20),
              ),
              SizedBox(
                width: 10,
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            height: 80,
            width: 300,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(20)),
              color: Colors.brown.shade300,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            padding: EdgeInsets.only(left: 30, right: 30),
            width: 250,
            child: ButtonWidget(
                backgroundColor: Colors.brown,
                text: 'Cal',
                textColor: Colors.white),
          ),
        ],
      ),
    );
  }
}