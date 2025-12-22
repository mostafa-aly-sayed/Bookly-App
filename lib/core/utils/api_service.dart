import 'package:dio/dio.dart';

class ApiService{

  final _baseUrl = 'https://www.googleapis.com/books/v1/';
  final Dio _dio;

  ApiService(this._dio);

  Future<Map<String,dynamic>>get({required String endPoint}) async
  {
    var response = await _dio.get('$_baseUrl$endPoint');

    return response.data;
  }

}

//
// import 'dart:convert';
//
// import 'package:http/http.dart' as http;
// import 'package:flutter/material.dart';
//
// class API{
//   Future<dynamic>get({required String URL, @required String? token})async{
//
//     Map<String,String> headers = {};
//     if(token != null)
//     {
//       headers.addAll({
//         'Authorization': 'Bearer $token',
//       });
//     }
//     http.Response response = await http.get(Uri.parse(URL), headers: headers);
//     if(response.statusCode == 200)
//     {
//       return jsonDecode(response.body);
//     }
//     else{
//       throw Exception('There\'s a problem with status code ${response.statusCode}');
//     }
//   }
//
//   Future<dynamic>post({required String URL, @required dynamic body, @required String? token}) async{
//
//     Map<String,String> headers = {};
//     if(headers != null)
//     {
//       headers.addAll({
//         'Authorization': 'Bearer $token',
//       });
//     }
//     http.Response response = await http.post(Uri.parse(URL),
//       body:body,
//       headers: headers,
//     );
//     if(response.statusCode == 200)
//     {
//       Map<String,dynamic> data = jsonDecode(response.body);
//       return data;
//     }
//     else{
//       throw Exception('There\'s an error with status code ${response.statusCode } with body ${jsonDecode(response.body)}');
//     }
//
//   }
//
//   Future<dynamic>put({
//     required String URL,
//     @required dynamic body,
//     @required String? token}) async{
//
//     Map<String,String> headers = {};
//     headers.addAll({
//       'Content-Type': 'application/x-www-form-urlencoded',
//     });
//     if(token != null)
//     {
//       headers.addAll({
//         'Authorization': 'Bearer $token',
//       });
//     }
//     http.Response response = await http.post(Uri.parse(URL),
//       body:body,
//       headers: headers,
//     );
//     if(response.statusCode == 200)
//     {
//       Map<String,dynamic> data = jsonDecode(response.body);
//       return data;
//     }
//     else{
//       throw Exception('There\'s an error with status code ${response.statusCode } with body ${jsonDecode(response.body)}');
//     }
//
//   }
// }