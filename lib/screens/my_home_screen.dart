import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_feed/widgets/button_widget.dart';
import 'package:provider_feed/widgets/input_widget.dart';
import 'package:provider_feed/calculation/cal_functions.dart';

class MyHomePage extends StatelessWidget {
  final _height = TextEditingController();

  final _weight = TextEditingController();

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
            child: Center(
              child: Text('${context.watch<CalFunction>().finalResult}'),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            padding: EdgeInsets.only(left: 30, right: 30),
            width: 250,
            child: GestureDetector(
              onTap: () => context.read<CalFunction>().bmiCal(
                  double.parse(_height.text), double.parse(_weight.text)),
              child: ButtonWidget(
                  backgroundColor: Colors.brown,
                  text: 'Cal',
                  textColor: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}
