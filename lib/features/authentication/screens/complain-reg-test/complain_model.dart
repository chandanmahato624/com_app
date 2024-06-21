import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:com_app/utils/exceptions/platform_exceptions.dart';
import 'package:com_app/utils/formatters/formatter.dart';

class ComplainModel {
  // keep those values final which we don not want to update
  final String id;
  String complain;
  String fullName;
  String phoneNumber;
  String hostelName;
  String roomNo;

  /// Constructor for User model
  ComplainModel({
    this.id = "test",
    required this.complain,
    required this.fullName,
    required this.hostelName,
    required this.roomNo,
    required this.phoneNumber,
  });

  /// Helper funcation for formattedPhone
  String get formattedPhoneNo => TFormatter.formatPhoneNumber(phoneNumber);

  /// static funcation to split full name into first name and last name
  static List<String> nameParts(fullName) => fullName.split(" ");

  /// static funcation  to generate a username from the full name
  static String generateUsername(fullName) {
    List<String> nameparts = fullName.split(" ");
    String firstName = nameparts[0].toLowerCase();
    String lastName = nameparts.length > 1 ? nameparts[1].toLowerCase() : "";

    String camelCaseUsername = '$firstName$lastName';
    String usernameWithPrefix = "cwt_$camelCaseUsername";
    return usernameWithPrefix;
  }

  /// static funcation to create an empty user model.
  static ComplainModel empty() => ComplainModel(
        id: '',
        complain: '',
        fullName: '',
        hostelName: '',
        roomNo: '',
        phoneNumber: '',
      );

  /// convert model to JSon structcture for storing data in firebase
  Map<String, dynamic> toJson() {
    return {
      'FullName': fullName,
      'Complain': complain,
      'HostelName': hostelName,
      'RoomNo': roomNo,
      'PhoneNumber': phoneNumber,
    };
  }

  /// Factory method to create a UserModel from a Firebase documents snapshot.
  factory ComplainModel.fromSnapshot(
      DocumentSnapshot<Map<String, dynamic>> document) {
    if (document.data() != null) {
      final data = document.data()!;
      return ComplainModel(
        id: document.id,
        fullName: data['FullName'] ?? '',
        complain: data['Complain'] ?? '',
        hostelName: data['HostelName'] ?? '',
        roomNo: data['RoomNo'] ?? '',
        phoneNumber: data['PhoneNumber'] ?? '',
      );
    } else {
      // Return a default UserModel instance if document.data() is null
      return ComplainModel.empty();
    }
  }
}
