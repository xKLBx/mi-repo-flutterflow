import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UBSDrJoseToledoPizaRecord extends FirestoreRecord {
  UBSDrJoseToledoPizaRecord._(
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
      FirebaseFirestore.instance.collection('UBSDrJoseToledoPiza');

  static Stream<UBSDrJoseToledoPizaRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => UBSDrJoseToledoPizaRecord.fromSnapshot(s));

  static Future<UBSDrJoseToledoPizaRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => UBSDrJoseToledoPizaRecord.fromSnapshot(s));

  static UBSDrJoseToledoPizaRecord fromSnapshot(DocumentSnapshot snapshot) =>
      UBSDrJoseToledoPizaRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static UBSDrJoseToledoPizaRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      UBSDrJoseToledoPizaRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'UBSDrJoseToledoPizaRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is UBSDrJoseToledoPizaRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createUBSDrJoseToledoPizaRecordData({
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

class UBSDrJoseToledoPizaRecordDocumentEquality
    implements Equality<UBSDrJoseToledoPizaRecord> {
  const UBSDrJoseToledoPizaRecordDocumentEquality();

  @override
  bool equals(UBSDrJoseToledoPizaRecord? e1, UBSDrJoseToledoPizaRecord? e2) {
    return e1?.local == e2?.local && e1?.nome == e2?.nome;
  }

  @override
  int hash(UBSDrJoseToledoPizaRecord? e) =>
      const ListEquality().hash([e?.local, e?.nome]);

  @override
  bool isValidKey(Object? o) => o is UBSDrJoseToledoPizaRecord;
}
