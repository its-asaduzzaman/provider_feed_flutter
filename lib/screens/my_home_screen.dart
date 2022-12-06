import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_feed/widgets/button_widget.dart';
import 'package:provider_feed/widgets/text_field_widget.dart';
import 'package:provider_feed/calculation/cal_functions.dart';

class MyHomePage extends StatelessWidget {
  final _height = TextEditingController();

  final _weight = TextEditingController();

  MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: 150),
          child: Column(
            children: [
              const Text(
                "Feed",
                style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                  color: Colors.brown,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  const SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: TextFieldWidget(
                        textController: _height,
                        textHint: 'Height in cm',
                        borderRadius: 20),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: TextFieldWidget(
                        textController: _weight,
                        textHint: 'Weight in kg',
                        borderRadius: 20),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                padding: const EdgeInsets.only(left: 30, right: 30),
                width: 250,
                child: GestureDetector(
                  onTap: () {
                    return context.read<CalFunction>().bmiCal(
                        double.parse(_height.text), double.parse(_weight.text));
                  },
                  child: const ButtonWidget(
                      backgroundColor: Colors.brown,
                      text: 'Cal',
                      textColor: Colors.white),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                height: 80,
                width: 300,
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(Radius.circular(20)),
                  color: Colors.brown.shade300,
                ),
                child: Center(
                  child: Text(
                    'Answer : ${context.watch<CalFunction>().finalResult}',
                    style: const TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
