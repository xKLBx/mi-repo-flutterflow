import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UBSJardimIvaRecord extends FirestoreRecord {
  UBSJardimIvaRecord._(
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
      FirebaseFirestore.instance.collection('UBSJardimIva');

  static Stream<UBSJardimIvaRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => UBSJardimIvaRecord.fromSnapshot(s));

  static Future<UBSJardimIvaRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => UBSJardimIvaRecord.fromSnapshot(s));

  static UBSJardimIvaRecord fromSnapshot(DocumentSnapshot snapshot) =>
      UBSJardimIvaRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static UBSJardimIvaRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      UBSJardimIvaRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'UBSJardimIvaRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is UBSJardimIvaRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createUBSJardimIvaRecordData({
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

class UBSJardimIvaRecordDocumentEquality
    implements Equality<UBSJardimIvaRecord> {
  const UBSJardimIvaRecordDocumentEquality();

  @override
  bool equals(UBSJardimIvaRecord? e1, UBSJardimIvaRecord? e2) {
    return e1?.local == e2?.local && e1?.nome == e2?.nome;
  }

  @override
  int hash(UBSJardimIvaRecord? e) =>
      const ListEquality().hash([e?.local, e?.nome]);

  @override
  bool isValidKey(Object? o) => o is UBSJardimIvaRecord;
}
