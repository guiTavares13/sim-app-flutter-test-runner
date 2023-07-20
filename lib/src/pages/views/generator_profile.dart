import 'package:flutter/material.dart';

class GeneratorProfile extends StatelessWidget {
  const GeneratorProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            children: [
              const Column(
                children: [
                  Text(
                    'CPF:',
                    style: TextStyle(
                      color: Color.fromARGB(255, 141, 136, 136),
                      fontSize: 18,
                    ),
                  ),
                  Text(
                    'TELEFONE:',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                    ),
                  ),
                  Text(
                    'NOME:',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      fixedSize: const Size(300, 50),
                    ),
                    child: const Text('Gerar'),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
