import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UBSJardimHelianRecord extends FirestoreRecord {
  UBSJardimHelianRecord._(
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
      FirebaseFirestore.instance.collection('UBSJardimHelian');

  static Stream<UBSJardimHelianRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => UBSJardimHelianRecord.fromSnapshot(s));

  static Future<UBSJardimHelianRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => UBSJardimHelianRecord.fromSnapshot(s));

  static UBSJardimHelianRecord fromSnapshot(DocumentSnapshot snapshot) =>
      UBSJardimHelianRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static UBSJardimHelianRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      UBSJardimHelianRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'UBSJardimHelianRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is UBSJardimHelianRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createUBSJardimHelianRecordData({
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

class UBSJardimHelianRecordDocumentEquality
    implements Equality<UBSJardimHelianRecord> {
  const UBSJardimHelianRecordDocumentEquality();

  @override
  bool equals(UBSJardimHelianRecord? e1, UBSJardimHelianRecord? e2) {
    return e1?.local == e2?.local && e1?.nome == e2?.nome;
  }

  @override
  int hash(UBSJardimHelianRecord? e) =>
      const ListEquality().hash([e?.local, e?.nome]);

  @override
  bool isValidKey(Object? o) => o is UBSJardimHelianRecord;
}
