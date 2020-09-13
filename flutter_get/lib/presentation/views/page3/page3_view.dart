import 'package:flutter/material.dart';
import 'package:flutter_get/presentation/views/page3/page3_controller.dart';
import 'package:get/get.dart';

class Page3View extends StatefulWidget {
  @override
  _Page3ViewState createState() => _Page3ViewState();
}

class _Page3ViewState extends State<Page3View> {
  Page3Controller controller = Page3Controller();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Page3"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            RaisedButton(
              child: Text("Executar"),
              onPressed: () {
                controller.addListaPessoa({"nome": "teste"});
              },
            ),
            Expanded(
              child: GetX<Page3Controller>(
                builder: (_) {
                  return ListView.separated(
                    itemCount: controller.listaPessoa.length,
                    separatorBuilder: (context, i) {
                      return Divider();
                    },
                    itemBuilder: (context, i) {
                      return ListTile(
                        title: Text("${controller.listaPessoa[i]["nome"]}"),
                      );
                    },
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
