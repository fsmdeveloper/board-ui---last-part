import 'package:board_ui/src/hiveModels/lang.dart';
import 'package:get/get.dart';
import 'package:path_provider/path_provider.dart' as path_provider;
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';

class HiveService extends GetxService {
  Future<void> initHive() async {
    try {
      final appDocumentDir =
          await path_provider.getApplicationDocumentsDirectory();

      Hive..init(appDocumentDir.path);

      Hive..registerAdapter(LangAdapter());

      await Hive.openBox<Lang>('lang');

      print('Hive initialized');
    } catch (e) {
      print(e);
    }
  }
}
