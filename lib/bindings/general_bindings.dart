import 'package:get/get.dart';
import 'package:com_app/features/authentication/Networks/network_manager.dart';

class GeneralBindings extends Bindings {
  @override
  void dependencies() {
    Get.put(NetworkManager());

    /// --------20.5
  }
}
