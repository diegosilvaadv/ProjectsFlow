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
    String? tituloCode,
    String? descricaoCode,
    String? linkProjeto,
    int? ordem,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _textoCode = textoCode,
        _tituloCode = tituloCode,
        _descricaoCode = descricaoCode,
        _linkProjeto = linkProjeto,
        _ordem = ordem,
        super(firestoreUtilData);

  // "textoCode" field.
  String? _textoCode;
  String get textoCode => _textoCode ?? '';
  set textoCode(String? val) => _textoCode = val;
  bool hasTextoCode() => _textoCode != null;

  // "TituloCode" field.
  String? _tituloCode;
  String get tituloCode => _tituloCode ?? '';
  set tituloCode(String? val) => _tituloCode = val;
  bool hasTituloCode() => _tituloCode != null;

  // "DescricaoCode" field.
  String? _descricaoCode;
  String get descricaoCode => _descricaoCode ?? '';
  set descricaoCode(String? val) => _descricaoCode = val;
  bool hasDescricaoCode() => _descricaoCode != null;

  // "LinkProjeto" field.
  String? _linkProjeto;
  String get linkProjeto => _linkProjeto ?? '';
  set linkProjeto(String? val) => _linkProjeto = val;
  bool hasLinkProjeto() => _linkProjeto != null;

  // "ordem" field.
  int? _ordem;
  int get ordem => _ordem ?? 0;
  set ordem(int? val) => _ordem = val;
  void incrementOrdem(int amount) => _ordem = ordem + amount;
  bool hasOrdem() => _ordem != null;

  static CodigosStruct fromMap(Map<String, dynamic> data) => CodigosStruct(
        textoCode: data['textoCode'] as String?,
        tituloCode: data['TituloCode'] as String?,
        descricaoCode: data['DescricaoCode'] as String?,
        linkProjeto: data['LinkProjeto'] as String?,
        ordem: castToType<int>(data['ordem']),
      );

  static CodigosStruct? maybeFromMap(dynamic data) =>
      data is Map<String, dynamic> ? CodigosStruct.fromMap(data) : null;

  Map<String, dynamic> toMap() => {
        'textoCode': _textoCode,
        'TituloCode': _tituloCode,
        'DescricaoCode': _descricaoCode,
        'LinkProjeto': _linkProjeto,
        'ordem': _ordem,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'textoCode': serializeParam(
          _textoCode,
          ParamType.String,
        ),
        'TituloCode': serializeParam(
          _tituloCode,
          ParamType.String,
        ),
        'DescricaoCode': serializeParam(
          _descricaoCode,
          ParamType.String,
        ),
        'LinkProjeto': serializeParam(
          _linkProjeto,
          ParamType.String,
        ),
        'ordem': serializeParam(
          _ordem,
          ParamType.int,
        ),
      }.withoutNulls;

  static CodigosStruct fromSerializableMap(Map<String, dynamic> data) =>
      CodigosStruct(
        textoCode: deserializeParam(
          data['textoCode'],
          ParamType.String,
          false,
        ),
        tituloCode: deserializeParam(
          data['TituloCode'],
          ParamType.String,
          false,
        ),
        descricaoCode: deserializeParam(
          data['DescricaoCode'],
          ParamType.String,
          false,
        ),
        linkProjeto: deserializeParam(
          data['LinkProjeto'],
          ParamType.String,
          false,
        ),
        ordem: deserializeParam(
          data['ordem'],
          ParamType.int,
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
        tituloCode: convertAlgoliaParam(
          data['TituloCode'],
          ParamType.String,
          false,
        ),
        descricaoCode: convertAlgoliaParam(
          data['DescricaoCode'],
          ParamType.String,
          false,
        ),
        linkProjeto: convertAlgoliaParam(
          data['LinkProjeto'],
          ParamType.String,
          false,
        ),
        ordem: convertAlgoliaParam(
          data['ordem'],
          ParamType.int,
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
    return other is CodigosStruct &&
        textoCode == other.textoCode &&
        tituloCode == other.tituloCode &&
        descricaoCode == other.descricaoCode &&
        linkProjeto == other.linkProjeto &&
        ordem == other.ordem;
  }

  @override
  int get hashCode => const ListEquality()
      .hash([textoCode, tituloCode, descricaoCode, linkProjeto, ordem]);
}

CodigosStruct createCodigosStruct({
  String? textoCode,
  String? tituloCode,
  String? descricaoCode,
  String? linkProjeto,
  int? ordem,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    CodigosStruct(
      textoCode: textoCode,
      tituloCode: tituloCode,
      descricaoCode: descricaoCode,
      linkProjeto: linkProjeto,
      ordem: ordem,
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
