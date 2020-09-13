import 'package:get/state_manager.dart';

class Page3Controller extends GetxController {
  final _listaPessoa = <Map<String, dynamic>>[].obs;

  get listaPessoa => this._listaPessoa;

  void addListaPessoa(item) => this._listaPessoa.add(item);
}
