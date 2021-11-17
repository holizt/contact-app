import '../../utils/ui/error_message_snackbar.dart';

import 'app_exception.dart';

class BaseErrorHelper {
  dynamic handleError(error) {
    if (error is BadRequestException) {
      var message = error.message;
      errorMessageSnackbar(message.toString());
    } else if (error is FetchDataException) {
      var message = error.message;
      errorMessageSnackbar(message.toString());
    } else if (error is ApiNotRespondingException) {
      errorMessageSnackbar('Oops! It took longer to respond.');
    } else if (error is SomethingDataException) {
      var message = error.message;
      errorMessageSnackbar(message.toString());
    }
  }
}
