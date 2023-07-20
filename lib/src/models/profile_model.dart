class ProfileModel {
  final String vCpf;
  final String vDdd;
  final String vPhoneNumber;
  final String vBankAccount;
  final String vBank;
  final String vAgency;

  ProfileModel({
    required this.vCpf,
    required this.vDdd,
    required this.vPhoneNumber,
    required this.vBankAccount,
    required this.vBank,
    required this.vAgency,
  });

  factory ProfileModel.fromJson(Map<String, dynamic> json) {
    return ProfileModel(
        vCpf: json['vCpf'],
        vDdd: json['vDdd'],
        vPhoneNumber: json['vPhoneNumber'],
        vBankAccount: json['vBankAccount'],
        vBank: json['vBank'],
        vAgency: json['vAgency']);
  }
}
