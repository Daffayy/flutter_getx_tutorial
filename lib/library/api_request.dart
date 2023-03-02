import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';

class ApiRequest{
  final String? url;
  final Map<String,dynamic>? data;

  ApiRequest({
    this.url,
    this.data,
  });

  Dio _dio (){
    return Dio(BaseOptions(headers: {
      "Authorizaton" : "B ....",
    }));
  }

  void get ({
    Function() ? beforeSend,
    Function(dynamic data)? onSuccess,
    Function(dynamic error)? onError,
}){
    _dio().get(url!, queryParameters: data).then((res){
      if(onSuccess != null) onSuccess(res.data);
    }).catchError((error){
      if(onError != null) onError(error);
    });
  }
}