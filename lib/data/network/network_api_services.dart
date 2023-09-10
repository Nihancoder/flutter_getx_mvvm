import 'dart:convert';
import 'dart:io';

import 'package:getx_flutter/data/app_exceptions.dart';
import 'package:getx_flutter/data/network/base_api_services.dart';
import 'package:http/http.dart' as http;

class NetworkApiServices extends BaseApiServices{
  //For Get Api
  @override
  Future getApi(String url) async {

    dynamic responseJson;
    try{
      final response = await http.get(Uri.parse(url)).timeout(const Duration(seconds: 10));
      responseJson = returnResponse(response);
    } on SocketException {
      throw InternetExpention('');
    } on RequestTimeout {
      throw RequestTimeout('');
    }
    return responseJson;


  }
  //For post api
  @override
  Future postApi(var data, String url) async {

    dynamic responseJson;
    try{
      final response = await http.post(
          Uri.parse(url),
          body: jsonEncode(data)
      ).timeout(const Duration(seconds: 10));
      responseJson = returnResponse(response);
    } on SocketException {
      throw InternetExpention('');
    } on RequestTimeout {
      throw RequestTimeout('');
    }
    return responseJson;
  }
  // Api Error Status code handling
  dynamic returnResponse(http.Response response){
    switch(response.statusCode){
      case 200:
        dynamic responseJson = response.body;
        return responseJson;
      case 400:
        throw InvalidUrlException('');
      default:
        throw FetchDataException('Error occured while commiunication with server' + response.statusCode.toString());

    }
  }






  
}