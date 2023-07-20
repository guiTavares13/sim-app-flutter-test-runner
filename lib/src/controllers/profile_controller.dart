import 'dart:convert';
import 'package:http/http.dart' as http;

class ProfileController {
  Future<List<Map<String, dynamic>>> getAllProfiles() async {
    final url = Uri.parse("http://localhost:3000/profile");

    try {
      final response = await http.get(url);
      final data = jsonDecode(response.body);

      if (response.statusCode == 200) {
        final profilesData =
            List<Map<String, dynamic>>.from(data as List<dynamic>);
        return profilesData;
      } else {
        print('Erro ao obter cupons: ${response.statusCode}');
        return [];
      }
    } catch (e) {
      print('Erro ao obter cupons: $e');
    }
    return [];
  }
}
