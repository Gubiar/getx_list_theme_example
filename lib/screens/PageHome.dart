import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_list_theme/controller/ClientesController.dart';
import 'package:getx_list_theme/models/ClienteObj.dart';
import 'package:getx_list_theme/screens/PageDois.dart';

class PageHome extends StatelessWidget {
  PageHome({Key? key}) : super(key: key);
  ClientesController clientes = Get.put(ClientesController(), permanent: true);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
        actions: [
          IconButton(
            onPressed: () => Get.changeThemeMode(Get.isDarkMode? ThemeMode.light: ThemeMode.dark),
            icon: const Icon(
              Icons.color_lens_sharp
            )
          ),
          IconButton(
              onPressed: () => Get.to(() => PageDois()),
              icon: const Icon(
                  Icons.run_circle
              )
          )
        ],
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height - 70,
        child: Obx(() => ListView.builder(
            itemCount: clientes.lstCliente.length,
            itemBuilder: (BuildContext context, int index) {
              return getVisualItemList(clientes.lstCliente[index]);
            })),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          ClienteObj c = ClienteObj('nome ${DateTime.now().toString()}', 'apelido ${DateTime.now().toString()}');
          clientes.addCliente(c);
        },
      ),
    );
  }

  Widget getVisualItemList(ClienteObj item) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        children: [
          Text(item.nome!),
          Text(item.apelido!),
        ],
      ),
    );
  }
}
