// ignore_for_file: unnecessary_getters_setters
import '/backend/algolia/serialization_util.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PagamentosStruct extends FFFirebaseStruct {
  PagamentosStruct({
    String? status,
    String? chavepix,
    String? qRcode,
    String? qrCodeIMG,
    int? idPedido,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _status = status,
        _chavepix = chavepix,
        _qRcode = qRcode,
        _qrCodeIMG = qrCodeIMG,
        _idPedido = idPedido,
        super(firestoreUtilData);

  // "status" field.
  String? _status;
  String get status => _status ?? '';
  set status(String? val) => _status = val;
  bool hasStatus() => _status != null;

  // "chavepix" field.
  String? _chavepix;
  String get chavepix => _chavepix ?? '';
  set chavepix(String? val) => _chavepix = val;
  bool hasChavepix() => _chavepix != null;

  // "QRcode" field.
  String? _qRcode;
  String get qRcode => _qRcode ?? '';
  set qRcode(String? val) => _qRcode = val;
  bool hasQRcode() => _qRcode != null;

  // "QrCodeIMG" field.
  String? _qrCodeIMG;
  String get qrCodeIMG => _qrCodeIMG ?? '';
  set qrCodeIMG(String? val) => _qrCodeIMG = val;
  bool hasQrCodeIMG() => _qrCodeIMG != null;

  // "id_pedido" field.
  int? _idPedido;
  int get idPedido => _idPedido ?? 0;
  set idPedido(int? val) => _idPedido = val;
  void incrementIdPedido(int amount) => _idPedido = idPedido + amount;
  bool hasIdPedido() => _idPedido != null;

  static PagamentosStruct fromMap(Map<String, dynamic> data) =>
      PagamentosStruct(
        status: data['status'] as String?,
        chavepix: data['chavepix'] as String?,
        qRcode: data['QRcode'] as String?,
        qrCodeIMG: data['QrCodeIMG'] as String?,
        idPedido: castToType<int>(data['id_pedido']),
      );

  static PagamentosStruct? maybeFromMap(dynamic data) =>
      data is Map<String, dynamic> ? PagamentosStruct.fromMap(data) : null;

  Map<String, dynamic> toMap() => {
        'status': _status,
        'chavepix': _chavepix,
        'QRcode': _qRcode,
        'QrCodeIMG': _qrCodeIMG,
        'id_pedido': _idPedido,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'status': serializeParam(
          _status,
          ParamType.String,
        ),
        'chavepix': serializeParam(
          _chavepix,
          ParamType.String,
        ),
        'QRcode': serializeParam(
          _qRcode,
          ParamType.String,
        ),
        'QrCodeIMG': serializeParam(
          _qrCodeIMG,
          ParamType.String,
        ),
        'id_pedido': serializeParam(
          _idPedido,
          ParamType.int,
        ),
      }.withoutNulls;

  static PagamentosStruct fromSerializableMap(Map<String, dynamic> data) =>
      PagamentosStruct(
        status: deserializeParam(
          data['status'],
          ParamType.String,
          false,
        ),
        chavepix: deserializeParam(
          data['chavepix'],
          ParamType.String,
          false,
        ),
        qRcode: deserializeParam(
          data['QRcode'],
          ParamType.String,
          false,
        ),
        qrCodeIMG: deserializeParam(
          data['QrCodeIMG'],
          ParamType.String,
          false,
        ),
        idPedido: deserializeParam(
          data['id_pedido'],
          ParamType.int,
          false,
        ),
      );

  static PagamentosStruct fromAlgoliaData(Map<String, dynamic> data) =>
      PagamentosStruct(
        status: convertAlgoliaParam(
          data['status'],
          ParamType.String,
          false,
        ),
        chavepix: convertAlgoliaParam(
          data['chavepix'],
          ParamType.String,
          false,
        ),
        qRcode: convertAlgoliaParam(
          data['QRcode'],
          ParamType.String,
          false,
        ),
        qrCodeIMG: convertAlgoliaParam(
          data['QrCodeIMG'],
          ParamType.String,
          false,
        ),
        idPedido: convertAlgoliaParam(
          data['id_pedido'],
          ParamType.int,
          false,
        ),
        firestoreUtilData: FirestoreUtilData(
          clearUnsetFields: false,
          create: true,
        ),
      );

  @override
  String toString() => 'PagamentosStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is PagamentosStruct &&
        status == other.status &&
        chavepix == other.chavepix &&
        qRcode == other.qRcode &&
        qrCodeIMG == other.qrCodeIMG &&
        idPedido == other.idPedido;
  }

  @override
  int get hashCode => const ListEquality()
      .hash([status, chavepix, qRcode, qrCodeIMG, idPedido]);
}

PagamentosStruct createPagamentosStruct({
  String? status,
  String? chavepix,
  String? qRcode,
  String? qrCodeIMG,
  int? idPedido,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    PagamentosStruct(
      status: status,
      chavepix: chavepix,
      qRcode: qRcode,
      qrCodeIMG: qrCodeIMG,
      idPedido: idPedido,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

PagamentosStruct? updatePagamentosStruct(
  PagamentosStruct? pagamentos, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    pagamentos
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addPagamentosStructData(
  Map<String, dynamic> firestoreData,
  PagamentosStruct? pagamentos,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (pagamentos == null) {
    return;
  }
  if (pagamentos.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && pagamentos.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final pagamentosData = getPagamentosFirestoreData(pagamentos, forFieldValue);
  final nestedData = pagamentosData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = pagamentos.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getPagamentosFirestoreData(
  PagamentosStruct? pagamentos, [
  bool forFieldValue = false,
]) {
  if (pagamentos == null) {
    return {};
  }
  final firestoreData = mapToFirestore(pagamentos.toMap());

  // Add any Firestore field values
  pagamentos.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getPagamentosListFirestoreData(
  List<PagamentosStruct>? pagamentoss,
) =>
    pagamentoss?.map((e) => getPagamentosFirestoreData(e, true)).toList() ?? [];
