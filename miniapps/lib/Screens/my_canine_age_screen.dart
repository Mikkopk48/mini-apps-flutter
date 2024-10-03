import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class MyCanineAgeScreen extends StatefulWidget {
  const MyCanineAgeScreen({super.key});

  @override
  State<MyCanineAgeScreen> createState() => _MyCanineAgeScreenState();
}

class _MyCanineAgeScreenState extends State<MyCanineAgeScreen> {
  final TextEditingController ageInputController = TextEditingController();
  bool _showCanineAge = false;
  int _dogAge = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Mi Edad Canina'),
        centerTitle: true,
        foregroundColor: Colors.white,
        backgroundColor: Colors.brown,
      ),
      body: Column(
        children: [
          Hero(
            tag: 'my_canine_age_image', // Corregido el tag
            child: Image.asset(
              "assets/perro.png",
              height: 210,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
            child: Column(
              children: [
                Theme(
                  data: ThemeData(
                    colorScheme: ThemeData().colorScheme.copyWith(
                          primary: Colors.brown,
                        ),
                  ),
                  child: TextField(
                    controller: ageInputController, // Agregado controlador
                    inputFormatters: [
                      LengthLimitingTextInputFormatter(3),
                      FilteringTextInputFormatter.digitsOnly
                    ],
                    keyboardType: TextInputType.number,
                    decoration: const InputDecoration(
                      labelText: 'Ingrese su edad',
                      helperText: 'Solo números',
                      icon: Icon(Icons.person),
                    ),
                  ),
                ),
                const SizedBox(height: 15),
                if (_showCanineAge) _showCanineAgeContent(),
                MaterialButton(
                  shape: const StadiumBorder(),
                  height: 30,
                  minWidth: double.infinity,
                  color: Colors.brown,
                  child: const Text(
                    "Calcular mi edad canina",
                    style: TextStyle(color: Colors.white, fontSize: 22),
                  ),
                  onPressed: () {
                    final canineAge = ageInputController.text;
                    if (canineAge.isNotEmpty) {
                      FocusScope.of(context).requestFocus(FocusNode());
                      setState(() {
                        _showCanineAge = true;
                        _dogAge = int.parse(canineAge) * 7;
                      });
                    } else {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          backgroundColor: Colors.redAccent,
                          content: Text('Error, por favor ingrese su edad'),
                        ),
                      );
                    }
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _showCanineAgeContent() {
    return Text(
      "Tu edad canina es $_dogAge años",
      style: const TextStyle(fontSize: 13),
    );
  }
}
