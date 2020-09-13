import 'package:get/state_manager.dart';

class Contador {
  var valor;
  Contador({this.valor = 0});
}

class Page2Controller extends GetxController {
  final _contador = Contador().obs;

  get contador => this._contador.value;
  set contador(value) => this._contador.value = value;

  void incrementarCotador() {
    this._contador.update(
      (val) {
        val.valor++;
      },
    );
  }
}
