import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UserPagRecord extends FirestoreRecord {
  UserPagRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "userIDCobreFacil" field.
  String? _userIDCobreFacil;
  String get userIDCobreFacil => _userIDCobreFacil ?? '';
  bool hasUserIDCobreFacil() => _userIDCobreFacil != null;

  // "Userid" field.
  DocumentReference? _userid;
  DocumentReference? get userid => _userid;
  bool hasUserid() => _userid != null;

  // "id_cartao" field.
  String? _idCartao;
  String get idCartao => _idCartao ?? '';
  bool hasIdCartao() => _idCartao != null;

  // "status" field.
  bool? _status;
  bool get status => _status ?? false;
  bool hasStatus() => _status != null;

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  // "ultimos4dig" field.
  String? _ultimos4dig;
  String get ultimos4dig => _ultimos4dig ?? '';
  bool hasUltimos4dig() => _ultimos4dig != null;

  // "creatData" field.
  DateTime? _creatData;
  DateTime? get creatData => _creatData;
  bool hasCreatData() => _creatData != null;

  void _initializeFields() {
    _userIDCobreFacil = snapshotData['userIDCobreFacil'] as String?;
    _userid = snapshotData['Userid'] as DocumentReference?;
    _idCartao = snapshotData['id_cartao'] as String?;
    _status = snapshotData['status'] as bool?;
    _email = snapshotData['email'] as String?;
    _ultimos4dig = snapshotData['ultimos4dig'] as String?;
    _creatData = snapshotData['creatData'] as DateTime?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('UserPag');

  static Stream<UserPagRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => UserPagRecord.fromSnapshot(s));

  static Future<UserPagRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => UserPagRecord.fromSnapshot(s));

  static UserPagRecord fromSnapshot(DocumentSnapshot snapshot) =>
      UserPagRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static UserPagRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      UserPagRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'UserPagRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is UserPagRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createUserPagRecordData({
  String? userIDCobreFacil,
  DocumentReference? userid,
  String? idCartao,
  bool? status,
  String? email,
  String? ultimos4dig,
  DateTime? creatData,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'userIDCobreFacil': userIDCobreFacil,
      'Userid': userid,
      'id_cartao': idCartao,
      'status': status,
      'email': email,
      'ultimos4dig': ultimos4dig,
      'creatData': creatData,
    }.withoutNulls,
  );

  return firestoreData;
}

class UserPagRecordDocumentEquality implements Equality<UserPagRecord> {
  const UserPagRecordDocumentEquality();

  @override
  bool equals(UserPagRecord? e1, UserPagRecord? e2) {
    return e1?.userIDCobreFacil == e2?.userIDCobreFacil &&
        e1?.userid == e2?.userid &&
        e1?.idCartao == e2?.idCartao &&
        e1?.status == e2?.status &&
        e1?.email == e2?.email &&
        e1?.ultimos4dig == e2?.ultimos4dig &&
        e1?.creatData == e2?.creatData;
  }

  @override
  int hash(UserPagRecord? e) => const ListEquality().hash([
        e?.userIDCobreFacil,
        e?.userid,
        e?.idCartao,
        e?.status,
        e?.email,
        e?.ultimos4dig,
        e?.creatData
      ]);

  @override
  bool isValidKey(Object? o) => o is UserPagRecord;
}
