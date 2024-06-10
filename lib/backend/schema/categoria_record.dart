import 'dart:async';


import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';


import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CategoriaRecord extends FirestoreRecord {
  
  CategoriaRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

    // "nombreCate" field.
  String? _nombreCate;
  String get nombreCate => _nombreCate ?? '';
  bool hasNombreCate() => _nombreCate != null;


  // "imagenCat" field.
  String? _imagenCat;
  String get imagenCat => _imagenCat ?? '';
  bool hasImagenCat() => _imagenCat != null;


  

    void _initializeFields() {
    _nombreCate = snapshotData['nombreCate'] as String?;
_imagenCat = snapshotData['imagenCat'] as String?;

  }


  static CollectionReference get collection =>
    FirebaseFirestore.instance.collection('categoria');


  static Stream<CategoriaRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => CategoriaRecord.fromSnapshot(s));

  static Future<CategoriaRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => CategoriaRecord.fromSnapshot(s));

  static CategoriaRecord fromSnapshot(DocumentSnapshot snapshot) =>
      CategoriaRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static CategoriaRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      CategoriaRecord._(reference, mapFromFirestore(data));

  

  @override
  String toString() => 'CategoriaRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is CategoriaRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createCategoriaRecordData({String? nombreCate,String? imagenCat,}) {
  final firestoreData = mapToFirestore( <String, dynamic>{ 'nombreCate': nombreCate,'imagenCat': imagenCat, }.withoutNulls, );

  

  return firestoreData;
}
class CategoriaRecordDocumentEquality implements Equality<CategoriaRecord> {
  const CategoriaRecordDocumentEquality();

  @override
  bool equals(CategoriaRecord? e1, CategoriaRecord? e2) {
    
    return e1?.nombreCate == e2?.nombreCate && e1?.imagenCat == e2?.imagenCat;
  }

  @override
  int hash(CategoriaRecord? e) => const ListEquality().hash([e?.nombreCate, e?.imagenCat]);

  @override
  bool isValidKey(Object? o) => o is CategoriaRecord;
}
