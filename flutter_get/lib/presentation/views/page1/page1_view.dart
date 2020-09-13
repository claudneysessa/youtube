import 'package:flutter/material.dart';
import 'package:flutter_get/presentation/views/page1/page1_controller.dart';
import 'package:get/get.dart';

class Page1View extends StatefulWidget {
  @override
  _Page1ViewState createState() => _Page1ViewState();
}

class _Page1ViewState extends State<Page1View> {
  Page1Controller controller = Page1Controller();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Page1"),
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
            GetX<Page1Controller>(
              builder: (_) {
                return Padding(
                  padding: const EdgeInsets.all(30),
                  child: Text(
                    "${controller.contador}",
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
