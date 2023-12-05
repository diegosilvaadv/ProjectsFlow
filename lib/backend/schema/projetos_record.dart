import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ProjetosRecord extends FirestoreRecord {
  ProjetosRecord._(
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

  // "IMGPrincipal" field.
  String? _iMGPrincipal;
  String get iMGPrincipal => _iMGPrincipal ?? '';
  bool hasIMGPrincipal() => _iMGPrincipal != null;

  // "creatData" field.
  DateTime? _creatData;
  DateTime? get creatData => _creatData;
  bool hasCreatData() => _creatData != null;

  // "identificacao" field.
  String? _identificacao;
  String get identificacao => _identificacao ?? '';
  bool hasIdentificacao() => _identificacao != null;

  // "userIDVendedor" field.
  String? _userIDVendedor;
  String get userIDVendedor => _userIDVendedor ?? '';
  bool hasUserIDVendedor() => _userIDVendedor != null;

  // "emailVendedor" field.
  String? _emailVendedor;
  String get emailVendedor => _emailVendedor ?? '';
  bool hasEmailVendedor() => _emailVendedor != null;

  // "requisitos" field.
  String? _requisitos;
  String get requisitos => _requisitos ?? '';
  bool hasRequisitos() => _requisitos != null;

  // "subtitulo" field.
  String? _subtitulo;
  String get subtitulo => _subtitulo ?? '';
  bool hasSubtitulo() => _subtitulo != null;

  // "Eprojeto" field.
  bool? _eprojeto;
  bool get eprojeto => _eprojeto ?? false;
  bool hasEprojeto() => _eprojeto != null;

  // "descriVenda" field.
  String? _descriVenda;
  String get descriVenda => _descriVenda ?? '';
  bool hasDescriVenda() => _descriVenda != null;

  // "videoDemo" field.
  String? _videoDemo;
  String get videoDemo => _videoDemo ?? '';
  bool hasVideoDemo() => _videoDemo != null;

  // "videoTutorial" field.
  String? _videoTutorial;
  String get videoTutorial => _videoTutorial ?? '';
  bool hasVideoTutorial() => _videoTutorial != null;

  // "img2" field.
  String? _img2;
  String get img2 => _img2 ?? '';
  bool hasImg2() => _img2 != null;

  // "img3" field.
  String? _img3;
  String get img3 => _img3 ?? '';
  bool hasImg3() => _img3 != null;

  void _initializeFields() {
    _titulo = snapshotData['Titulo'] as String?;
    _descricao = snapshotData['Descricao'] as String?;
    _valor = castToType<double>(snapshotData['Valor']);
    _categoria = snapshotData['Categoria'] as String?;
    _linkProjeto = snapshotData['LinkProjeto'] as String?;
    _postadoPor = snapshotData['PostadoPor'] as String?;
    _iMGPrincipal = snapshotData['IMGPrincipal'] as String?;
    _creatData = snapshotData['creatData'] as DateTime?;
    _identificacao = snapshotData['identificacao'] as String?;
    _userIDVendedor = snapshotData['userIDVendedor'] as String?;
    _emailVendedor = snapshotData['emailVendedor'] as String?;
    _requisitos = snapshotData['requisitos'] as String?;
    _subtitulo = snapshotData['subtitulo'] as String?;
    _eprojeto = snapshotData['Eprojeto'] as bool?;
    _descriVenda = snapshotData['descriVenda'] as String?;
    _videoDemo = snapshotData['videoDemo'] as String?;
    _videoTutorial = snapshotData['videoTutorial'] as String?;
    _img2 = snapshotData['img2'] as String?;
    _img3 = snapshotData['img3'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Projetos');

  static Stream<ProjetosRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ProjetosRecord.fromSnapshot(s));

  static Future<ProjetosRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ProjetosRecord.fromSnapshot(s));

  static ProjetosRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ProjetosRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ProjetosRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ProjetosRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ProjetosRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ProjetosRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createProjetosRecordData({
  String? titulo,
  String? descricao,
  double? valor,
  String? categoria,
  String? linkProjeto,
  String? postadoPor,
  String? iMGPrincipal,
  DateTime? creatData,
  String? identificacao,
  String? userIDVendedor,
  String? emailVendedor,
  String? requisitos,
  String? subtitulo,
  bool? eprojeto,
  String? descriVenda,
  String? videoDemo,
  String? videoTutorial,
  String? img2,
  String? img3,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'Titulo': titulo,
      'Descricao': descricao,
      'Valor': valor,
      'Categoria': categoria,
      'LinkProjeto': linkProjeto,
      'PostadoPor': postadoPor,
      'IMGPrincipal': iMGPrincipal,
      'creatData': creatData,
      'identificacao': identificacao,
      'userIDVendedor': userIDVendedor,
      'emailVendedor': emailVendedor,
      'requisitos': requisitos,
      'subtitulo': subtitulo,
      'Eprojeto': eprojeto,
      'descriVenda': descriVenda,
      'videoDemo': videoDemo,
      'videoTutorial': videoTutorial,
      'img2': img2,
      'img3': img3,
    }.withoutNulls,
  );

  return firestoreData;
}

class ProjetosRecordDocumentEquality implements Equality<ProjetosRecord> {
  const ProjetosRecordDocumentEquality();

  @override
  bool equals(ProjetosRecord? e1, ProjetosRecord? e2) {
    return e1?.titulo == e2?.titulo &&
        e1?.descricao == e2?.descricao &&
        e1?.valor == e2?.valor &&
        e1?.categoria == e2?.categoria &&
        e1?.linkProjeto == e2?.linkProjeto &&
        e1?.postadoPor == e2?.postadoPor &&
        e1?.iMGPrincipal == e2?.iMGPrincipal &&
        e1?.creatData == e2?.creatData &&
        e1?.identificacao == e2?.identificacao &&
        e1?.userIDVendedor == e2?.userIDVendedor &&
        e1?.emailVendedor == e2?.emailVendedor &&
        e1?.requisitos == e2?.requisitos &&
        e1?.subtitulo == e2?.subtitulo &&
        e1?.eprojeto == e2?.eprojeto &&
        e1?.descriVenda == e2?.descriVenda &&
        e1?.videoDemo == e2?.videoDemo &&
        e1?.videoTutorial == e2?.videoTutorial &&
        e1?.img2 == e2?.img2 &&
        e1?.img3 == e2?.img3;
  }

  @override
  int hash(ProjetosRecord? e) => const ListEquality().hash([
        e?.titulo,
        e?.descricao,
        e?.valor,
        e?.categoria,
        e?.linkProjeto,
        e?.postadoPor,
        e?.iMGPrincipal,
        e?.creatData,
        e?.identificacao,
        e?.userIDVendedor,
        e?.emailVendedor,
        e?.requisitos,
        e?.subtitulo,
        e?.eprojeto,
        e?.descriVenda,
        e?.videoDemo,
        e?.videoTutorial,
        e?.img2,
        e?.img3
      ]);

  @override
  bool isValidKey(Object? o) => o is ProjetosRecord;
}
