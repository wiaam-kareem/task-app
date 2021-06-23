import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:task_app/common/failure.dart';
import 'package:task_app/models/network_exception.dart';

import 'common/task_api.dart';

class AuthService {
  Future<Either<NetworkExceptions, Unit>> login(
      {required String userName, required String password}) async {
    try {
      //  await Future.delayed(Duration(seconds: 5));
      await TaskApi.dio.post(
        "/users/login",
        data: {"username": userName, "password": password},
      );
      return right(unit);
    } catch (e) {
      return left(NetworkExceptions.getDioException(e));
    }
  }
}
