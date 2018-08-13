import 'dart:async';

import 'package:dio/dio.dart';
import 'package:memoir/app/constants.dart';
import 'package:memoir/app/model/bean/bean.dart';
import 'package:memoir/app/model/bean/story.dart';
import 'package:memoir/framework/utils.dart';
import 'package:memoir/framework/utils/parse.dart';

class Model {}

class Api {
  ///
  /// 获取story列表
  ///
  static Future<List<Story>> fetchStoryList(Map<String, dynamic> data) {
    return dio
        .get('/story')
        .then(list)
        .then((list) => list.map((map) => Story.fromJson(map)).toList());
  }

  ///
  /// 新增story
  ///
  static Future<Bean> addStory(Map<String, dynamic> data) {
    return dio
        .post('/add_story', data: data)
        .then((bean) => Bean.fromJson(bean.data));
  }
}

final dio = Dio()
  ..options.baseUrl = BASE_URL
  ..interceptor.request.onSend = (options) {
    L.d('${options.baseUrl}${options.path}');
    return options;
  }
  ..interceptor.response.onSuccess = (response) {
    L.d(response.toString());
    return response;
  }
  ..interceptor.response.onError = (error) {
    L.d('请求错误:${error.message}');
    if (error.response != null) {
      switch (error.type) {
        case DioErrorType.CANCEL:
          showToast('取消请求');
          break;
        case DioErrorType.CONNECT_TIMEOUT:
          showToast('请求超时');
          break;
        case DioErrorType.RECEIVE_TIMEOUT:
          showToast('接收超时');
          break;
        case DioErrorType.RESPONSE:
          final statusCode = error.response.statusCode;
          if (statusCode >= 400 && statusCode <= 417) {
            showToast('访问地址异常，请稍后重试');
          } else if (statusCode >= 500 && statusCode <= 505) {
            showToast('服务器繁忙');
          }
          break;
        case DioErrorType.DEFAULT:
          showToast('网络异常, 请检查网络设置');
          break;
        default:
          showToast('网络异常, 请检查网络设置');
          break;
      }
    } else {
      showToast('网络异常, 请检查网络设置');
    }
    return error;
  };
