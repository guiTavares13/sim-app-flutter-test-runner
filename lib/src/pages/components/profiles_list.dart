import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sim_app_flutter_testrunner/src/providers/profile_provider.dart';
import '../../models/profile_model.dart';

class ProfilesList extends StatefulWidget {
  const ProfilesList({Key? key}) : super(key: key);

  @override
  State<ProfilesList> createState() => _ProfilesListState();
}

class _ProfilesListState extends State<ProfilesList> {
  List<ProfileModel> profiles = [];

  @override
  void initState() {
    super.initState();
    _getAllProfiles();
  }

  Future<void> _getAllProfiles() async {
    final profileProvider =
        Provider.of<ProfileProvider>(context, listen: false);
    await profileProvider.getAllProfiles();
    setState(() {
      profiles = profileProvider.profiles;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: GridView.builder(
        itemCount: profiles.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 1,
          childAspectRatio: 1.5,
          crossAxisSpacing: 5,
          mainAxisSpacing: 5,
        ),
        itemBuilder: (ctx, index) {
          final profile = profiles[index];
          return InkWell(
            onTap: () {
              
              final profileProvider =
                  Provider.of<ProfileProvider>(context, listen: false);
              profileProvider.setProfileData(profile);
            },
            child: Container(
              width: 400,
              height: 440,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: Colors.grey),
              ),
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    children: [
                      const Column(
                        children: [
                          Text('CPF:'),
                          Text('DDD:'),
                          Text('Telefone:'),
                          Text('Agencia:'),
                        ],
                      ),
                      Column(
                        children: [
                          Text(profile.vDdd),
                          Text(profile.vCpf),
                          Text(profile.vPhoneNumber),
                          Text(profile.vAgency),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
