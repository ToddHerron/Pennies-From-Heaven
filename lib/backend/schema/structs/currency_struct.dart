// ignore_for_file: unnecessary_getters_setters
import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CurrencyStruct extends FFFirebaseStruct {
  CurrencyStruct({
    String? cad,
    String? usd,
    String? mxn,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _cad = cad,
        _usd = usd,
        _mxn = mxn,
        super(firestoreUtilData);

  // "CAD" field.
  String? _cad;
  String get cad => _cad ?? '';
  set cad(String? val) => _cad = val;
  bool hasCad() => _cad != null;

  // "USD" field.
  String? _usd;
  String get usd => _usd ?? '';
  set usd(String? val) => _usd = val;
  bool hasUsd() => _usd != null;

  // "MXN" field.
  String? _mxn;
  String get mxn => _mxn ?? '';
  set mxn(String? val) => _mxn = val;
  bool hasMxn() => _mxn != null;

  static CurrencyStruct fromMap(Map<String, dynamic> data) => CurrencyStruct(
        cad: data['CAD'] as String?,
        usd: data['USD'] as String?,
        mxn: data['MXN'] as String?,
      );

  static CurrencyStruct? maybeFromMap(dynamic data) =>
      data is Map<String, dynamic> ? CurrencyStruct.fromMap(data) : null;

  Map<String, dynamic> toMap() => {
        'CAD': _cad,
        'USD': _usd,
        'MXN': _mxn,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'CAD': serializeParam(
          _cad,
          ParamType.String,
        ),
        'USD': serializeParam(
          _usd,
          ParamType.String,
        ),
        'MXN': serializeParam(
          _mxn,
          ParamType.String,
        ),
      }.withoutNulls;

  static CurrencyStruct fromSerializableMap(Map<String, dynamic> data) =>
      CurrencyStruct(
        cad: deserializeParam(
          data['CAD'],
          ParamType.String,
          false,
        ),
        usd: deserializeParam(
          data['USD'],
          ParamType.String,
          false,
        ),
        mxn: deserializeParam(
          data['MXN'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'CurrencyStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is CurrencyStruct &&
        cad == other.cad &&
        usd == other.usd &&
        mxn == other.mxn;
  }

  @override
  int get hashCode => const ListEquality().hash([cad, usd, mxn]);
}

CurrencyStruct createCurrencyStruct({
  String? cad,
  String? usd,
  String? mxn,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    CurrencyStruct(
      cad: cad,
      usd: usd,
      mxn: mxn,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

CurrencyStruct? updateCurrencyStruct(
  CurrencyStruct? currency, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    currency
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addCurrencyStructData(
  Map<String, dynamic> firestoreData,
  CurrencyStruct? currency,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (currency == null) {
    return;
  }
  if (currency.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  if (!forFieldValue && currency.firestoreUtilData.clearUnsetFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final currencyData = getCurrencyFirestoreData(currency, forFieldValue);
  final nestedData = currencyData.map((k, v) => MapEntry('$fieldName.$k', v));

  final create = currency.firestoreUtilData.create;
  firestoreData.addAll(create ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getCurrencyFirestoreData(
  CurrencyStruct? currency, [
  bool forFieldValue = false,
]) {
  if (currency == null) {
    return {};
  }
  final firestoreData = mapToFirestore(currency.toMap());

  // Add any Firestore field values
  currency.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getCurrencyListFirestoreData(
  List<CurrencyStruct>? currencys,
) =>
    currencys?.map((e) => getCurrencyFirestoreData(e, true)).toList() ?? [];
