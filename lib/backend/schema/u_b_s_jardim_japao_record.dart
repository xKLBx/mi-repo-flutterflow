import 'dart:async';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UBSJardimJapaoRecord extends FirestoreRecord {
  UBSJardimJapaoRecord._(
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
      FirebaseFirestore.instance.collection('UBSJardimJapao');

  static Stream<UBSJardimJapaoRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => UBSJardimJapaoRecord.fromSnapshot(s));

  static Future<UBSJardimJapaoRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => UBSJardimJapaoRecord.fromSnapshot(s));

  static UBSJardimJapaoRecord fromSnapshot(DocumentSnapshot snapshot) =>
      UBSJardimJapaoRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static UBSJardimJapaoRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      UBSJardimJapaoRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'UBSJardimJapaoRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is UBSJardimJapaoRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createUBSJardimJapaoRecordData({
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
