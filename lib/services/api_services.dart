import 'package:http/http.dart' as http;




class ApiServices {
  final String apiBaseUri;

  ApiServices(this.apiBaseUri);

  Future<dynamic> get(String url) async {
    var apiUrl = Uri.parse(apiBaseUri );
    try {
      final response = await http.get(apiUrl);
      return response;
    } catch (e) {
      throw Exception("Failed to make GET request: $e");
    }
  }

  Future<dynamic> post(String url, Map<String, dynamic> body) async {
    var apiUrl = Uri.parse(apiBaseUri + url);
    try {
      var response = await http.post(apiUrl, body: body);
      return response;
    } catch (e) {
      throw Exception("Failed to make POST request: $e");
    }
  }

  Future<dynamic> getWithUrl(String fullUrl) async {
    try {
      final response = await http.get(Uri.parse(fullUrl));
      return response;
    } catch (e) {
      throw Exception("Something goes wrong");
    }
  }

 
 
}