import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UBSMascarenhasdeMoraesRecord extends FirestoreRecord {
  UBSMascarenhasdeMoraesRecord._(
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
      FirebaseFirestore.instance.collection('UBSMascarenhasdeMoraes');

  static Stream<UBSMascarenhasdeMoraesRecord> getDocument(
          DocumentReference ref) =>
      ref.snapshots().map((s) => UBSMascarenhasdeMoraesRecord.fromSnapshot(s));

  static Future<UBSMascarenhasdeMoraesRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => UBSMascarenhasdeMoraesRecord.fromSnapshot(s));

  static UBSMascarenhasdeMoraesRecord fromSnapshot(DocumentSnapshot snapshot) =>
      UBSMascarenhasdeMoraesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static UBSMascarenhasdeMoraesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      UBSMascarenhasdeMoraesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'UBSMascarenhasdeMoraesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is UBSMascarenhasdeMoraesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createUBSMascarenhasdeMoraesRecordData({
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

class UBSMascarenhasdeMoraesRecordDocumentEquality
    implements Equality<UBSMascarenhasdeMoraesRecord> {
  const UBSMascarenhasdeMoraesRecordDocumentEquality();

  @override
  bool equals(
      UBSMascarenhasdeMoraesRecord? e1, UBSMascarenhasdeMoraesRecord? e2) {
    return e1?.local == e2?.local && e1?.nome == e2?.nome;
  }

  @override
  int hash(UBSMascarenhasdeMoraesRecord? e) =>
      const ListEquality().hash([e?.local, e?.nome]);

  @override
  bool isValidKey(Object? o) => o is UBSMascarenhasdeMoraesRecord;
}
