import 'package:get/state_manager.dart';

class Page1Controller extends GetxController {
  final _contador = 0.obs;

  get contador => this._contador.value;
  set contador(value) => this._contador.value = value;

  void incrementarCotador() {
    this.contador++;
  }
}
