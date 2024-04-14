import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'waiting_lobby.dart';
// import 'package:pin_code_fields/pin_code_fields.dart';

class CodeScreenInput extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: NumericCodeScreen(),
    );
  }
}

class NumericCodeScreen extends StatefulWidget {
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
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        title: Text('Introduce your code: '),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(4, (index) {
              double containerWidth =
                  (width - 64) / 4; // 64 es el padding horizontal total

              return Container(
                width: containerWidth - 16,
                margin: EdgeInsets.symmetric(horizontal: 8),
                child: TextFormField(
                  controller: controllers[index],
                  focusNode: focusNodes[index],
                  keyboardType: TextInputType.number,
                  textAlign: TextAlign.center,
                  maxLength: 1,
                  decoration: InputDecoration(
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
        backgroundColor: Color.fromARGB(255, 17, 66, 2),
        onPressed: _submitCode,
        child: Text("Send"),
      ),
    );
  }
}
