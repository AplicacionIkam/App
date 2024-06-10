import 'dart:async';


import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';


import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class SubCategoriaRecord extends FirestoreRecord {
  
  SubCategoriaRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

    // "nombreSubc" field.
  String? _nombreSubc;
  String get nombreSubc => _nombreSubc ?? '';
  bool hasNombreSubc() => _nombreSubc != null;


  // "referenciaCate" field.
  String? _referenciaCate;
  String get referenciaCate => _referenciaCate ?? '';
  bool hasReferenciaCate() => _referenciaCate != null;


  // "refCategoria" field.
  DocumentReference? _refCategoria;
  DocumentReference? get refCategoria => _refCategoria ;
  bool hasRefCategoria() => _refCategoria != null;


  

    void _initializeFields() {
    _nombreSubc = snapshotData['nombreSubc'] as String?;
_referenciaCate = snapshotData['referenciaCate'] as String?;
_refCategoria = snapshotData['refCategoria'] as DocumentReference?;

  }


  static CollectionReference get collection =>
    FirebaseFirestore.instance.collection('subCategoria');


  static Stream<SubCategoriaRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => SubCategoriaRecord.fromSnapshot(s));

  static Future<SubCategoriaRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => SubCategoriaRecord.fromSnapshot(s));

  static SubCategoriaRecord fromSnapshot(DocumentSnapshot snapshot) =>
      SubCategoriaRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static SubCategoriaRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      SubCategoriaRecord._(reference, mapFromFirestore(data));

  

  @override
  String toString() => 'SubCategoriaRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is SubCategoriaRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createSubCategoriaRecordData({String? nombreSubc,String? referenciaCate,DocumentReference? refCategoria,}) {
  final firestoreData = mapToFirestore( <String, dynamic>{ 'nombreSubc': nombreSubc,'referenciaCate': referenciaCate,'refCategoria': refCategoria, }.withoutNulls, );

  

  return firestoreData;
}
class SubCategoriaRecordDocumentEquality implements Equality<SubCategoriaRecord> {
  const SubCategoriaRecordDocumentEquality();

  @override
  bool equals(SubCategoriaRecord? e1, SubCategoriaRecord? e2) {
    
    return e1?.nombreSubc == e2?.nombreSubc && e1?.referenciaCate == e2?.referenciaCate && e1?.refCategoria == e2?.refCategoria;
  }

  @override
  int hash(SubCategoriaRecord? e) => const ListEquality().hash([e?.nombreSubc, e?.referenciaCate, e?.refCategoria]);

  @override
  bool isValidKey(Object? o) => o is SubCategoriaRecord;
}
