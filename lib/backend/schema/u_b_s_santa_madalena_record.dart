import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UBSSantaMadalenaRecord extends FirestoreRecord {
  UBSSantaMadalenaRecord._(
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
      FirebaseFirestore.instance.collection('UBSSantaMadalena');

  static Stream<UBSSantaMadalenaRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => UBSSantaMadalenaRecord.fromSnapshot(s));

  static Future<UBSSantaMadalenaRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => UBSSantaMadalenaRecord.fromSnapshot(s));

  static UBSSantaMadalenaRecord fromSnapshot(DocumentSnapshot snapshot) =>
      UBSSantaMadalenaRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static UBSSantaMadalenaRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      UBSSantaMadalenaRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'UBSSantaMadalenaRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is UBSSantaMadalenaRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createUBSSantaMadalenaRecordData({
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

class UBSSantaMadalenaRecordDocumentEquality
    implements Equality<UBSSantaMadalenaRecord> {
  const UBSSantaMadalenaRecordDocumentEquality();

  @override
  bool equals(UBSSantaMadalenaRecord? e1, UBSSantaMadalenaRecord? e2) {
    return e1?.local == e2?.local && e1?.nome == e2?.nome;
  }

  @override
  int hash(UBSSantaMadalenaRecord? e) =>
      const ListEquality().hash([e?.local, e?.nome]);

  @override
  bool isValidKey(Object? o) => o is UBSSantaMadalenaRecord;
}
