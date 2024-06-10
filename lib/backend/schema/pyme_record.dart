import 'dart:async';


import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';


import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PymeRecord extends FirestoreRecord {
  
  PymeRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

    // "nombre_pyme" field.
  String? _nombrePyme;
  String get nombrePyme => _nombrePyme ?? '';
  bool hasNombrePyme() => _nombrePyme != null;


  // "nombre_encargado" field.
  String? _nombreEncargado;
  String get nombreEncargado => _nombreEncargado ?? '';
  bool hasNombreEncargado() => _nombreEncargado != null;


  // "numero_local" field.
  String? _numeroLocal;
  String get numeroLocal => _numeroLocal ?? '';
  bool hasNumeroLocal() => _numeroLocal != null;


  // "numero_cel" field.
  String? _numeroCel;
  String get numeroCel => _numeroCel ?? '';
  bool hasNumeroCel() => _numeroCel != null;


  // "direccion" field.
  String? _direccion;
  String get direccion => _direccion ?? '';
  bool hasDireccion() => _direccion != null;


  // "horario_apertura" field.
  String? _horarioApertura;
  String get horarioApertura => _horarioApertura ?? '';
  bool hasHorarioApertura() => _horarioApertura != null;


  // "horario_cierre" field.
  String? _horarioCierre;
  String get horarioCierre => _horarioCierre ?? '';
  bool hasHorarioCierre() => _horarioCierre != null;


  // "horario_atencion" field.
  String? _horarioAtencion;
  String get horarioAtencion => _horarioAtencion ?? '';
  bool hasHorarioAtencion() => _horarioAtencion != null;


  // "url_tiktok" field.
  String? _urlTiktok;
  String get urlTiktok => _urlTiktok ?? '';
  bool hasUrlTiktok() => _urlTiktok != null;


  // "url_facebook" field.
  String? _urlFacebook;
  String get urlFacebook => _urlFacebook ?? '';
  bool hasUrlFacebook() => _urlFacebook != null;


  // "url_instagram" field.
  String? _urlInstagram;
  String get urlInstagram => _urlInstagram ?? '';
  bool hasUrlInstagram() => _urlInstagram != null;


  // "url_maps" field.
  String? _urlMaps;
  String get urlMaps => _urlMaps ?? '';
  bool hasUrlMaps() => _urlMaps != null;


  // "imagen1" field.
  String? _imagen1;
  String get imagen1 => _imagen1 ?? '';
  bool hasImagen1() => _imagen1 != null;


  // "imagen2" field.
  String? _imagen2;
  String get imagen2 => _imagen2 ?? '';
  bool hasImagen2() => _imagen2 != null;


  // "imagen3" field.
  String? _imagen3;
  String get imagen3 => _imagen3 ?? '';
  bool hasImagen3() => _imagen3 != null;


  // "video" field.
  String? _video;
  String get video => _video ?? '';
  bool hasVideo() => _video != null;


  // "uid" field.
  String? _uid;
  String get uid => _uid ?? '';
  bool hasUid() => _uid != null;


  // "estadoRef" field.
  DocumentReference? _estadoRef;
  DocumentReference? get estadoRef => _estadoRef ;
  bool hasEstadoRef() => _estadoRef != null;


  // "municipioRed" field.
  DocumentReference? _municipioRed;
  DocumentReference? get municipioRed => _municipioRed ;
  bool hasMunicipioRed() => _municipioRed != null;


  // "userRef" field.
  DocumentReference? _userRef;
  DocumentReference? get userRef => _userRef ;
  bool hasUserRef() => _userRef != null;


  // "categoriaRef" field.
  DocumentReference? _categoriaRef;
  DocumentReference? get categoriaRef => _categoriaRef ;
  bool hasCategoriaRef() => _categoriaRef != null;


  // "correoPyme" field.
  String? _correoPyme;
  String get correoPyme => _correoPyme ?? '';
  bool hasCorreoPyme() => _correoPyme != null;


  // "estadoPyme" field.
  String? _estadoPyme;
  String get estadoPyme => _estadoPyme ?? '';
  bool hasEstadoPyme() => _estadoPyme != null;


  // "municipioPyme" field.
  String? _municipioPyme;
  String get municipioPyme => _municipioPyme ?? '';
  bool hasMunicipioPyme() => _municipioPyme != null;


  // "categoriaPyme" field.
  String? _categoriaPyme;
  String get categoriaPyme => _categoriaPyme ?? '';
  bool hasCategoriaPyme() => _categoriaPyme != null;


  // "url_correo" field.
  String? _urlCorreo;
  String get urlCorreo => _urlCorreo ?? '';
  bool hasUrlCorreo() => _urlCorreo != null;


  // "favorito" field.
  List<DocumentReference>? _favorito;
  List<DocumentReference> get favorito => _favorito ?? const [];
  bool hasFavorito() => _favorito != null;


  // "coloniaRef" field.
  DocumentReference? _coloniaRef;
  DocumentReference? get coloniaRef => _coloniaRef ;
  bool hasColoniaRef() => _coloniaRef != null;


  // "subcatRef" field.
  DocumentReference? _subcatRef;
  DocumentReference? get subcatRef => _subcatRef ;
  bool hasSubcatRef() => _subcatRef != null;


  // "coloniaPyme" field.
  String? _coloniaPyme;
  String get coloniaPyme => _coloniaPyme ?? '';
  bool hasColoniaPyme() => _coloniaPyme != null;


  // "subcatPyme" field.
  String? _subcatPyme;
  String get subcatPyme => _subcatPyme ?? '';
  bool hasSubcatPyme() => _subcatPyme != null;


  // "url_twitter" field.
  String? _urlTwitter;
  String get urlTwitter => _urlTwitter ?? '';
  bool hasUrlTwitter() => _urlTwitter != null;


  

    void _initializeFields() {
    _nombrePyme = snapshotData['nombre_pyme'] as String?;
_nombreEncargado = snapshotData['nombre_encargado'] as String?;
_numeroLocal = snapshotData['numero_local'] as String?;
_numeroCel = snapshotData['numero_cel'] as String?;
_direccion = snapshotData['direccion'] as String?;
_horarioApertura = snapshotData['horario_apertura'] as String?;
_horarioCierre = snapshotData['horario_cierre'] as String?;
_horarioAtencion = snapshotData['horario_atencion'] as String?;
_urlTiktok = snapshotData['url_tiktok'] as String?;
_urlFacebook = snapshotData['url_facebook'] as String?;
_urlInstagram = snapshotData['url_instagram'] as String?;
_urlMaps = snapshotData['url_maps'] as String?;
_imagen1 = snapshotData['imagen1'] as String?;
_imagen2 = snapshotData['imagen2'] as String?;
_imagen3 = snapshotData['imagen3'] as String?;
_video = snapshotData['video'] as String?;
_uid = snapshotData['uid'] as String?;
_estadoRef = snapshotData['estadoRef'] as DocumentReference?;
_municipioRed = snapshotData['municipioRed'] as DocumentReference?;
_userRef = snapshotData['userRef'] as DocumentReference?;
_categoriaRef = snapshotData['categoriaRef'] as DocumentReference?;
_correoPyme = snapshotData['correoPyme'] as String?;
_estadoPyme = snapshotData['estadoPyme'] as String?;
_municipioPyme = snapshotData['municipioPyme'] as String?;
_categoriaPyme = snapshotData['categoriaPyme'] as String?;
_urlCorreo = snapshotData['url_correo'] as String?;
_favorito = getDataList(snapshotData['favorito']);
_coloniaRef = snapshotData['coloniaRef'] as DocumentReference?;
_subcatRef = snapshotData['subcatRef'] as DocumentReference?;
_coloniaPyme = snapshotData['coloniaPyme'] as String?;
_subcatPyme = snapshotData['subcatPyme'] as String?;
_urlTwitter = snapshotData['url_twitter'] as String?;

  }


  static CollectionReference get collection =>
    FirebaseFirestore.instance.collection('pyme');


  static Stream<PymeRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => PymeRecord.fromSnapshot(s));

  static Future<PymeRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => PymeRecord.fromSnapshot(s));

  static PymeRecord fromSnapshot(DocumentSnapshot snapshot) =>
      PymeRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static PymeRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      PymeRecord._(reference, mapFromFirestore(data));

  

  @override
  String toString() => 'PymeRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is PymeRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createPymeRecordData({String? nombrePyme,String? nombreEncargado,String? numeroLocal,String? numeroCel,String? direccion,String? horarioApertura,String? horarioCierre,String? horarioAtencion,String? urlTiktok,String? urlFacebook,String? urlInstagram,String? urlMaps,String? imagen1,String? imagen2,String? imagen3,String? video,String? uid,DocumentReference? estadoRef,DocumentReference? municipioRed,DocumentReference? userRef,DocumentReference? categoriaRef,String? correoPyme,String? estadoPyme,String? municipioPyme,String? categoriaPyme,String? urlCorreo,DocumentReference? coloniaRef,DocumentReference? subcatRef,String? coloniaPyme,String? subcatPyme,String? urlTwitter,}) {
  final firestoreData = mapToFirestore( <String, dynamic>{ 'nombre_pyme': nombrePyme,'nombre_encargado': nombreEncargado,'numero_local': numeroLocal,'numero_cel': numeroCel,'direccion': direccion,'horario_apertura': horarioApertura,'horario_cierre': horarioCierre,'horario_atencion': horarioAtencion,'url_tiktok': urlTiktok,'url_facebook': urlFacebook,'url_instagram': urlInstagram,'url_maps': urlMaps,'imagen1': imagen1,'imagen2': imagen2,'imagen3': imagen3,'video': video,'uid': uid,'estadoRef': estadoRef,'municipioRed': municipioRed,'userRef': userRef,'categoriaRef': categoriaRef,'correoPyme': correoPyme,'estadoPyme': estadoPyme,'municipioPyme': municipioPyme,'categoriaPyme': categoriaPyme,'url_correo': urlCorreo,'coloniaRef': coloniaRef,'subcatRef': subcatRef,'coloniaPyme': coloniaPyme,'subcatPyme': subcatPyme,'url_twitter': urlTwitter, }.withoutNulls, );

  

  return firestoreData;
}
class PymeRecordDocumentEquality implements Equality<PymeRecord> {
  const PymeRecordDocumentEquality();

  @override
  bool equals(PymeRecord? e1, PymeRecord? e2) {
    const listEquality = ListEquality();
    return e1?.nombrePyme == e2?.nombrePyme && e1?.nombreEncargado == e2?.nombreEncargado && e1?.numeroLocal == e2?.numeroLocal && e1?.numeroCel == e2?.numeroCel && e1?.direccion == e2?.direccion && e1?.horarioApertura == e2?.horarioApertura && e1?.horarioCierre == e2?.horarioCierre && e1?.horarioAtencion == e2?.horarioAtencion && e1?.urlTiktok == e2?.urlTiktok && e1?.urlFacebook == e2?.urlFacebook && e1?.urlInstagram == e2?.urlInstagram && e1?.urlMaps == e2?.urlMaps && e1?.imagen1 == e2?.imagen1 && e1?.imagen2 == e2?.imagen2 && e1?.imagen3 == e2?.imagen3 && e1?.video == e2?.video && e1?.uid == e2?.uid && e1?.estadoRef == e2?.estadoRef && e1?.municipioRed == e2?.municipioRed && e1?.userRef == e2?.userRef && e1?.categoriaRef == e2?.categoriaRef && e1?.correoPyme == e2?.correoPyme && e1?.estadoPyme == e2?.estadoPyme && e1?.municipioPyme == e2?.municipioPyme && e1?.categoriaPyme == e2?.categoriaPyme && e1?.urlCorreo == e2?.urlCorreo && listEquality.equals(e1?.favorito, e2?.favorito) && e1?.coloniaRef == e2?.coloniaRef && e1?.subcatRef == e2?.subcatRef && e1?.coloniaPyme == e2?.coloniaPyme && e1?.subcatPyme == e2?.subcatPyme && e1?.urlTwitter == e2?.urlTwitter;
  }

  @override
  int hash(PymeRecord? e) => const ListEquality().hash([e?.nombrePyme, e?.nombreEncargado, e?.numeroLocal, e?.numeroCel, e?.direccion, e?.horarioApertura, e?.horarioCierre, e?.horarioAtencion, e?.urlTiktok, e?.urlFacebook, e?.urlInstagram, e?.urlMaps, e?.imagen1, e?.imagen2, e?.imagen3, e?.video, e?.uid, e?.estadoRef, e?.municipioRed, e?.userRef, e?.categoriaRef, e?.correoPyme, e?.estadoPyme, e?.municipioPyme, e?.categoriaPyme, e?.urlCorreo, e?.favorito, e?.coloniaRef, e?.subcatRef, e?.coloniaPyme, e?.subcatPyme, e?.urlTwitter]);

  @override
  bool isValidKey(Object? o) => o is PymeRecord;
}
