// ignore_for_file: unnecessary_getters_setters
import '/backend/algolia/serialization_util.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CodigosStruct extends FFFirebaseStruct {
  CodigosStruct({
    String? textoCode,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _textoCode = textoCode,
        super(firestoreUtilData);

  // "textoCode" field.
  String? _textoCode;
  String get textoCode => _textoCode ?? '';
  set textoCode(String? val) => _textoCode = val;
  bool hasTextoCode() => _textoCode != null;

  static CodigosStruct fromMap(Map<String, dynamic> data) => CodigosStruct(
        textoCode: data['textoCode'] as String?,
      );

  static CodigosStruct? maybeFromMap(dynamic data) =>
      data is Map<String, dynamic> ? CodigosStruct.fromMap(data) : null;

  Map<String, dynamic> toMap() => {
        'textoCode': _textoCode,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'textoCode': serializeParam(
          _textoCode,
          ParamType.String,
        ),
      }.withoutNulls;

  static CodigosStruct fromSerializableMap(Map<String, dynamic> data) =>
      CodigosStruct(
        textoCode: deserializeParam(
          data['textoCode'],
          ParamType.String,
          false,
        ),
      );

  static CodigosStruct fromAlgoliaData(Map<String, dynamic> data) =>
      CodigosStruct(
        textoCode: convertAlgoliaParam(
          data['textoCode'],
          ParamType.String,
          false,
        ),
        firestoreUtilData: FirestoreUtilData(
          clearUnsetFields: false,
          create: true,
        ),
      );

  @override
  String toString() => 'CodigosStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is CodigosStruct && textoCode == other.textoCode;
  }

  @override
  int get hashCode => const ListEquality().hash([textoCode]);
}

CodigosStruct createCodigosStruct({
  String? textoCode,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    CodigosStruct(
      textoCode: textoCode,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

CodigosStruct? updateCodigosStruct(
  CodigosStruct? codigos, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    codigos
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addCodigosStructData(
  Map<String, dynamic> firestoreData,
  CodigosStruct? codigos,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (codigos == null) {
    return;
  }
  if (codigos.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && codigos.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final codigosData = getCodigosFirestoreData(codigos, forFieldValue);
  final nestedData = codigosData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = codigos.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getCodigosFirestoreData(
  CodigosStruct? codigos, [
  bool forFieldValue = false,
]) {
  if (codigos == null) {
    return {};
  }
  final firestoreData = mapToFirestore(codigos.toMap());

  // Add any Firestore field values
  codigos.firestoreUtilData.fieldValues.forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getCodigosListFirestoreData(
  List<CodigosStruct>? codigoss,
) =>
    codigoss?.map((e) => getCodigosFirestoreData(e, true)).toList() ?? [];
