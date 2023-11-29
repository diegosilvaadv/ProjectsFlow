import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PaginasRecord extends FirestoreRecord {
  PaginasRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "Titulo" field.
  String? _titulo;
  String get titulo => _titulo ?? '';
  bool hasTitulo() => _titulo != null;

  // "Descricao" field.
  String? _descricao;
  String get descricao => _descricao ?? '';
  bool hasDescricao() => _descricao != null;

  // "Valor" field.
  double? _valor;
  double get valor => _valor ?? 0.0;
  bool hasValor() => _valor != null;

  // "Categoria" field.
  String? _categoria;
  String get categoria => _categoria ?? '';
  bool hasCategoria() => _categoria != null;

  // "LinkProjeto" field.
  String? _linkProjeto;
  String get linkProjeto => _linkProjeto ?? '';
  bool hasLinkProjeto() => _linkProjeto != null;

  // "PostadoPor" field.
  String? _postadoPor;
  String get postadoPor => _postadoPor ?? '';
  bool hasPostadoPor() => _postadoPor != null;

  // "UserID" field.
  DocumentReference? _userID;
  DocumentReference? get userID => _userID;
  bool hasUserID() => _userID != null;

  // "IMGPrincipal" field.
  String? _iMGPrincipal;
  String get iMGPrincipal => _iMGPrincipal ?? '';
  bool hasIMGPrincipal() => _iMGPrincipal != null;

  // "IMG1" field.
  String? _img1;
  String get img1 => _img1 ?? '';
  bool hasImg1() => _img1 != null;

  // "IMG2" field.
  String? _img2;
  String get img2 => _img2 ?? '';
  bool hasImg2() => _img2 != null;

  // "IMG3" field.
  String? _img3;
  String get img3 => _img3 ?? '';
  bool hasImg3() => _img3 != null;

  // "Video" field.
  String? _video;
  String get video => _video ?? '';
  bool hasVideo() => _video != null;

  // "creatData" field.
  DateTime? _creatData;
  DateTime? get creatData => _creatData;
  bool hasCreatData() => _creatData != null;

  // "identificacao" field.
  String? _identificacao;
  String get identificacao => _identificacao ?? '';
  bool hasIdentificacao() => _identificacao != null;

  void _initializeFields() {
    _titulo = snapshotData['Titulo'] as String?;
    _descricao = snapshotData['Descricao'] as String?;
    _valor = castToType<double>(snapshotData['Valor']);
    _categoria = snapshotData['Categoria'] as String?;
    _linkProjeto = snapshotData['LinkProjeto'] as String?;
    _postadoPor = snapshotData['PostadoPor'] as String?;
    _userID = snapshotData['UserID'] as DocumentReference?;
    _iMGPrincipal = snapshotData['IMGPrincipal'] as String?;
    _img1 = snapshotData['IMG1'] as String?;
    _img2 = snapshotData['IMG2'] as String?;
    _img3 = snapshotData['IMG3'] as String?;
    _video = snapshotData['Video'] as String?;
    _creatData = snapshotData['creatData'] as DateTime?;
    _identificacao = snapshotData['identificacao'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Paginas');

  static Stream<PaginasRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => PaginasRecord.fromSnapshot(s));

  static Future<PaginasRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => PaginasRecord.fromSnapshot(s));

  static PaginasRecord fromSnapshot(DocumentSnapshot snapshot) =>
      PaginasRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static PaginasRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      PaginasRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'PaginasRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is PaginasRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createPaginasRecordData({
  String? titulo,
  String? descricao,
  double? valor,
  String? categoria,
  String? linkProjeto,
  String? postadoPor,
  DocumentReference? userID,
  String? iMGPrincipal,
  String? img1,
  String? img2,
  String? img3,
  String? video,
  DateTime? creatData,
  String? identificacao,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'Titulo': titulo,
      'Descricao': descricao,
      'Valor': valor,
      'Categoria': categoria,
      'LinkProjeto': linkProjeto,
      'PostadoPor': postadoPor,
      'UserID': userID,
      'IMGPrincipal': iMGPrincipal,
      'IMG1': img1,
      'IMG2': img2,
      'IMG3': img3,
      'Video': video,
      'creatData': creatData,
      'identificacao': identificacao,
    }.withoutNulls,
  );

  return firestoreData;
}

class PaginasRecordDocumentEquality implements Equality<PaginasRecord> {
  const PaginasRecordDocumentEquality();

  @override
  bool equals(PaginasRecord? e1, PaginasRecord? e2) {
    return e1?.titulo == e2?.titulo &&
        e1?.descricao == e2?.descricao &&
        e1?.valor == e2?.valor &&
        e1?.categoria == e2?.categoria &&
        e1?.linkProjeto == e2?.linkProjeto &&
        e1?.postadoPor == e2?.postadoPor &&
        e1?.userID == e2?.userID &&
        e1?.iMGPrincipal == e2?.iMGPrincipal &&
        e1?.img1 == e2?.img1 &&
        e1?.img2 == e2?.img2 &&
        e1?.img3 == e2?.img3 &&
        e1?.video == e2?.video &&
        e1?.creatData == e2?.creatData &&
        e1?.identificacao == e2?.identificacao;
  }

  @override
  int hash(PaginasRecord? e) => const ListEquality().hash([
        e?.titulo,
        e?.descricao,
        e?.valor,
        e?.categoria,
        e?.linkProjeto,
        e?.postadoPor,
        e?.userID,
        e?.iMGPrincipal,
        e?.img1,
        e?.img2,
        e?.img3,
        e?.video,
        e?.creatData,
        e?.identificacao
      ]);

  @override
  bool isValidKey(Object? o) => o is PaginasRecord;
}
