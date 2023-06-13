import 'dart:async';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UBSJardimSilvaTelesRecord extends FirestoreRecord {
  UBSJardimSilvaTelesRecord._(
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
      FirebaseFirestore.instance.collection('UBSJardimSilvaTeles');

  static Stream<UBSJardimSilvaTelesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => UBSJardimSilvaTelesRecord.fromSnapshot(s));

  static Future<UBSJardimSilvaTelesRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => UBSJardimSilvaTelesRecord.fromSnapshot(s));

  static UBSJardimSilvaTelesRecord fromSnapshot(DocumentSnapshot snapshot) =>
      UBSJardimSilvaTelesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static UBSJardimSilvaTelesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      UBSJardimSilvaTelesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'UBSJardimSilvaTelesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is UBSJardimSilvaTelesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createUBSJardimSilvaTelesRecordData({
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
