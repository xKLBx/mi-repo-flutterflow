import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UBSVilaSantanaRecord extends FirestoreRecord {
  UBSVilaSantanaRecord._(
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
      FirebaseFirestore.instance.collection('UBSVilaSantana');

  static Stream<UBSVilaSantanaRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => UBSVilaSantanaRecord.fromSnapshot(s));

  static Future<UBSVilaSantanaRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => UBSVilaSantanaRecord.fromSnapshot(s));

  static UBSVilaSantanaRecord fromSnapshot(DocumentSnapshot snapshot) =>
      UBSVilaSantanaRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static UBSVilaSantanaRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      UBSVilaSantanaRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'UBSVilaSantanaRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is UBSVilaSantanaRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createUBSVilaSantanaRecordData({
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

class UBSVilaSantanaRecordDocumentEquality
    implements Equality<UBSVilaSantanaRecord> {
  const UBSVilaSantanaRecordDocumentEquality();

  @override
  bool equals(UBSVilaSantanaRecord? e1, UBSVilaSantanaRecord? e2) {
    return e1?.local == e2?.local && e1?.nome == e2?.nome;
  }

  @override
  int hash(UBSVilaSantanaRecord? e) =>
      const ListEquality().hash([e?.local, e?.nome]);

  @override
  bool isValidKey(Object? o) => o is UBSVilaSantanaRecord;
}
