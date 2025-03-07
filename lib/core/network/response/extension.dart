part of '../network.dart';

extension NetworkResponseExtension on NetworkResponse {
  Failure getMessage() {
    switch (this) {
      case NetworkResponse.SUCCESS:
        return Failure(
          code: ResponseCode.SUCCESS,
          message: ResponseMessage.SUCCESS,
        );
      case NetworkResponse.NO_CONTENT:
        return Failure(
          code: ResponseCode.NO_CONTENT,
          message: ResponseMessage.NO_CONTENT,
        );
      case NetworkResponse.BAD_REQUEST:
        return Failure(
          code: ResponseCode.BAD_REQUEST,
          message: ResponseMessage.BAD_REQUEST,
        );
      case NetworkResponse.FORBIDDEN:
        return Failure(
          code: ResponseCode.FORBIDDEN,
          message: ResponseMessage.FORBIDDEN,
        );
      case NetworkResponse.UNAUTHORIZED:
        return Failure(
          code: ResponseCode.UNAUTORISED,
          message: ResponseMessage.UNAUTHORIZED,
        );
      case NetworkResponse.NOT_FOUND:
        return Failure(
          code: ResponseCode.NOT_FOUND,
          message: ResponseMessage.NOT_FOUND,
        );
      case NetworkResponse.INTERNAL_SERVER_ERROR:
        return Failure(
          code: ResponseCode.INTERNAL_SERVER_ERROR,
          message: ResponseMessage.INTERNAL_SERVER_ERROR,
        );
      case NetworkResponse.CONNECT_TIMEOUT:
        return Failure(
          code: ResponseCode.CONNECT_TIMEOUT,
          message: ResponseMessage.CONNECT_TIMEOUT,
        );
      case NetworkResponse.CANCEL:
        return Failure(
          code: ResponseCode.CANCEL,
          message: ResponseMessage.CANCEL,
        );
      case NetworkResponse.RECEIVE_TIMEOUT:
        return Failure(
          code: ResponseCode.RECIEVE_TIMEOUT,
          message: ResponseMessage.RECEIVE_TIMEOUT,
        );
      case NetworkResponse.SEND_TIMEOUT:
        return Failure(
          code: ResponseCode.SEND_TIMEOUT,
          message: ResponseMessage.SEND_TIMEOUT,
        );
      case NetworkResponse.CACHE_ERROR:
        return Failure(
          code: ResponseCode.CACHE_ERROR,
          message: ResponseMessage.CACHE_ERROR,
        );
      case NetworkResponse.NO_INTERNET_CONNECTION:
        return Failure(
          code: ResponseCode.NO_INTERNET_CONNECTION,
          message: ResponseMessage.NO_INTERNET_CONNECTION,
        );
      case NetworkResponse.DEFAULT:
        return Failure(
          code: ResponseCode.DEFAULT,
          message: ResponseMessage.DEFAULT,
        );
    }
  }
}
