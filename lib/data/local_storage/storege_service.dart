import 'dart:convert' as convert;

import 'package:get_storage/get_storage.dart';

abstract class LocalStorage {
  Future<void> write(final String key, final dynamic json);
  dynamic read<S>(final String key);
  void remove(final String key);
  void removeAll();
}

class StorageService implements LocalStorage {
  StorageService() {
    _init();
  }

  late GetStorage storage;

  void _init() {
    storage = GetStorage();
  }

  @override
  Future<void> write(final String key, final dynamic value) async {
    await storage.write(key, convert.jsonEncode(value));
  }

  @override
  dynamic read<S>(final String key) {
    final value = storage.read(key);
    if (value == null) return;
    return convert.jsonDecode(value.toString());
  }


  @override
  void remove(final String key) {
    GetStorage().remove(key);
  }

  @override
  void removeAll() {
    throw UnimplementedError();
  }


}
