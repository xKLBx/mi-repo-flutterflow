import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UBSJardimCopaRecord extends FirestoreRecord {
  UBSJardimCopaRecord._(
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
      FirebaseFirestore.instance.collection('UBSJardimCopa');

  static Stream<UBSJardimCopaRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => UBSJardimCopaRecord.fromSnapshot(s));

  static Future<UBSJardimCopaRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => UBSJardimCopaRecord.fromSnapshot(s));

  static UBSJardimCopaRecord fromSnapshot(DocumentSnapshot snapshot) =>
      UBSJardimCopaRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static UBSJardimCopaRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      UBSJardimCopaRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'UBSJardimCopaRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is UBSJardimCopaRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createUBSJardimCopaRecordData({
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

class UBSJardimCopaRecordDocumentEquality
    implements Equality<UBSJardimCopaRecord> {
  const UBSJardimCopaRecordDocumentEquality();

  @override
  bool equals(UBSJardimCopaRecord? e1, UBSJardimCopaRecord? e2) {
    return e1?.local == e2?.local && e1?.nome == e2?.nome;
  }

  @override
  int hash(UBSJardimCopaRecord? e) =>
      const ListEquality().hash([e?.local, e?.nome]);

  @override
  bool isValidKey(Object? o) => o is UBSJardimCopaRecord;
}
