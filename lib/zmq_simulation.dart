import 'dart:ffi';
import 'dart:io';

import 'zmq_s_bindings_generated.dart';

final DynamicLibrary _dylib = () {
  if (Platform.isMacOS || Platform.isIOS) {
    return DynamicLibrary.process();
  }
  throw UnsupportedError('Unknown platform: ${Platform.operatingSystem}');
}();

loadLibraryAndLookupSymbol() {
  final zmqLoadingLib = ZmqBindings(_dylib);

  final context = zmqLoadingLib.zmq_ctx_new();
}
