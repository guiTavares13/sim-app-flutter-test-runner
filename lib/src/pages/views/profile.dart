import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sim_app_flutter_testrunner/src/controllers/profile_controller.dart';
import '../../providers/profile_provider.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<String>? collections = ["CP AUTO", "CP PURO", "CP FGTS"];

    ProfileProvider? profile = Provider.of<ProfileProvider>(context);
    if (profile == null) {
      return Scaffold(
        appBar: AppBar(
          title: Text('Erro'),
        ),
        body: const Center(
          child: Text('Perfil não encontrado.'),
        ),
      );
    }

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
                  Text(
                    '${profile.vCpf}',
                    style: const TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                    ),
                  ),
                  Text(
                    '${profile.vPhoneNumber}',
                    style: const TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                    ),
                  ),
                  Text(
                    '${profile.vBank}',
                    style: const TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  ElevatedButton(
                    onPressed: () {
                      // Lógica para executar a coleção aqui
                    },
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      fixedSize: const Size(300, 50),
                    ),
                    child: const Text('Executar Collection'),
                  ),
                  const SizedBox(height: 16),
                  DropdownButtonFormField<String>(
                    value: "CP AUTO",
                    onChanged: (newValue) {
                      // Lógica para atualizar o valor selecionado do Dropdown aqui
                    },
                    items: collections!.map((collection) {
                      return DropdownMenuItem<String>(
                        value: collection,
                        child: Text(collection),
                      );
                    }).toList(),
                    decoration: const InputDecoration(
                      labelText: 'Produto',
                      border: OutlineInputBorder(),
                    ),
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
