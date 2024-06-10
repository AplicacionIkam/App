import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import '../auth/firebase_auth/auth_util.dart';

import '../flutter_flow/flutter_flow_util.dart';
import 'schema/util/firestore_util.dart';

import 'schema/user_record.dart';
import 'schema/estado_record.dart';
import 'schema/municipio_record.dart';
import 'schema/categoria_record.dart';
import 'schema/sub_categoria_record.dart';
import 'schema/pyme_record.dart';
import 'schema/colonia_record.dart';


export 'dart:async' show StreamSubscription;
export 'package:cloud_firestore/cloud_firestore.dart';
export 'package:firebase_core/firebase_core.dart';
export 'schema/index.dart';
export 'schema/util/firestore_util.dart';
export 'schema/util/schema_util.dart';

export 'schema/user_record.dart';
export 'schema/estado_record.dart';
export 'schema/municipio_record.dart';
export 'schema/categoria_record.dart';
export 'schema/sub_categoria_record.dart';
export 'schema/pyme_record.dart';
export 'schema/colonia_record.dart';


/// Functions to query UserRecords (as a Stream and as a Future).
Future<int> queryUserRecordCount(
  {
  
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
  queryCollectionCount(
    UserRecord.collection,
    queryBuilder: queryBuilder,
    limit: limit,
  );

Stream<List<UserRecord>> queryUserRecord(
      {
      
      Query Function(Query)? queryBuilder,
      int limit = -1,
      bool singleRecord = false,}) =>
  queryCollection(UserRecord.collection, UserRecord.fromSnapshot,
      queryBuilder: queryBuilder, limit: limit, singleRecord: singleRecord,);
        
Future<List<UserRecord>> queryUserRecordOnce(
      {
      
      Query Function(Query)? queryBuilder,
      int limit = -1,
      bool singleRecord = false,}) =>
  queryCollectionOnce(UserRecord.collection, UserRecord.fromSnapshot,
      queryBuilder: queryBuilder, limit: limit, singleRecord: singleRecord,);


/// Functions to query EstadoRecords (as a Stream and as a Future).
Future<int> queryEstadoRecordCount(
  {
  
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
  queryCollectionCount(
    EstadoRecord.collection,
    queryBuilder: queryBuilder,
    limit: limit,
  );

Stream<List<EstadoRecord>> queryEstadoRecord(
      {
      
      Query Function(Query)? queryBuilder,
      int limit = -1,
      bool singleRecord = false,}) =>
  queryCollection(EstadoRecord.collection, EstadoRecord.fromSnapshot,
      queryBuilder: queryBuilder, limit: limit, singleRecord: singleRecord,);
        
Future<List<EstadoRecord>> queryEstadoRecordOnce(
      {
      
      Query Function(Query)? queryBuilder,
      int limit = -1,
      bool singleRecord = false,}) =>
  queryCollectionOnce(EstadoRecord.collection, EstadoRecord.fromSnapshot,
      queryBuilder: queryBuilder, limit: limit, singleRecord: singleRecord,);


/// Functions to query MunicipioRecords (as a Stream and as a Future).
Future<int> queryMunicipioRecordCount(
  {
  
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
  queryCollectionCount(
    MunicipioRecord.collection,
    queryBuilder: queryBuilder,
    limit: limit,
  );

Stream<List<MunicipioRecord>> queryMunicipioRecord(
      {
      
      Query Function(Query)? queryBuilder,
      int limit = -1,
      bool singleRecord = false,}) =>
  queryCollection(MunicipioRecord.collection, MunicipioRecord.fromSnapshot,
      queryBuilder: queryBuilder, limit: limit, singleRecord: singleRecord,);
        
Future<List<MunicipioRecord>> queryMunicipioRecordOnce(
      {
      
      Query Function(Query)? queryBuilder,
      int limit = -1,
      bool singleRecord = false,}) =>
  queryCollectionOnce(MunicipioRecord.collection, MunicipioRecord.fromSnapshot,
      queryBuilder: queryBuilder, limit: limit, singleRecord: singleRecord,);


/// Functions to query CategoriaRecords (as a Stream and as a Future).
Future<int> queryCategoriaRecordCount(
  {
  
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
  queryCollectionCount(
    CategoriaRecord.collection,
    queryBuilder: queryBuilder,
    limit: limit,
  );

Stream<List<CategoriaRecord>> queryCategoriaRecord(
      {
      
      Query Function(Query)? queryBuilder,
      int limit = -1,
      bool singleRecord = false,}) =>
  queryCollection(CategoriaRecord.collection, CategoriaRecord.fromSnapshot,
      queryBuilder: queryBuilder, limit: limit, singleRecord: singleRecord,);
        
Future<List<CategoriaRecord>> queryCategoriaRecordOnce(
      {
      
      Query Function(Query)? queryBuilder,
      int limit = -1,
      bool singleRecord = false,}) =>
  queryCollectionOnce(CategoriaRecord.collection, CategoriaRecord.fromSnapshot,
      queryBuilder: queryBuilder, limit: limit, singleRecord: singleRecord,);


/// Functions to query SubCategoriaRecords (as a Stream and as a Future).
Future<int> querySubCategoriaRecordCount(
  {
  
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
  queryCollectionCount(
    SubCategoriaRecord.collection,
    queryBuilder: queryBuilder,
    limit: limit,
  );

Stream<List<SubCategoriaRecord>> querySubCategoriaRecord(
      {
      
      Query Function(Query)? queryBuilder,
      int limit = -1,
      bool singleRecord = false,}) =>
  queryCollection(SubCategoriaRecord.collection, SubCategoriaRecord.fromSnapshot,
      queryBuilder: queryBuilder, limit: limit, singleRecord: singleRecord,);
        
Future<List<SubCategoriaRecord>> querySubCategoriaRecordOnce(
      {
      
      Query Function(Query)? queryBuilder,
      int limit = -1,
      bool singleRecord = false,}) =>
  queryCollectionOnce(SubCategoriaRecord.collection, SubCategoriaRecord.fromSnapshot,
      queryBuilder: queryBuilder, limit: limit, singleRecord: singleRecord,);


/// Functions to query PymeRecords (as a Stream and as a Future).
Future<int> queryPymeRecordCount(
  {
  
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
  queryCollectionCount(
    PymeRecord.collection,
    queryBuilder: queryBuilder,
    limit: limit,
  );

Stream<List<PymeRecord>> queryPymeRecord(
      {
      
      Query Function(Query)? queryBuilder,
      int limit = -1,
      bool singleRecord = false,}) =>
  queryCollection(PymeRecord.collection, PymeRecord.fromSnapshot,
      queryBuilder: queryBuilder, limit: limit, singleRecord: singleRecord,);
        
Future<List<PymeRecord>> queryPymeRecordOnce(
      {
      
      Query Function(Query)? queryBuilder,
      int limit = -1,
      bool singleRecord = false,}) =>
  queryCollectionOnce(PymeRecord.collection, PymeRecord.fromSnapshot,
      queryBuilder: queryBuilder, limit: limit, singleRecord: singleRecord,);


/// Functions to query ColoniaRecords (as a Stream and as a Future).
Future<int> queryColoniaRecordCount(
  {
  
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
  queryCollectionCount(
    ColoniaRecord.collection,
    queryBuilder: queryBuilder,
    limit: limit,
  );

Stream<List<ColoniaRecord>> queryColoniaRecord(
      {
      
      Query Function(Query)? queryBuilder,
      int limit = -1,
      bool singleRecord = false,}) =>
  queryCollection(ColoniaRecord.collection, ColoniaRecord.fromSnapshot,
      queryBuilder: queryBuilder, limit: limit, singleRecord: singleRecord,);
        
Future<List<ColoniaRecord>> queryColoniaRecordOnce(
      {
      
      Query Function(Query)? queryBuilder,
      int limit = -1,
      bool singleRecord = false,}) =>
  queryCollectionOnce(ColoniaRecord.collection, ColoniaRecord.fromSnapshot,
      queryBuilder: queryBuilder, limit: limit, singleRecord: singleRecord,);




Future<int> queryCollectionCount(
  Query collection, {
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) {
  final builder = queryBuilder ?? (q) => q;
  var query = builder(collection);
  if (limit > 0) {
    query = query.limit(limit);
  }

  return query.count().get().catchError((err) {
    print('Error querying $collection: $err');
  }).then((value) => value.count!);
}

Stream<List<T>> queryCollection<T>(
    Query collection, RecordBuilder<T> recordBuilder,
    {Query Function(Query)? queryBuilder,
    int limit = -1,
    bool singleRecord = false,}) {
  final builder = queryBuilder ?? (q) => q;
  var query = builder(collection);
  if (limit > 0 || singleRecord) {
    query = query.limit(singleRecord ? 1 : limit);
  }
  return query.snapshots().handleError((err) { print('Error querying $collection: $err'); }).map((s) => s.docs
      .map(
        (d) => safeGet(
          () => recordBuilder(d),
          (e) => print('Error serializing doc ${d.reference.path}:\n$e'),
        ),
      )
      .where((d) => d != null)
      .map((d) => d!)
      .toList());
}

Future<List<T>> queryCollectionOnce<T>(
    Query collection, RecordBuilder<T> recordBuilder,
    {Query Function(Query)? queryBuilder,
    int limit = -1,
    bool singleRecord = false,}) {
  final builder = queryBuilder ?? (q) => q;
  var query = builder(collection);
  if (limit > 0 || singleRecord) {
    query = query.limit(singleRecord ? 1 : limit);
  }
  return query.get().then((s) => s.docs
      .map(
        (d) => safeGet(
          () => recordBuilder(d),
          (e) => print('Error serializing doc ${d.reference.path}:\n$e'),
        ),
      )
      .where((d) => d != null)
      .map((d) => d!)
      .toList());
}

Filter filterIn(String field, List? list) => (list?.isEmpty ?? true)
    ? Filter(field, whereIn: null)
    : Filter(field, whereIn: list);

Filter filterArrayContainsAny(String field, List? list) =>
    (list?.isEmpty ?? true)
        ? Filter(field, arrayContainsAny: null)
        : Filter(field, arrayContainsAny: list);

extension QueryExtension on Query {
  Query whereIn(String field, List? list) => (list?.isEmpty ?? true)
      ? where(field, whereIn: null)
      : where(field, whereIn: list);

  Query whereNotIn(String field, List? list) => (list?.isEmpty ?? true)
      ? where(field, whereNotIn: null)
      : where(field, whereNotIn: list);

  Query whereArrayContainsAny(String field, List? list) => (list?.isEmpty ?? true)
      ? where(field, arrayContainsAny: null)
      : where(field, arrayContainsAny: list);
}

class FFFirestorePage<T> {
  final List<T> data;
  final Stream<List<T>>? dataStream;
  final QueryDocumentSnapshot? nextPageMarker;

  FFFirestorePage(this.data, this.dataStream, this.nextPageMarker);
}

Future<FFFirestorePage<T>> queryCollectionPage<T>(
    Query collection, RecordBuilder<T> recordBuilder,
    {Query Function(Query)? queryBuilder,
    DocumentSnapshot? nextPageMarker,
    required int pageSize,
    required bool isStream,
    }) async {
  final builder = queryBuilder ?? (q) => q;
  var query = builder(collection).limit(pageSize);
  if (nextPageMarker != null) {
    query = query.startAfterDocument(nextPageMarker);
  }
  Stream<QuerySnapshot>? docSnapshotStream;
  QuerySnapshot docSnapshot;
  if (isStream) {
    docSnapshotStream = query.snapshots();
    docSnapshot = await docSnapshotStream.first;
  } else {
    docSnapshot = await query.get();
  }
  final getDocs = (QuerySnapshot s) => s.docs
      .map(
        (d) => safeGet(
          () => recordBuilder(d),
          (e) => print('Error serializing doc ${d.reference.path}:\n$e'),
        ),
      )
      .where((d) => d != null)
      .map((d) => d!)
      .toList();
  final data = getDocs(docSnapshot);
  final dataStream = docSnapshotStream?.map(getDocs);
  final nextPageToken = docSnapshot.docs.isEmpty ? null : docSnapshot.docs.last;
  return FFFirestorePage(data, dataStream, nextPageToken);
}

// Creates a Firestore document representing the logged in user if it doesn't yet exist
Future maybeCreateUser(User user) async {
  final userRecord = UserRecord.collection.doc(user.uid);
  final userExists = await userRecord.get().then((u) => u.exists);
  if (userExists) {
    currentUserDocument = await UserRecord.getDocumentOnce(userRecord);
    return;
  }

  final userData = createUserRecordData(
    email: user.email ?? FirebaseAuth.instance.currentUser?.email ?? user.providerData.firstOrNull?.email,
    displayName: user.displayName ?? FirebaseAuth.instance.currentUser?.displayName,
    photoUrl: user.photoURL,
    uid: user.uid,
    phoneNumber: user.phoneNumber,
    createdTime: getCurrentTimestamp,
  );
  
  await userRecord.set(userData);
  currentUserDocument = UserRecord.getDocumentFromData(userData, userRecord);
}
Future updateUserDocument({String? email}) async {
  await currentUserDocument?.reference
      .update(createUserRecordData(email: email));
}

