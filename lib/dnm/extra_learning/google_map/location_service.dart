import 'package:http/http.dart' as http;
import 'dart:convert' as convert;

class LocationService {
  final String key = 'AIzaSyDPeJh7YQyOiklg_mxWafCEZxS3obNqalQ'; //

// String jsonsDataString = response.body.toString(); // toString of Response's body is assigned to jsonDataString
// _data = jsonDecode(jsonsDataString);
// print(_data.toString());

  Future<String> getPlaceId(String input) async {
    String url =
        "https://maps.googleapis.com/maps/api/place/findplaceformtext/json?input=$input&inputtype=textquery&key=$key";

    var response = await http.get(Uri.parse(url));
    var json = convert.jsonDecode(response.body.toString());
    var placeId = json['candidates'][0]['place_id'] as String;
    print(placeId.toString());

    return placeId;
  }

  Future<Map<String, dynamic>> getPlace(String input) async {
    final placeId = await getPlaceId(input);

    String url =
        "https://maps.googleapis.com/maps/api/place/findplaceformtext/json?place_id=$placeId&key=$key";

    var response = await http.get(Uri.parse(url));
    var json = convert.jsonDecode(response.body);
    var results = json['result'] as Map<String, dynamic>;
    print(results.toString());

    return results;
  }
}
