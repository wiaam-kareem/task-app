import 'package:intl/intl.dart';
import 'package:task_app/models/pagination.dart';

class Helper {
  static PaginationFetchNext paginationFetchNext(Pagination _pagination) {
    int currentPage = 1;
    bool fetchNext = false;

    if (_pagination.step! < _pagination.lastStep!) {
      currentPage = _pagination.step! + 1;
      fetchNext = true;
    } else if (_pagination.step == 0 && _pagination.lastStep == 0) {
      currentPage = _pagination.step! + 1;
      fetchNext = true;
    } else {
      fetchNext = false;
    }

    return new PaginationFetchNext(currentPage, fetchNext);
  }

  static String fromIntToTime(int i) {
    final DateTime stringTime = DateTime.parse(i.toString());
    return DateFormat.jm().format(stringTime).toString();
  }
}

class PaginationFetchNext {
  final int currentPage;
  final bool fetchNext;

  PaginationFetchNext(this.currentPage, this.fetchNext);
}
