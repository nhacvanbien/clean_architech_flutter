import 'package:clean_architech_flutter/core/common/result.dart';

abstract class UseCase<R, P>{
  Future<Result<R>> call({P param});
}