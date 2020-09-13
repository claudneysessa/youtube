import 'package:flutter/material.dart';
import 'package:flutter_get/presentation/views/Page2/Page2_controller.dart';
import 'package:get/get.dart';

class Page2View extends StatefulWidget {
  @override
  _Page2ViewState createState() => _Page2ViewState();
}

class _Page2ViewState extends State<Page2View> {
  Page2Controller controller = Page2Controller();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Page2"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // Obx(
            //   () => Padding(
            //     padding: const EdgeInsets.all(30),
            //     child: Text(
            //       "${controller.contador}",
            //       textAlign: TextAlign.center,
            //       style: TextStyle(
            //         fontSize: 30,
            //       ),
            //     ),
            //   ),
            // ),
            GetX<Page2Controller>(
              builder: (_) {
                return Padding(
                  padding: const EdgeInsets.all(30),
                  child: Text(
                    "${controller.contador.valor}",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 30,
                    ),
                  ),
                );
              },
            ),
            RaisedButton(
              child: Text("Executar"),
              onPressed: () {
                controller.incrementarCotador();
              },
            )
          ],
        ),
      ),
    );
  }
}
