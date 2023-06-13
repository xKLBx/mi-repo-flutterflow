import 'dart:async';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class HospitalCampolimpoRecord extends FirestoreRecord {
  HospitalCampolimpoRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "local" field.
  LatLng? _local;
  LatLng? get local => _local;
  bool hasLocal() => _local != null;

  // "nome" field.
  String? _nome;
  String get nome => _nome ?? '';
  bool hasNome() => _nome != null;

  void _initializeFields() {
    _local = snapshotData['local'] as LatLng?;
    _nome = snapshotData['nome'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('hospital_campolimpo');

  static Stream<HospitalCampolimpoRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => HospitalCampolimpoRecord.fromSnapshot(s));

  static Future<HospitalCampolimpoRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => HospitalCampolimpoRecord.fromSnapshot(s));

  static HospitalCampolimpoRecord fromSnapshot(DocumentSnapshot snapshot) =>
      HospitalCampolimpoRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static HospitalCampolimpoRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      HospitalCampolimpoRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'HospitalCampolimpoRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is HospitalCampolimpoRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createHospitalCampolimpoRecordData({
  LatLng? local,
  String? nome,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'local': local,
      'nome': nome,
    }.withoutNulls,
  );

  return firestoreData;
}
