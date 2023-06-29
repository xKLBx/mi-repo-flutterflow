import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UBSCidadeKemelRecord extends FirestoreRecord {
  UBSCidadeKemelRecord._(
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
      FirebaseFirestore.instance.collection('UBSCidadeKemel');

  static Stream<UBSCidadeKemelRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => UBSCidadeKemelRecord.fromSnapshot(s));

  static Future<UBSCidadeKemelRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => UBSCidadeKemelRecord.fromSnapshot(s));

  static UBSCidadeKemelRecord fromSnapshot(DocumentSnapshot snapshot) =>
      UBSCidadeKemelRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static UBSCidadeKemelRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      UBSCidadeKemelRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'UBSCidadeKemelRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is UBSCidadeKemelRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createUBSCidadeKemelRecordData({
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

class UBSCidadeKemelRecordDocumentEquality
    implements Equality<UBSCidadeKemelRecord> {
  const UBSCidadeKemelRecordDocumentEquality();

  @override
  bool equals(UBSCidadeKemelRecord? e1, UBSCidadeKemelRecord? e2) {
    return e1?.local == e2?.local && e1?.nome == e2?.nome;
  }

  @override
  int hash(UBSCidadeKemelRecord? e) =>
      const ListEquality().hash([e?.local, e?.nome]);

  @override
  bool isValidKey(Object? o) => o is UBSCidadeKemelRecord;
}
