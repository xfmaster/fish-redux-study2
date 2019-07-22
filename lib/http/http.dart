import 'dart:convert';

import 'package:dio/dio.dart';

import 'API.dart';

Dio dio = new Dio(); // 使用默认配置
void initDioOptions(call) {
// 配置dio实例
  dio.options.baseUrl = BASE_URL;
  dio.options.connectTimeout = 10000; //5s
  dio.options.receiveTimeout = 10000;
}

Future request(
  String requestMethod,
  String method,
  Map<String, dynamic> params,
) async {
  if (params == null) {
    params = new Map();
  }
  try {
    switch (requestMethod.toUpperCase()) {
      case 'GET':
        var res = await dio.get(method, queryParameters: params);
        var data = res.data;
        var code = data['code'];
        print(code);
        if (code == 200) {
          return await data['result'];
        } else {
          return "";
        }
        break;
      case 'POST':
        return await dio.post(method, queryParameters: params);
        break;
    }
  } catch (e) {
    return {"error": 0, "body": null, "msg": '服务器错误'};
  }
}

Future requestGet(String method, {Map<String, dynamic> params}) async {
  return request("get", method, params);
}

Future requestPost(String method, {Map<String, dynamic> params}) async {
  return request("post", method, params);
}
