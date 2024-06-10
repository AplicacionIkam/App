import 'dart:async';


import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';


import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class MunicipioRecord extends FirestoreRecord {
  
  MunicipioRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

    // "nombreMun" field.
  String? _nombreMun;
  String get nombreMun => _nombreMun ?? '';
  bool hasNombreMun() => _nombreMun != null;


  // "referenciaEstado" field.
  String? _referenciaEstado;
  String get referenciaEstado => _referenciaEstado ?? '';
  bool hasReferenciaEstado() => _referenciaEstado != null;


  // "refEstado" field.
  DocumentReference? _refEstado;
  DocumentReference? get refEstado => _refEstado ;
  bool hasRefEstado() => _refEstado != null;


  

    void _initializeFields() {
    _nombreMun = snapshotData['nombreMun'] as String?;
_referenciaEstado = snapshotData['referenciaEstado'] as String?;
_refEstado = snapshotData['refEstado'] as DocumentReference?;

  }


  static CollectionReference get collection =>
    FirebaseFirestore.instance.collection('municipio');


  static Stream<MunicipioRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => MunicipioRecord.fromSnapshot(s));

  static Future<MunicipioRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => MunicipioRecord.fromSnapshot(s));

  static MunicipioRecord fromSnapshot(DocumentSnapshot snapshot) =>
      MunicipioRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static MunicipioRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      MunicipioRecord._(reference, mapFromFirestore(data));

  

  @override
  String toString() => 'MunicipioRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is MunicipioRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createMunicipioRecordData({String? nombreMun,String? referenciaEstado,DocumentReference? refEstado,}) {
  final firestoreData = mapToFirestore( <String, dynamic>{ 'nombreMun': nombreMun,'referenciaEstado': referenciaEstado,'refEstado': refEstado, }.withoutNulls, );

  

  return firestoreData;
}
class MunicipioRecordDocumentEquality implements Equality<MunicipioRecord> {
  const MunicipioRecordDocumentEquality();

  @override
  bool equals(MunicipioRecord? e1, MunicipioRecord? e2) {
    
    return e1?.nombreMun == e2?.nombreMun && e1?.referenciaEstado == e2?.referenciaEstado && e1?.refEstado == e2?.refEstado;
  }

  @override
  int hash(MunicipioRecord? e) => const ListEquality().hash([e?.nombreMun, e?.referenciaEstado, e?.refEstado]);

  @override
  bool isValidKey(Object? o) => o is MunicipioRecord;
}
