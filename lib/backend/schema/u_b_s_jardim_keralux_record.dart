import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UBSJardimKeraluxRecord extends FirestoreRecord {
  UBSJardimKeraluxRecord._(
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
      FirebaseFirestore.instance.collection('UBSJardimKeralux');

  static Stream<UBSJardimKeraluxRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => UBSJardimKeraluxRecord.fromSnapshot(s));

  static Future<UBSJardimKeraluxRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => UBSJardimKeraluxRecord.fromSnapshot(s));

  static UBSJardimKeraluxRecord fromSnapshot(DocumentSnapshot snapshot) =>
      UBSJardimKeraluxRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static UBSJardimKeraluxRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      UBSJardimKeraluxRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'UBSJardimKeraluxRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is UBSJardimKeraluxRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createUBSJardimKeraluxRecordData({
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

class UBSJardimKeraluxRecordDocumentEquality
    implements Equality<UBSJardimKeraluxRecord> {
  const UBSJardimKeraluxRecordDocumentEquality();

  @override
  bool equals(UBSJardimKeraluxRecord? e1, UBSJardimKeraluxRecord? e2) {
    return e1?.local == e2?.local && e1?.nome == e2?.nome;
  }

  @override
  int hash(UBSJardimKeraluxRecord? e) =>
      const ListEquality().hash([e?.local, e?.nome]);

  @override
  bool isValidKey(Object? o) => o is UBSJardimKeraluxRecord;
}
