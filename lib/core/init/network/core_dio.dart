
import 'dart:io';

import '../../extensions/network/network_type_extension.dart';
import 'package:dio/dio.dart';

import '../../base/model/base_error.dart';
import '../../base/model/base_model.dart';
import '../../constants/enums/http_type_enum.dart';
import 'i_core_dio.dart';
import 'i_response_model.dart';

part './network_core/core_operations.dart';

class CoreDio with DioMixin implements Dio, ICoreDio {
  CoreDio(this.options) {
    options = options;
    interceptors.add(InterceptorsWrapper());
  }
  @override
  // ignore: overridden_fields
  final BaseOptions options;

  @override
  Future<IResponseModel<R>> send<R, T extends BaseModel>(
    String path, {
    required HttpTypes type,
    required BaseModel<T> parseModel,
    dynamic data,
    Map<String, dynamic>? queryParameters,
    void Function(int, int)? onReceiveProgress,
  }) async {
    final response = await request<dynamic>(
      path,
      data: data,
      options: Options(
        method: type.rawValue,
      ),
    );
    switch (response.statusCode) {
      case HttpStatus.ok:
      case HttpStatus.accepted:
        final model = _responseParser<R, T>(parseModel, response.data);
        return ResponseModel<R>(data: model);
      default:
        return ResponseModel(error: BaseError('message'));
    }
  }
}