import 'package:flutter/material.dart';

import '../controllers/profile_controller.dart';
import '../models/profile_model.dart' as model;
import '../models/profile_model.dart';

class ProfileProvider with ChangeNotifier {
  String? vCpf;
  String? vDdd;
  String? vPhoneNumber;
  String? vBankAccount;
  String? vBank;
  String? vAgency;

  List<model.ProfileModel> _profiles = [];

  List<model.ProfileModel> get profiles => _profiles;

  Future<void> getAllProfiles() async {
    final profilesData = await ProfileController().getAllProfiles();
    final profiles =
        profilesData.map((data) => model.ProfileModel.fromJson(data)).toList();

    _profiles = profiles;

    notifyListeners();
  }

  void setProfileData(ProfileModel profile) {
    vCpf = profile.vCpf;
    vDdd = profile.vDdd;
    vPhoneNumber = profile.vPhoneNumber;
    vBankAccount = profile.vBankAccount;
    vBank = profile.vBank;
    vAgency = profile.vAgency;

    notifyListeners();
  }
}
