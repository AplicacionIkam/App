import 'dart:async';


import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';


import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UserRecord extends FirestoreRecord {
  
  UserRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

    // "email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;


  // "display_name" field.
  String? _displayName;
  String get displayName => _displayName ?? '';
  bool hasDisplayName() => _displayName != null;


  // "photo_url" field.
  String? _photoUrl;
  String get photoUrl => _photoUrl ?? '';
  bool hasPhotoUrl() => _photoUrl != null;


  // "uid" field.
  String? _uid;
  String get uid => _uid ?? '';
  bool hasUid() => _uid != null;


  // "created_time" field.
  DateTime? _createdTime;
  DateTime? get createdTime => _createdTime ;
  bool hasCreatedTime() => _createdTime != null;


  // "phone_number" field.
  String? _phoneNumber;
  String get phoneNumber => _phoneNumber ?? '';
  bool hasPhoneNumber() => _phoneNumber != null;


  // "last_name" field.
  String? _lastName;
  String get lastName => _lastName ?? '';
  bool hasLastName() => _lastName != null;


  // "nick_name" field.
  String? _nickName;
  String get nickName => _nickName ?? '';
  bool hasNickName() => _nickName != null;


  // "age" field.
  int? _age;
  int get age => _age ?? 0;
  bool hasAge() => _age != null;


  // "isPyme" field.
  bool? _isPyme;
  bool get isPyme => _isPyme ?? false;
  bool hasIsPyme() => _isPyme != null;


  // "isAdmin" field.
  bool? _isAdmin;
  bool get isAdmin => _isAdmin ?? false;
  bool hasIsAdmin() => _isAdmin != null;


  

    void _initializeFields() {
    _email = snapshotData['email'] as String?;
_displayName = snapshotData['display_name'] as String?;
_photoUrl = snapshotData['photo_url'] as String?;
_uid = snapshotData['uid'] as String?;
_createdTime = snapshotData['created_time'] as DateTime?;
_phoneNumber = snapshotData['phone_number'] as String?;
_lastName = snapshotData['last_name'] as String?;
_nickName = snapshotData['nick_name'] as String?;
_age = castToType<int>(snapshotData['age']);
_isPyme = snapshotData['isPyme'] as bool?;
_isAdmin = snapshotData['isAdmin'] as bool?;

  }


  static CollectionReference get collection =>
    FirebaseFirestore.instance.collection('user');


  static Stream<UserRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => UserRecord.fromSnapshot(s));

  static Future<UserRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => UserRecord.fromSnapshot(s));

  static UserRecord fromSnapshot(DocumentSnapshot snapshot) =>
      UserRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static UserRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      UserRecord._(reference, mapFromFirestore(data));

  

  @override
  String toString() => 'UserRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is UserRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createUserRecordData({String? email,String? displayName,String? photoUrl,String? uid,DateTime? createdTime,String? phoneNumber,String? lastName,String? nickName,int? age,bool? isPyme,bool? isAdmin,}) {
  final firestoreData = mapToFirestore( <String, dynamic>{ 'email': email,'display_name': displayName,'photo_url': photoUrl,'uid': uid,'created_time': createdTime,'phone_number': phoneNumber,'last_name': lastName,'nick_name': nickName,'age': age,'isPyme': isPyme,'isAdmin': isAdmin, }.withoutNulls, );

  

  return firestoreData;
}
class UserRecordDocumentEquality implements Equality<UserRecord> {
  const UserRecordDocumentEquality();

  @override
  bool equals(UserRecord? e1, UserRecord? e2) {
    
    return e1?.email == e2?.email && e1?.displayName == e2?.displayName && e1?.photoUrl == e2?.photoUrl && e1?.uid == e2?.uid && e1?.createdTime == e2?.createdTime && e1?.phoneNumber == e2?.phoneNumber && e1?.lastName == e2?.lastName && e1?.nickName == e2?.nickName && e1?.age == e2?.age && e1?.isPyme == e2?.isPyme && e1?.isAdmin == e2?.isAdmin;
  }

  @override
  int hash(UserRecord? e) => const ListEquality().hash([e?.email, e?.displayName, e?.photoUrl, e?.uid, e?.createdTime, e?.phoneNumber, e?.lastName, e?.nickName, e?.age, e?.isPyme, e?.isAdmin]);

  @override
  bool isValidKey(Object? o) => o is UserRecord;
}
