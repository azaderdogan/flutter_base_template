import '../../init/network/response_model_interface.dart';

class BaseError extends IErrorModel {
  final String message;

  BaseError(this.message);
}
