import '../../constant/constant.dart';
import '../../modules/home_page/models/contact_model.dart';
import '../../utils/handle_error/api_base_helper.dart';
import '../../utils/handle_error/base_error_helper.dart';

class ApiService with BaseErrorHelper {
  final _helper = ApiBaseHelper();

  Future<List<ContactModel>?> getContact(String query) async {
    var response = await _helper.get(url: baseUrl).catchError(handleError);

    if (response != null) {
      return contactModelFromJson(response, query);
    }
  }
}
