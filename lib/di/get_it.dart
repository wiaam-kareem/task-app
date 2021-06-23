import 'package:get_it/get_it.dart';
import 'package:task_app/services/auth_service.dart';
import 'package:task_app/services/ticket_service.dart';
import 'package:task_app/view_models/login_view_model.dart';
import 'package:task_app/view_models/tickets_view_model.dart';

final getItInstance = GetIt.I;
Future init() async {
  getItInstance.registerLazySingleton<AuthService>(() => AuthService());
  getItInstance.registerLazySingleton<TicketService>(() => TicketService());

  getItInstance.registerFactory(
    () => AuthViewModel(getItInstance()),
  );

  getItInstance.registerFactory(
    () => TicketsViewModel(getItInstance()),
  );
}
