import 'package:flutter/material.dart';

class SwitchesScreen extends StatefulWidget {
  const SwitchesScreen({Key? key}) : super(key: key);

  @override
  _SwitchesScreenState createState() => _SwitchesScreenState();
}
enum doughParameter {ordinary, thin}

class _SwitchesScreenState extends State<SwitchesScreen> {

  doughParameter? _doughParameter = doughParameter.ordinary;
  

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(),
         body: Center(
           child: Column(
            children: [
              Text('Выберите параметры::'),
              RadioListTile<doughParameter>(
                title: const Text('Обычное тесто'),
                value: doughParameter.ordinary,
                groupValue: _doughParameter,
                onChanged: (doughParameter? value) {
                  setState(() {
                    _doughParameter = value;
                  });
                },
              ),
              RadioListTile<doughParameter>(
                title: const Text('Тонкое тесто'),
                value: doughParameter.thin,
                groupValue: _doughParameter,
                onChanged: (doughParameter? value) {
                  setState(() {
                    _doughParameter = value;
                  });
                },
              ),
            ],
          ),
        ),
      ),
      );
  }
}
