import 'package:calculadora_imc_upgrade/functions/calculadora_imc.dart';
import 'package:flutter/material.dart';

class CalculadoraIMC extends StatefulWidget {
  const CalculadoraIMC({super.key});

  @override
  State<CalculadoraIMC> createState() {
    return CalculadoraIMCState();
  }
}

class CalculadoraIMCState extends State<CalculadoraIMC> {
  double weight = 0;
  double height = 0;
  TextEditingController weightController = TextEditingController(text: '');
  TextEditingController heightController = TextEditingController(text: '');

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.sizeOf(context);
    return SafeArea(
    child: Scaffold(
      appBar: AppBar(title: const Center(child: Text('Calculadora IMC do Murillo')),),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
              const SizedBox(height: 40),
              Image.network('data:image/png;base64,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'),
              const SizedBox(height: 40),
              Padding(
                padding: EdgeInsets.only(right: screenSize.width * 0.47),
                child: const Text('Peso:'),
              ),
              TextFormField(
                validator: (text) {
                  if (text == null || text.isEmpty) {
                    return 'Text is empty';
                  }
                  return null;
                },
                controller: weightController,
                onChanged: (value) {
                setState(() {
                  weight = double.parse(value);
                });
              }, keyboardType: TextInputType.number,
              decoration: InputDecoration(hintText: 'em kg', constraints: BoxConstraints(maxWidth: screenSize.width * 0.5)),),
              const SizedBox(height: 40),
              Padding(
                padding: EdgeInsets.only(right: screenSize.width * 0.46),
                child: const Text('Altura:'),
              ),
              TextFormField(
                controller: heightController,
                onChanged: (value) {
                setState(() {
                  height = double.parse(value);
                });
              }, keyboardType: TextInputType.number,
              decoration: InputDecoration(hintText: 'em m',constraints: BoxConstraints(maxWidth: screenSize.width * 0.5)),),
              const SizedBox(height: 40),
              TextButton(onPressed: () {
                double? result = calculateIMC(weight, height);
                if (result == null) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('Digite um valor de altura e peso válidos')));
                  return;
                }
                int roundedResult = result.round();
                weightController.clear();
                heightController.clear();
                showModalBottomSheet(context: context, builder: (BuildContext bc) {
                  return ListView(children: [
                    Row(
                      children: [
                        Text('Peso: $weight'),
                        const SizedBox(width: 50,),
                        Text('Altura: $height'),
                        const SizedBox(width: 50,),
                        Text('IMC: $roundedResult'),
                      ],
                    )
                  ],);
                });
              },
              style:  ButtonStyle(
                      shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))),
                      backgroundColor: MaterialStateProperty.all(Colors.yellow)), 
              child: const Text('Calcular IMC')),
            ]),
        ),
      ),
      ),
    );
  }
}