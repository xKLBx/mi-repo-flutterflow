import 'dart:async';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UBSJardimEledyRecord extends FirestoreRecord {
  UBSJardimEledyRecord._(
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
      FirebaseFirestore.instance.collection('UBSJardimEledy');

  static Stream<UBSJardimEledyRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => UBSJardimEledyRecord.fromSnapshot(s));

  static Future<UBSJardimEledyRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => UBSJardimEledyRecord.fromSnapshot(s));

  static UBSJardimEledyRecord fromSnapshot(DocumentSnapshot snapshot) =>
      UBSJardimEledyRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static UBSJardimEledyRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      UBSJardimEledyRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'UBSJardimEledyRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is UBSJardimEledyRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createUBSJardimEledyRecordData({
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
