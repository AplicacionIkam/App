import 'dart:async';


import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';


import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ColoniaRecord extends FirestoreRecord {
  
  ColoniaRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

    // "nombreCol" field.
  String? _nombreCol;
  String get nombreCol => _nombreCol ?? '';
  bool hasNombreCol() => _nombreCol != null;


  // "referenciaMun" field.
  String? _referenciaMun;
  String get referenciaMun => _referenciaMun ?? '';
  bool hasReferenciaMun() => _referenciaMun != null;


  // "refMunicipio" field.
  DocumentReference? _refMunicipio;
  DocumentReference? get refMunicipio => _refMunicipio ;
  bool hasRefMunicipio() => _refMunicipio != null;


  

    void _initializeFields() {
    _nombreCol = snapshotData['nombreCol'] as String?;
_referenciaMun = snapshotData['referenciaMun'] as String?;
_refMunicipio = snapshotData['refMunicipio'] as DocumentReference?;

  }


  static CollectionReference get collection =>
    FirebaseFirestore.instance.collection('colonia');


  static Stream<ColoniaRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ColoniaRecord.fromSnapshot(s));

  static Future<ColoniaRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ColoniaRecord.fromSnapshot(s));

  static ColoniaRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ColoniaRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ColoniaRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ColoniaRecord._(reference, mapFromFirestore(data));

  

  @override
  String toString() => 'ColoniaRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ColoniaRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createColoniaRecordData({String? nombreCol,String? referenciaMun,DocumentReference? refMunicipio,}) {
  final firestoreData = mapToFirestore( <String, dynamic>{ 'nombreCol': nombreCol,'referenciaMun': referenciaMun,'refMunicipio': refMunicipio, }.withoutNulls, );

  

  return firestoreData;
}
class ColoniaRecordDocumentEquality implements Equality<ColoniaRecord> {
  const ColoniaRecordDocumentEquality();

  @override
  bool equals(ColoniaRecord? e1, ColoniaRecord? e2) {
    
    return e1?.nombreCol == e2?.nombreCol && e1?.referenciaMun == e2?.referenciaMun && e1?.refMunicipio == e2?.refMunicipio;
  }

  @override
  int hash(ColoniaRecord? e) => const ListEquality().hash([e?.nombreCol, e?.referenciaMun, e?.refMunicipio]);

  @override
  bool isValidKey(Object? o) => o is ColoniaRecord;
}
