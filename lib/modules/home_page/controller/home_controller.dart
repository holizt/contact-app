import '/modules/home_page/models/contact_model.dart';
import '/utils/services/api_service.dart';
import '/utils/ui/error_message_snackbar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  final _apiService = ApiService();
  final _listContact = <ContactModel>[].obs;

  var searchCtr = TextEditingController();
  var isloading = false.obs;

  List<ContactModel> get list => _listContact;
  static HomeController get to => Get.find();

  String query = '';

  @override
  void onInit() {
    _getDataContact(query);
    super.onInit();
  }

  Future<void> _getDataContact(String query) async {
    try {
      isloading(true);
      var data = await _apiService.getContact(query);
      if (data != null) {
        _listContact.value = data;
      } else {
        errorMessageSnackbar('Data not found');
      }
    } finally {
      isloading(false);
    }
  }

  Future<void> searchContact(String query) async {
    var contact = await _apiService.getContact(query);
    this.query = query;
    _listContact.value = contact!;
  }
}
