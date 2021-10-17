
import 'package:clean_architech_flutter/core/common/result.dart';
import 'package:clean_architech_flutter/core/domain/repositories/dio_exception_handler.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

typedef ModelToEntityMapper<Entity> = Entity Function(dynamic);

abstract class BaseRepository {
  Future<Result<Entity>> apiCall<Entity>(
    Future<HttpResponse> serviceApi, {
    required ModelToEntityMapper<Entity> mapper,
  }) async {
    try {
      HttpResponse response = await serviceApi;
      return Success(mapper(response.data));
    } on Exception catch (exception) {
      if (exception is DioError) {
        final message = DioExceptionHandler.fromDioError(exception).toString();
        return Error(message);
      }
    }
    return const Error("An error occurred. please try again!");
  }
}
