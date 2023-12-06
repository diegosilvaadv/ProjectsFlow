import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CodigosCopiRecord extends FirestoreRecord {
  CodigosCopiRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "LinkProjeto" field.
  String? _linkProjeto;
  String get linkProjeto => _linkProjeto ?? '';
  bool hasLinkProjeto() => _linkProjeto != null;

  // "TituloCode" field.
  String? _tituloCode;
  String get tituloCode => _tituloCode ?? '';
  bool hasTituloCode() => _tituloCode != null;

  // "DescricaoCode" field.
  String? _descricaoCode;
  String get descricaoCode => _descricaoCode ?? '';
  bool hasDescricaoCode() => _descricaoCode != null;

  // "Codigos" field.
  String? _codigos;
  String get codigos => _codigos ?? '';
  bool hasCodigos() => _codigos != null;

  // "ordem" field.
  int? _ordem;
  int get ordem => _ordem ?? 0;
  bool hasOrdem() => _ordem != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _linkProjeto = snapshotData['LinkProjeto'] as String?;
    _tituloCode = snapshotData['TituloCode'] as String?;
    _descricaoCode = snapshotData['DescricaoCode'] as String?;
    _codigos = snapshotData['Codigos'] as String?;
    _ordem = castToType<int>(snapshotData['ordem']);
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('codigosCopi')
          : FirebaseFirestore.instance.collectionGroup('codigosCopi');

  static DocumentReference createDoc(DocumentReference parent) =>
      parent.collection('codigosCopi').doc();

  static Stream<CodigosCopiRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => CodigosCopiRecord.fromSnapshot(s));

  static Future<CodigosCopiRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => CodigosCopiRecord.fromSnapshot(s));

  static CodigosCopiRecord fromSnapshot(DocumentSnapshot snapshot) =>
      CodigosCopiRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static CodigosCopiRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      CodigosCopiRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'CodigosCopiRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is CodigosCopiRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createCodigosCopiRecordData({
  String? linkProjeto,
  String? tituloCode,
  String? descricaoCode,
  String? codigos,
  int? ordem,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'LinkProjeto': linkProjeto,
      'TituloCode': tituloCode,
      'DescricaoCode': descricaoCode,
      'Codigos': codigos,
      'ordem': ordem,
    }.withoutNulls,
  );

  return firestoreData;
}

class CodigosCopiRecordDocumentEquality implements Equality<CodigosCopiRecord> {
  const CodigosCopiRecordDocumentEquality();

  @override
  bool equals(CodigosCopiRecord? e1, CodigosCopiRecord? e2) {
    return e1?.linkProjeto == e2?.linkProjeto &&
        e1?.tituloCode == e2?.tituloCode &&
        e1?.descricaoCode == e2?.descricaoCode &&
        e1?.codigos == e2?.codigos &&
        e1?.ordem == e2?.ordem;
  }

  @override
  int hash(CodigosCopiRecord? e) => const ListEquality().hash(
      [e?.linkProjeto, e?.tituloCode, e?.descricaoCode, e?.codigos, e?.ordem]);

  @override
  bool isValidKey(Object? o) => o is CodigosCopiRecord;
}
