import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_base_project/widgets/error-widget.dart';
import 'package:get/get.dart';

class ErrorHandler {
  static String _handleError(Error error) {
    String errorDescription = "";
    if (error is DioError) {
      DioError dioError = error as DioError;
      switch (dioError.type) {
        case DioErrorType.cancel:
          errorDescription = "Request was cancelled";
          break;
        case DioErrorType.connectTimeout:
          errorDescription = "Connection timeout";
          break;
        case DioErrorType.other:
          errorDescription = "Connection failed due to internet connection";
          break;
        case DioErrorType.receiveTimeout:
          errorDescription = "Connection timeout";
          break;
        case DioErrorType.response:
          errorDescription =
              "Received invalid status code: ${dioError.response?.statusCode}";
          break;
        case DioErrorType.sendTimeout:
          errorDescription = "Send timeout in connection with server";
          break;
      }
    } else {
      errorDescription = "Unexpected error occured";
    }
    return errorDescription;
  }

  static catchError(err) {
    try {
      //hide loader
      Get.back();
      var error = ErrorHandler._handleError(err);
      Get.bottomSheet(
          ErrorSheet(
              title: "Something went wrong",
              body: error,
              icon: Icon(Icons.error)),
          backgroundColor: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(30), topLeft: Radius.circular(30)),
          ),
          barrierColor: Colors.grey[900]?.withOpacity(0.8),
          isDismissible: false,
          elevation: 20);
    } catch (ex) {
      Get.back();
    }
  }
}
