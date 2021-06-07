import '../../init/network/core_dio_interface.dart';
import '../../init/network/network_manager.dart';
import 'package:flutter/material.dart';
import 'package:logger/logger.dart';

import '../../logger.dart';

abstract class BaseViewModel {
  String? _title;
  bool? _busy;
  Logger? log;
  bool? _isDisposed = false;
  BuildContext? context;
  ICoreDio? coreDio = NetworkManager.instance!.coreDio;
  BaseViewModel({
    bool busy = false,
    String? title,
  })  : _busy = busy,
        _title = title {
    log = getLogger(title ?? this.runtimeType.toString());
  }

  bool get busy => this._busy!;
  bool get isDisposed => this._isDisposed!;
  String get title => _title ?? this.runtimeType.toString();

  void setContext(BuildContext context);
  void init();
}
