import 'package:get/get.dart';
import 'package:getx_list_theme/models/ClienteObj.dart';

class ClientesController extends GetxController {
  RxList<ClienteObj> _lstClientes = <ClienteObj>[].obs;

  void addCliente(ClienteObj cliente){
    _lstClientes.add(cliente);
  }

  RxList<ClienteObj> get lstCliente {
    return _lstClientes;
  }

  void set novaListaClientes(RxList<ClienteObj> lstNova) {
    _lstClientes = List.from(lstNova) as RxList<ClienteObj>;
  }

}