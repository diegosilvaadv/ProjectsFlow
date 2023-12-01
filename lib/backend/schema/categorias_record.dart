import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CategoriasRecord extends FirestoreRecord {
  CategoriasRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "nomeTag" field.
  String? _nomeTag;
  String get nomeTag => _nomeTag ?? '';
  bool hasNomeTag() => _nomeTag != null;

  // "projeto1OUpagina2" field.
  String? _projeto1OUpagina2;
  String get projeto1OUpagina2 => _projeto1OUpagina2 ?? '';
  bool hasProjeto1OUpagina2() => _projeto1OUpagina2 != null;

  void _initializeFields() {
    _nomeTag = snapshotData['nomeTag'] as String?;
    _projeto1OUpagina2 = snapshotData['projeto1OUpagina2'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Categorias');

  static Stream<CategoriasRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => CategoriasRecord.fromSnapshot(s));

  static Future<CategoriasRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => CategoriasRecord.fromSnapshot(s));

  static CategoriasRecord fromSnapshot(DocumentSnapshot snapshot) =>
      CategoriasRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static CategoriasRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      CategoriasRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'CategoriasRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is CategoriasRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createCategoriasRecordData({
  String? nomeTag,
  String? projeto1OUpagina2,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'nomeTag': nomeTag,
      'projeto1OUpagina2': projeto1OUpagina2,
    }.withoutNulls,
  );

  return firestoreData;
}

class CategoriasRecordDocumentEquality implements Equality<CategoriasRecord> {
  const CategoriasRecordDocumentEquality();

  @override
  bool equals(CategoriasRecord? e1, CategoriasRecord? e2) {
    return e1?.nomeTag == e2?.nomeTag &&
        e1?.projeto1OUpagina2 == e2?.projeto1OUpagina2;
  }

  @override
  int hash(CategoriasRecord? e) =>
      const ListEquality().hash([e?.nomeTag, e?.projeto1OUpagina2]);

  @override
  bool isValidKey(Object? o) => o is CategoriasRecord;
}
