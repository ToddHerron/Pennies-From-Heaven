import 'package:flutter/material.dart';
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:csv/csv.dart';
import 'package:synchronized/synchronized.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static final FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  Future initializePersistedState() async {
    secureStorage = FlutterSecureStorage();
    await _safeInitAsync(() async {
      _donationAmount =
          await secureStorage.getDouble('ff_donationAmount') ?? _donationAmount;
    });
    await _safeInitAsync(() async {
      _CCHolderName =
          await secureStorage.getString('ff_CCHolderName') ?? _CCHolderName;
    });
    await _safeInitAsync(() async {
      _CCNumber = await secureStorage.getString('ff_CCNumber') ?? _CCNumber;
    });
    await _safeInitAsync(() async {
      _CCExpiryDate =
          await secureStorage.getString('ff_CCExpiryDate') ?? _CCExpiryDate;
    });
    await _safeInitAsync(() async {
      _CCSecurityCode =
          await secureStorage.getString('ff_CCSecurityCode') ?? _CCSecurityCode;
    });
    await _safeInitAsync(() async {
      _wizardPage = await secureStorage.getInt('ff_wizardPage') ?? _wizardPage;
    });
    await _safeInitAsync(() async {
      _clientID = await secureStorage.getString('ff_clientID') ?? _clientID;
    });
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

  void updateDonationAmountsAtIndex(
    int _index,
    double Function(double) updateFn,
  ) {
    _donationAmounts[_index] = updateFn(_donationAmounts[_index]);
  }

  bool _isCustomAmount = false;
  bool get isCustomAmount => _isCustomAmount;
  set isCustomAmount(bool _value) {
    _isCustomAmount = _value;
  }

  String _CCHolderName = '';
  String get CCHolderName => _CCHolderName;
  set CCHolderName(String _value) {
    _CCHolderName = _value;
    secureStorage.setString('ff_CCHolderName', _value);
  }

  void deleteCCHolderName() {
    secureStorage.delete(key: 'ff_CCHolderName');
  }

  String _CCNumber = '';
  String get CCNumber => _CCNumber;
  set CCNumber(String _value) {
    _CCNumber = _value;
    secureStorage.setString('ff_CCNumber', _value);
  }

  void deleteCCNumber() {
    secureStorage.delete(key: 'ff_CCNumber');
  }

  String _CCExpiryDate = '';
  String get CCExpiryDate => _CCExpiryDate;
  set CCExpiryDate(String _value) {
    _CCExpiryDate = _value;
    secureStorage.setString('ff_CCExpiryDate', _value);
  }

  void deleteCCExpiryDate() {
    secureStorage.delete(key: 'ff_CCExpiryDate');
  }

  String _CCSecurityCode = '';
  String get CCSecurityCode => _CCSecurityCode;
  set CCSecurityCode(String _value) {
    _CCSecurityCode = _value;
    secureStorage.setString('ff_CCSecurityCode', _value);
  }

  void deleteCCSecurityCode() {
    secureStorage.delete(key: 'ff_CCSecurityCode');
  }

  int _wizardPage = 0;
  int get wizardPage => _wizardPage;
  set wizardPage(int _value) {
    _wizardPage = _value;
    secureStorage.setInt('ff_wizardPage', _value);
  }

  void deleteWizardPage() {
    secureStorage.delete(key: 'ff_wizardPage');
  }

  String _clientID = '';
  String get clientID => _clientID;
  set clientID(String _value) {
    _clientID = _value;
    secureStorage.setString('ff_clientID', _value);
  }

  void deleteClientID() {
    secureStorage.delete(key: 'ff_clientID');
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

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}

extension FlutterSecureStorageExtensions on FlutterSecureStorage {
  static final _lock = Lock();

  Future<void> writeSync({required String key, String? value}) async =>
      await _lock.synchronized(() async {
        await write(key: key, value: value);
      });

  void remove(String key) => delete(key: key);

  Future<String?> getString(String key) async => await read(key: key);
  Future<void> setString(String key, String value) async =>
      await writeSync(key: key, value: value);

  Future<bool?> getBool(String key) async => (await read(key: key)) == 'true';
  Future<void> setBool(String key, bool value) async =>
      await writeSync(key: key, value: value.toString());

  Future<int?> getInt(String key) async =>
      int.tryParse(await read(key: key) ?? '');
  Future<void> setInt(String key, int value) async =>
      await writeSync(key: key, value: value.toString());

  Future<double?> getDouble(String key) async =>
      double.tryParse(await read(key: key) ?? '');
  Future<void> setDouble(String key, double value) async =>
      await writeSync(key: key, value: value.toString());

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
      await writeSync(key: key, value: ListToCsvConverter().convert([value]));
}
