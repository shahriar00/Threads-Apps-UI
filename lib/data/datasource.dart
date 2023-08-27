import 'package:threadsappui/data/data.dart';
import 'package:threadsappui/data/threads.dart';

abstract class Ithred {
  List<thread> getThread();
}

class Remotedatasource extends Ithred {
  @override
  List<thread> getThread() {
    return listThread()
        .map((jsonObject) => thread.formJson(jsonObject))
        .toList();
  }
}
