import '../../constants/enums/local_keys_enum.dart';
import 'package:dio/dio.dart';
import '../cache/locale_manager.dart';
import 'core_dio.dart';
import 'core_dio_interface.dart';

class NetworkManager {
  static NetworkManager? _instance;
  static NetworkManager? get instance {
    _instance ??= NetworkManager._init();
    return _instance!;
  }

  ICoreDio? coreDio;

  NetworkManager._init() {
    final baseOptions = BaseOptions(
        baseUrl: 'https://jsonplaceholder.typicode.com/',
        headers: {
          'val': LocaleManager.instance.getStringValue(PreferencesKeys.TOKEN)
        });
    // _dio = Dio(baseOptions);

    coreDio = CoreDio(baseOptions);

    // _dio.interceptors.add(InterceptorsWrapper(
    //   onRequest: (options) {
    //     options.path += "veli";
    //   },
    //   onError: (e) {
    //     return BaseError(e.message);
    //   },
    // ));
  }
}
