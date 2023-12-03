import 'dart:convert';
import 'package:http/http.dart' as http;

import '../models/radio_station_model.dart';

class RadioStationService {
  final client = http.Client();

  List<RadioStationModel> parseRadioStations(String responseBody) {
    final parsed =
        (jsonDecode(responseBody) as List).cast<Map<String, dynamic>>();

    return parsed
        .map<RadioStationModel>((json) => RadioStationModel.fromJson(json))
        .toList();
  }

  Future<List<RadioStationModel>> fetchRadioStations() async {
    final response = await client.get(
        Uri.parse('https://6506bd3b3a38daf4803ea6c3.mockapi.io/radiostations'));

    return parseRadioStations(utf8.decode(response.bodyBytes));
  }
}
