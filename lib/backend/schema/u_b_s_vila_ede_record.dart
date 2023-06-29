import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UBSVilaEdeRecord extends FirestoreRecord {
  UBSVilaEdeRecord._(
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
      FirebaseFirestore.instance.collection('UBSVilaEde');

  static Stream<UBSVilaEdeRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => UBSVilaEdeRecord.fromSnapshot(s));

  static Future<UBSVilaEdeRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => UBSVilaEdeRecord.fromSnapshot(s));

  static UBSVilaEdeRecord fromSnapshot(DocumentSnapshot snapshot) =>
      UBSVilaEdeRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static UBSVilaEdeRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      UBSVilaEdeRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'UBSVilaEdeRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is UBSVilaEdeRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createUBSVilaEdeRecordData({
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

class UBSVilaEdeRecordDocumentEquality implements Equality<UBSVilaEdeRecord> {
  const UBSVilaEdeRecordDocumentEquality();

  @override
  bool equals(UBSVilaEdeRecord? e1, UBSVilaEdeRecord? e2) {
    return e1?.local == e2?.local && e1?.nome == e2?.nome;
  }

  @override
  int hash(UBSVilaEdeRecord? e) =>
      const ListEquality().hash([e?.local, e?.nome]);

  @override
  bool isValidKey(Object? o) => o is UBSVilaEdeRecord;
}
