import 'package:flutter/material.dart';
import 'backend/backend.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:csv/csv.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static final FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal() {
    initializePersistedState();
  }

  Future initializePersistedState() async {
    secureStorage = FlutterSecureStorage();
    _donationAmount =
        await secureStorage.getDouble('ff_donationAmount') ?? _donationAmount;
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late FlutterSecureStorage secureStorage;

  double _donationAmount = 5.0;
  double get donationAmount => _donationAmount;
  set donationAmount(double _value) {
    _donationAmount = _value;
    secureStorage.setDouble('ff_donationAmount', _value);
  }

  void deleteDonationAmount() {
    secureStorage.delete(key: 'ff_donationAmount');
  }

  List<double> _donationAmounts = [5.0, 10.0, 15.0, 20.0, 50.0];
  List<double> get donationAmounts => _donationAmounts;
  set donationAmounts(List<double> _value) {
    _donationAmounts = _value;
  }

  void addToDonationAmounts(double _value) {
    _donationAmounts.add(_value);
  }

  void removeFromDonationAmounts(double _value) {
    _donationAmounts.remove(_value);
  }

  void removeAtIndexFromDonationAmounts(int _index) {
    _donationAmounts.removeAt(_index);
  }

  bool _isCustomAmount = false;
  bool get isCustomAmount => _isCustomAmount;
  set isCustomAmount(bool _value) {
    _isCustomAmount = _value;
  }
}

LatLng? _latLngFromString(String? val) {
  if (val == null) {
    return null;
  }
  final split = val.split(',');
  final lat = double.parse(split.first);
  final lng = double.parse(split.last);
  return LatLng(lat, lng);
}

extension FlutterSecureStorageExtensions on FlutterSecureStorage {
  void remove(String key) => delete(key: key);

  Future<String?> getString(String key) async => await read(key: key);
  Future<void> setString(String key, String value) async =>
      await write(key: key, value: value);

  Future<bool?> getBool(String key) async => (await read(key: key)) == 'true';
  Future<void> setBool(String key, bool value) async =>
      await write(key: key, value: value.toString());

  Future<int?> getInt(String key) async =>
      int.tryParse(await read(key: key) ?? '');
  Future<void> setInt(String key, int value) async =>
      await write(key: key, value: value.toString());

  Future<double?> getDouble(String key) async =>
      double.tryParse(await read(key: key) ?? '');
  Future<void> setDouble(String key, double value) async =>
      await write(key: key, value: value.toString());

  Future<List<String>?> getStringList(String key) async =>
      await read(key: key).then((result) {
        if (result == null || result.isEmpty) {
          return null;
        }
        return CsvToListConverter()
            .convert(result)
            .first
            .map((e) => e.toString())
            .toList();
      });
  Future<void> setStringList(String key, List<String> value) async =>
      await write(key: key, value: ListToCsvConverter().convert([value]));
}
