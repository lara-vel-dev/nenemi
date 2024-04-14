import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../CodeScreen/waiting_lobby.dart';
// import 'package:pin_code_fields/pin_code_fields.dart';

class CodeScreenInput extends StatelessWidget {
  const CodeScreenInput({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: NumericCodeScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class NumericCodeScreen extends StatefulWidget {
  const NumericCodeScreen({super.key});

  @override
  _NumericCodeScreenState createState() => _NumericCodeScreenState();
}

class _NumericCodeScreenState extends State<NumericCodeScreen> {
  List<TextEditingController> controllers =
      List.generate(4, (_) => TextEditingController());
  List<FocusNode> focusNodes = List.generate(4, (_) => FocusNode());

  void _submitCode() {
    final code = controllers.map((c) => c.text).join();
    print('Código ingresado: $code');
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => LobbyPage()),
    );
    // Aquí puedes manejar la lógica después de que se presiona el botón enviar
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 236, 175, 146),
      appBar: AppBar(
        // color: Color(0xFFFFE0D6), // Usando el color específico

        // backgroundColor: Color.fromARGB(255, 156, 154, 25),
        backgroundColor: Color.fromARGB(255, 236, 175, 146),
        title: const Text('Introduce your code: '),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(4, (index) {
              return Container(
                width: 50,
                margin: const EdgeInsets.symmetric(horizontal: 8),
                child: TextFormField(
                  controller: controllers[index],
                  focusNode: focusNodes[index],
                  keyboardType: TextInputType.number,
                  textAlign: TextAlign.center,
                  maxLength: 1,
                  decoration: const InputDecoration(
                    counterText: "",
                    border: OutlineInputBorder(),
                  ),
                  onChanged: (value) {
                    if (value.length == 1 && index != 3) {
                      focusNodes[index].unfocus();
                      FocusScope.of(context)
                          .requestFocus(focusNodes[index + 1]);
                    }
                    if (value.isEmpty && index != 0) {
                      focusNodes[index].unfocus();
                      FocusScope.of(context)
                          .requestFocus(focusNodes[index - 1]);
                    }
                  },
                  inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                ),
              );
            }),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _submitCode,
        child: const Text("Send"),
      ),
    );
  }
}
