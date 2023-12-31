import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PagamentosRecord extends FirestoreRecord {
  PagamentosRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
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

  // "valor" field.
  double? _valor;
  double get valor => _valor ?? 0.0;
  bool hasValor() => _valor != null;

  // "linkProjeto" field.
  String? _linkProjeto;
  String get linkProjeto => _linkProjeto ?? '';
  bool hasLinkProjeto() => _linkProjeto != null;

  // "statusCompra" field.
  bool? _statusCompra;
  bool get statusCompra => _statusCompra ?? false;
  bool hasStatusCompra() => _statusCompra != null;

  // "ultimos4dig" field.
  String? _ultimos4dig;
  String get ultimos4dig => _ultimos4dig ?? '';
  bool hasUltimos4dig() => _ultimos4dig != null;

  // "transacionID" field.
  String? _transacionID;
  String get transacionID => _transacionID ?? '';
  bool hasTransacionID() => _transacionID != null;

  // "userID" field.
  String? _userID;
  String get userID => _userID ?? '';
  bool hasUserID() => _userID != null;

  // "nomePagante" field.
  String? _nomePagante;
  String get nomePagante => _nomePagante ?? '';
  bool hasNomePagante() => _nomePagante != null;

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  // "creatData" field.
  DateTime? _creatData;
  DateTime? get creatData => _creatData;
  bool hasCreatData() => _creatData != null;

  // "imgPagante" field.
  String? _imgPagante;
  String get imgPagante => _imgPagante ?? '';
  bool hasImgPagante() => _imgPagante != null;

  // "emailVendedor" field.
  String? _emailVendedor;
  String get emailVendedor => _emailVendedor ?? '';
  bool hasEmailVendedor() => _emailVendedor != null;

  // "userIDPagante" field.
  String? _userIDPagante;
  String get userIDPagante => _userIDPagante ?? '';
  bool hasUserIDPagante() => _userIDPagante != null;

  // "identificacao" field.
  String? _identificacao;
  String get identificacao => _identificacao ?? '';
  bool hasIdentificacao() => _identificacao != null;

  // "nomeVendedor" field.
  String? _nomeVendedor;
  String get nomeVendedor => _nomeVendedor ?? '';
  bool hasNomeVendedor() => _nomeVendedor != null;

  // "subTitulo" field.
  String? _subTitulo;
  String get subTitulo => _subTitulo ?? '';
  bool hasSubTitulo() => _subTitulo != null;

  // "IMGPrincipal" field.
  String? _iMGPrincipal;
  String get iMGPrincipal => _iMGPrincipal ?? '';
  bool hasIMGPrincipal() => _iMGPrincipal != null;

  // "DescricaoCompras" field.
  String? _descricaoCompras;
  String get descricaoCompras => _descricaoCompras ?? '';
  bool hasDescricaoCompras() => _descricaoCompras != null;

  // "videoTutorial" field.
  String? _videoTutorial;
  String get videoTutorial => _videoTutorial ?? '';
  bool hasVideoTutorial() => _videoTutorial != null;

  void _initializeFields() {
    _produto = snapshotData['produto'] as String?;
    _descricao = snapshotData['descricao'] as String?;
    _valor = castToType<double>(snapshotData['valor']);
    _linkProjeto = snapshotData['linkProjeto'] as String?;
    _statusCompra = snapshotData['statusCompra'] as bool?;
    _ultimos4dig = snapshotData['ultimos4dig'] as String?;
    _transacionID = snapshotData['transacionID'] as String?;
    _userID = snapshotData['userID'] as String?;
    _nomePagante = snapshotData['nomePagante'] as String?;
    _email = snapshotData['email'] as String?;
    _creatData = snapshotData['creatData'] as DateTime?;
    _imgPagante = snapshotData['imgPagante'] as String?;
    _emailVendedor = snapshotData['emailVendedor'] as String?;
    _userIDPagante = snapshotData['userIDPagante'] as String?;
    _identificacao = snapshotData['identificacao'] as String?;
    _nomeVendedor = snapshotData['nomeVendedor'] as String?;
    _subTitulo = snapshotData['subTitulo'] as String?;
    _iMGPrincipal = snapshotData['IMGPrincipal'] as String?;
    _descricaoCompras = snapshotData['DescricaoCompras'] as String?;
    _videoTutorial = snapshotData['videoTutorial'] as String?;
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
  double? valor,
  String? linkProjeto,
  bool? statusCompra,
  String? ultimos4dig,
  String? transacionID,
  String? userID,
  String? nomePagante,
  String? email,
  DateTime? creatData,
  String? imgPagante,
  String? emailVendedor,
  String? userIDPagante,
  String? identificacao,
  String? nomeVendedor,
  String? subTitulo,
  String? iMGPrincipal,
  String? descricaoCompras,
  String? videoTutorial,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'produto': produto,
      'descricao': descricao,
      'valor': valor,
      'linkProjeto': linkProjeto,
      'statusCompra': statusCompra,
      'ultimos4dig': ultimos4dig,
      'transacionID': transacionID,
      'userID': userID,
      'nomePagante': nomePagante,
      'email': email,
      'creatData': creatData,
      'imgPagante': imgPagante,
      'emailVendedor': emailVendedor,
      'userIDPagante': userIDPagante,
      'identificacao': identificacao,
      'nomeVendedor': nomeVendedor,
      'subTitulo': subTitulo,
      'IMGPrincipal': iMGPrincipal,
      'DescricaoCompras': descricaoCompras,
      'videoTutorial': videoTutorial,
    }.withoutNulls,
  );

  return firestoreData;
}

class PagamentosRecordDocumentEquality implements Equality<PagamentosRecord> {
  const PagamentosRecordDocumentEquality();

  @override
  bool equals(PagamentosRecord? e1, PagamentosRecord? e2) {
    return e1?.produto == e2?.produto &&
        e1?.descricao == e2?.descricao &&
        e1?.valor == e2?.valor &&
        e1?.linkProjeto == e2?.linkProjeto &&
        e1?.statusCompra == e2?.statusCompra &&
        e1?.ultimos4dig == e2?.ultimos4dig &&
        e1?.transacionID == e2?.transacionID &&
        e1?.userID == e2?.userID &&
        e1?.nomePagante == e2?.nomePagante &&
        e1?.email == e2?.email &&
        e1?.creatData == e2?.creatData &&
        e1?.imgPagante == e2?.imgPagante &&
        e1?.emailVendedor == e2?.emailVendedor &&
        e1?.userIDPagante == e2?.userIDPagante &&
        e1?.identificacao == e2?.identificacao &&
        e1?.nomeVendedor == e2?.nomeVendedor &&
        e1?.subTitulo == e2?.subTitulo &&
        e1?.iMGPrincipal == e2?.iMGPrincipal &&
        e1?.descricaoCompras == e2?.descricaoCompras &&
        e1?.videoTutorial == e2?.videoTutorial;
  }

  @override
  int hash(PagamentosRecord? e) => const ListEquality().hash([
        e?.produto,
        e?.descricao,
        e?.valor,
        e?.linkProjeto,
        e?.statusCompra,
        e?.ultimos4dig,
        e?.transacionID,
        e?.userID,
        e?.nomePagante,
        e?.email,
        e?.creatData,
        e?.imgPagante,
        e?.emailVendedor,
        e?.userIDPagante,
        e?.identificacao,
        e?.nomeVendedor,
        e?.subTitulo,
        e?.iMGPrincipal,
        e?.descricaoCompras,
        e?.videoTutorial
      ]);

  @override
  bool isValidKey(Object? o) => o is PagamentosRecord;
}
