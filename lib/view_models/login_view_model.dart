import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:mobx/mobx.dart';
import 'package:task_app/common/failure.dart';
import 'package:task_app/models/network_exception.dart';
import 'package:task_app/services/auth_service.dart';
part 'login_view_model.g.dart';

enum AuthState { loading, authenticated, unAuthenticated }

class AuthViewModel extends _AuthViewModel with _$AuthViewModel {
  AuthViewModel(AuthService authService) : super(authService);
}

abstract class _AuthViewModel with Store {
  final AuthService authService;

  _AuthViewModel(this.authService);
  @observable
  String? errorMessage;
  @observable
  AuthState state = AuthState.unAuthenticated;
  @action
  Future tryLogIn({required String userName, required String password}) async {
    try {
      errorMessage = null;
      state = AuthState.loading;

      print("$userName +''+$password");
      authService
          .login(userName: userName, password: password)
          .then((value) => value.fold((l) {
                errorMessage = NetworkExceptions.getErrorMessage(l);
                state = AuthState.unAuthenticated;
              }, (r) {
                state = AuthState.authenticated;
              }));
    } catch (e) {
      print('chatching error in model');
      return NetworkExceptions.getErrorMessage(
          NetworkExceptions.defaultError('something went wrong !'));
    }
  }
}
