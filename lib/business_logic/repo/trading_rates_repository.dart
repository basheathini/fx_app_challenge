import '../../config/api_key.dart';
import 'package:http/http.dart' as http;
import 'dart:convert' as convert;

import '../../config/base_urls.dart';

class CurrenciesRepository {

  Future<Map<String, dynamic>?> getLiveRates() async {
    try {
      var url = Uri.parse('$fxMarketBaseUrl/apilive?&api_key=$fxMarketApiKey');
      var response = await http.get(url);
      print('object getLiveRates ${response.statusCode}');
      if (response.statusCode == 200) {
        var jsonResponse = convert.jsonDecode(response.body) as Map<String, dynamic>;
        return jsonResponse;
      } else {
        return null;
      }
    }catch(e){
      return null;
    }
  }


  Future<Map<String, dynamic>?> getAllCurrencies() async {
    try {
      var url = Uri.parse('$fxMarketBaseUrl/apicurrencies?api_key=$fxMarketApiKey');
      var response = await http.get(url);
      if (response.statusCode == 200) {
        var jsonResponse = convert.jsonDecode(response.body) as Map<String, dynamic>;
        return jsonResponse;
      } else {
        return null;
      }
    }catch(e){
      return null;
    }
  }

}