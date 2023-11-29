import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';

class PagamentosRecord extends FirestoreRecord {
  PagamentosRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "produto" field.
  String? _produto;
  String get produto => _produto ?? '';
  bool hasProduto() => _produto != null;

  // "descricao" field.
  String? _descricao;
  String get descricao => _descricao ?? '';
  bool hasDescricao() => _descricao != null;

  void _initializeFields() {
    _produto = snapshotData['produto'] as String?;
    _descricao = snapshotData['descricao'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Pagamentos');

  static Stream<PagamentosRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => PagamentosRecord.fromSnapshot(s));

  static Future<PagamentosRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => PagamentosRecord.fromSnapshot(s));

  static PagamentosRecord fromSnapshot(DocumentSnapshot snapshot) =>
      PagamentosRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static PagamentosRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      PagamentosRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'PagamentosRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is PagamentosRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createPagamentosRecordData({
  String? produto,
  String? descricao,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'produto': produto,
      'descricao': descricao,
    }.withoutNulls,
  );

  return firestoreData;
}

class PagamentosRecordDocumentEquality implements Equality<PagamentosRecord> {
  const PagamentosRecordDocumentEquality();

  @override
  bool equals(PagamentosRecord? e1, PagamentosRecord? e2) {
    return e1?.produto == e2?.produto && e1?.descricao == e2?.descricao;
  }

  @override
  int hash(PagamentosRecord? e) =>
      const ListEquality().hash([e?.produto, e?.descricao]);

  @override
  bool isValidKey(Object? o) => o is PagamentosRecord;
}
