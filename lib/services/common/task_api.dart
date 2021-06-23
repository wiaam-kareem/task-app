import 'package:dio/dio.dart';

class TaskApi {
  static const BASE_URL =
      'https://f4890d0b-b4bc-4f78-a6b2-c90f100fba27.mock.pstmn.io/mgm1.dishtele.com/api/v1';

  static BaseOptions _baseOptions = BaseOptions(
    baseUrl: BASE_URL,
    headers: {
      'Content-Type': 'application/json',
      'Authorization':
          'Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOlwvXC8xOTIuMTY4LjIyNC4yNzo4NVwvU3VwcG9ydC1CYWNrLUVuZFwvcHVibGljXC9hcGlcL3YxXC91c2Vyc1wvbG9naW4iLCJpYXQiOjE2MDg5ODQ5NjEsImV4cCI6MTY0MDA4ODk2MSwibmJmIjoxNjA4OTg0OTYxLCJqdGkiOiJjMk1mVUllRkwzVDlUclEwIiwic3ViIjoyODQsInBydiI6IjIzYmQ1Yzg5NDlmNjAwYWRiMzllNzAxYzQwMDg3MmRiN2E1OTc2ZjcifQ.rXBsYXaILldPhsaBsiupvJ45TrYs3Yygl9i7Br6Ny_U'
    },
  );

  static Dio dio = Dio(
    _baseOptions,
  );
}
