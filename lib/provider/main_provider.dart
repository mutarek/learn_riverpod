import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final mainProvider =
    ChangeNotifierProvider<MainProvider>((ref) => MainProvider());

class MainProvider extends ChangeNotifier {
  var name = 'barek';

  chnageName() {
    name = 'tarek';
    notifyListeners();
  }
}
