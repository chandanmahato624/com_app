import 'package:com_app/data/repositories/address/address_model.dart';
import 'package:com_app/data/repositories/address/address_repo.dart';
import 'package:com_app/utils/popups/loaders.dart';
import 'package:get/get.dart';

class AddressController extends GetxController {
  static AddressController get instance => Get.find();

  final Rx<AddressModel> selectedAddress = AddressModel.empty().obs;
  final addressRepository = Get.put(AddressRepo());

  /// Fetch all user specific address
  Future<List<AddressModel>> allUserAddresses() async {
    try {
      final addresses = await addressRepository.fetchUserAddress();
      selectedAddress.value = addresses.firstWhere(
          (element) => element.selectedAdresses,
          orElse: () => AddressModel.empty());
      return addresses;
    } catch (e) {
      Tloaders.errorSnackBar(title: 'Address not found', message: e.toString());
      return [];
    }
  }
}
