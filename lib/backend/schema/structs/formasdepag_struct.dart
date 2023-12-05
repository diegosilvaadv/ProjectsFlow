// ignore_for_file: unnecessary_getters_setters
import '/backend/algolia/serialization_util.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class FormasdepagStruct extends FFFirebaseStruct {
  FormasdepagStruct({
    String? pix,
    String? cardaodecredito,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _pix = pix,
        _cardaodecredito = cardaodecredito,
        super(firestoreUtilData);

  // "pix" field.
  String? _pix;
  String get pix => _pix ?? '';
  set pix(String? val) => _pix = val;
  bool hasPix() => _pix != null;

  // "cardaodecredito" field.
  String? _cardaodecredito;
  String get cardaodecredito => _cardaodecredito ?? '';
  set cardaodecredito(String? val) => _cardaodecredito = val;
  bool hasCardaodecredito() => _cardaodecredito != null;

  static FormasdepagStruct fromMap(Map<String, dynamic> data) =>
      FormasdepagStruct(
        pix: data['pix'] as String?,
        cardaodecredito: data['cardaodecredito'] as String?,
      );

  static FormasdepagStruct? maybeFromMap(dynamic data) =>
      data is Map<String, dynamic> ? FormasdepagStruct.fromMap(data) : null;

  Map<String, dynamic> toMap() => {
        'pix': _pix,
        'cardaodecredito': _cardaodecredito,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'pix': serializeParam(
          _pix,
          ParamType.String,
        ),
        'cardaodecredito': serializeParam(
          _cardaodecredito,
          ParamType.String,
        ),
      }.withoutNulls;

  static FormasdepagStruct fromSerializableMap(Map<String, dynamic> data) =>
      FormasdepagStruct(
        pix: deserializeParam(
          data['pix'],
          ParamType.String,
          false,
        ),
        cardaodecredito: deserializeParam(
          data['cardaodecredito'],
          ParamType.String,
          false,
        ),
      );

  static FormasdepagStruct fromAlgoliaData(Map<String, dynamic> data) =>
      FormasdepagStruct(
        pix: convertAlgoliaParam(
          data['pix'],
          ParamType.String,
          false,
        ),
        cardaodecredito: convertAlgoliaParam(
          data['cardaodecredito'],
          ParamType.String,
          false,
        ),
        firestoreUtilData: FirestoreUtilData(
          clearUnsetFields: false,
          create: true,
        ),
      );

  @override
  String toString() => 'FormasdepagStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is FormasdepagStruct &&
        pix == other.pix &&
        cardaodecredito == other.cardaodecredito;
  }

  @override
  int get hashCode => const ListEquality().hash([pix, cardaodecredito]);
}

FormasdepagStruct createFormasdepagStruct({
  String? pix,
  String? cardaodecredito,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    FormasdepagStruct(
      pix: pix,
      cardaodecredito: cardaodecredito,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

FormasdepagStruct? updateFormasdepagStruct(
  FormasdepagStruct? formasdepag, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    formasdepag
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addFormasdepagStructData(
  Map<String, dynamic> firestoreData,
  FormasdepagStruct? formasdepag,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (formasdepag == null) {
    return;
  }
  if (formasdepag.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && formasdepag.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final formasdepagData =
      getFormasdepagFirestoreData(formasdepag, forFieldValue);
  final nestedData =
      formasdepagData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = formasdepag.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getFormasdepagFirestoreData(
  FormasdepagStruct? formasdepag, [
  bool forFieldValue = false,
]) {
  if (formasdepag == null) {
    return {};
  }
  final firestoreData = mapToFirestore(formasdepag.toMap());

  // Add any Firestore field values
  formasdepag.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getFormasdepagListFirestoreData(
  List<FormasdepagStruct>? formasdepags,
) =>
    formasdepags?.map((e) => getFormasdepagFirestoreData(e, true)).toList() ??
    [];
