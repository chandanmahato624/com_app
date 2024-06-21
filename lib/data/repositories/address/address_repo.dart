import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:com_app/data/repositories/address/address_model.dart';
import 'package:com_app/data/repositories/authentication_repo.dart';
import 'package:get/get.dart';

class AddressRepo extends GetxController {
  static AddressRepo get instance => Get.find();

  final _db = FirebaseFirestore.instance;

  Future<List<AddressModel>> fetchUserAddress() async {
    try {
      final userId = AuthenticationRepository.instance.authUser!.uid;
      if (userId.isEmpty) {
        throw 'Unable to find user information. Try agin in few minutes.';
      }

      final result = await _db
          .collection('Users')
          .doc(userId)
          .collection('Addresses')
          .get();
      return result.docs
          .map((documentSnapshot) =>
              AddressModel.fromDocumentSnapshot(documentSnapshot))
          .toList();
    } catch (e) {
      throw 'Something went wrong while fatching Address Information. Try agin Later';
    }
  }
}
