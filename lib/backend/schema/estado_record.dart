import 'dart:async';


import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';


import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class EstadoRecord extends FirestoreRecord {
  
  EstadoRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

    // "nombreEst" field.
  String? _nombreEst;
  String get nombreEst => _nombreEst ?? '';
  bool hasNombreEst() => _nombreEst != null;


  

    void _initializeFields() {
    _nombreEst = snapshotData['nombreEst'] as String?;

  }


  static CollectionReference get collection =>
    FirebaseFirestore.instance.collection('estado');


  static Stream<EstadoRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => EstadoRecord.fromSnapshot(s));

  static Future<EstadoRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => EstadoRecord.fromSnapshot(s));

  static EstadoRecord fromSnapshot(DocumentSnapshot snapshot) =>
      EstadoRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static EstadoRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      EstadoRecord._(reference, mapFromFirestore(data));

  

  @override
  String toString() => 'EstadoRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is EstadoRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createEstadoRecordData({String? nombreEst,}) {
  final firestoreData = mapToFirestore( <String, dynamic>{ 'nombreEst': nombreEst, }.withoutNulls, );

  

  return firestoreData;
}
class EstadoRecordDocumentEquality implements Equality<EstadoRecord> {
  const EstadoRecordDocumentEquality();

  @override
  bool equals(EstadoRecord? e1, EstadoRecord? e2) {
    
    return e1?.nombreEst == e2?.nombreEst;
  }

  @override
  int hash(EstadoRecord? e) => const ListEquality().hash([e?.nombreEst]);

  @override
  bool isValidKey(Object? o) => o is EstadoRecord;
}
