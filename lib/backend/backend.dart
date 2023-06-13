import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import '../auth/firebase_auth/auth_util.dart';

import '../flutter_flow/flutter_flow_util.dart';
import 'schema/util/firestore_util.dart';

import 'schema/user_record.dart';
import 'schema/hospital_campolimpo_record.dart';
import 'schema/a_m_a_e_capo_redondo_record.dart';
import 'schema/u_p_a_vergueiro_record.dart';
import 'schema/u_b_s_cidade_kemel_record.dart';
import 'schema/u_b_s_vila_cisper_record.dart';
import 'schema/u_b_s_boracea_record.dart';
import 'schema/u_b_s_jardim_eledy_record.dart';
import 'schema/u_b_s_jardim_helian_record.dart';
import 'schema/u_b_s_santa_madalena_record.dart';
import 'schema/u_b_s_jardim_silva_teles_record.dart';
import 'schema/u_b_s_jardim_copa_record.dart';
import 'schema/u_b_s_jardim_iva_record.dart';
import 'schema/u_b_s_jardim_keralux_record.dart';
import 'schema/u_b_s_guainases_record.dart';
import 'schema/u_b_s_mascarenhasde_moraes_record.dart';
import 'schema/u_b_s_jardim_lapenna_record.dart';
import 'schema/u_b_s_uniaode_vila_nova_record.dart';
import 'schema/u_b_s_vila_santana_record.dart';
import 'schema/u_b_s_vila_nova_curua_record.dart';
import 'schema/u_b_s_teotonio_vilela_record.dart';
import 'schema/u_b_s_jardim_soares_record.dart';
import 'schema/u_b_s_brasilandia_record.dart';
import 'schema/u_b_s_vila_ede_record.dart';
import 'schema/u_b_s_jardim_apuana_record.dart';
import 'schema/u_b_s_interativa_record.dart';
import 'schema/u_b_s_jardim_japao_record.dart';
import 'schema/u_b_s_dr_jose_toledo_piza_record.dart';

export 'dart:async' show StreamSubscription;
export 'package:cloud_firestore/cloud_firestore.dart';
export 'schema/index.dart';
export 'schema/util/firestore_util.dart';
export 'schema/util/schema_util.dart';

export 'schema/user_record.dart';
export 'schema/hospital_campolimpo_record.dart';
export 'schema/a_m_a_e_capo_redondo_record.dart';
export 'schema/u_p_a_vergueiro_record.dart';
export 'schema/u_b_s_cidade_kemel_record.dart';
export 'schema/u_b_s_vila_cisper_record.dart';
export 'schema/u_b_s_boracea_record.dart';
export 'schema/u_b_s_jardim_eledy_record.dart';
export 'schema/u_b_s_jardim_helian_record.dart';
export 'schema/u_b_s_santa_madalena_record.dart';
export 'schema/u_b_s_jardim_silva_teles_record.dart';
export 'schema/u_b_s_jardim_copa_record.dart';
export 'schema/u_b_s_jardim_iva_record.dart';
export 'schema/u_b_s_jardim_keralux_record.dart';
export 'schema/u_b_s_guainases_record.dart';
export 'schema/u_b_s_mascarenhasde_moraes_record.dart';
export 'schema/u_b_s_jardim_lapenna_record.dart';
export 'schema/u_b_s_uniaode_vila_nova_record.dart';
export 'schema/u_b_s_vila_santana_record.dart';
export 'schema/u_b_s_vila_nova_curua_record.dart';
export 'schema/u_b_s_teotonio_vilela_record.dart';
export 'schema/u_b_s_jardim_soares_record.dart';
export 'schema/u_b_s_brasilandia_record.dart';
export 'schema/u_b_s_vila_ede_record.dart';
export 'schema/u_b_s_jardim_apuana_record.dart';
export 'schema/u_b_s_interativa_record.dart';
export 'schema/u_b_s_jardim_japao_record.dart';
export 'schema/u_b_s_dr_jose_toledo_piza_record.dart';

/// Functions to query UserRecords (as a Stream and as a Future).
Future<int> queryUserRecordCount({
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      UserRecord.collection,
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<UserRecord>> queryUserRecord({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      UserRecord.collection,
      UserRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<UserRecord>> queryUserRecordOnce({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      UserRecord.collection,
      UserRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<FFFirestorePage<UserRecord>> queryUserRecordPage({
  Query Function(Query)? queryBuilder,
  DocumentSnapshot? nextPageMarker,
  required int pageSize,
  required bool isStream,
}) =>
    queryCollectionPage(
      UserRecord.collection,
      UserRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      nextPageMarker: nextPageMarker,
      pageSize: pageSize,
      isStream: isStream,
    );

/// Functions to query HospitalCampolimpoRecords (as a Stream and as a Future).
Future<int> queryHospitalCampolimpoRecordCount({
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      HospitalCampolimpoRecord.collection,
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<HospitalCampolimpoRecord>> queryHospitalCampolimpoRecord({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      HospitalCampolimpoRecord.collection,
      HospitalCampolimpoRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<HospitalCampolimpoRecord>> queryHospitalCampolimpoRecordOnce({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      HospitalCampolimpoRecord.collection,
      HospitalCampolimpoRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<FFFirestorePage<HospitalCampolimpoRecord>>
    queryHospitalCampolimpoRecordPage({
  Query Function(Query)? queryBuilder,
  DocumentSnapshot? nextPageMarker,
  required int pageSize,
  required bool isStream,
}) =>
        queryCollectionPage(
          HospitalCampolimpoRecord.collection,
          HospitalCampolimpoRecord.fromSnapshot,
          queryBuilder: queryBuilder,
          nextPageMarker: nextPageMarker,
          pageSize: pageSize,
          isStream: isStream,
        );

/// Functions to query AMAECapoRedondoRecords (as a Stream and as a Future).
Future<int> queryAMAECapoRedondoRecordCount({
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      AMAECapoRedondoRecord.collection,
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<AMAECapoRedondoRecord>> queryAMAECapoRedondoRecord({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      AMAECapoRedondoRecord.collection,
      AMAECapoRedondoRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<AMAECapoRedondoRecord>> queryAMAECapoRedondoRecordOnce({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      AMAECapoRedondoRecord.collection,
      AMAECapoRedondoRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<FFFirestorePage<AMAECapoRedondoRecord>> queryAMAECapoRedondoRecordPage({
  Query Function(Query)? queryBuilder,
  DocumentSnapshot? nextPageMarker,
  required int pageSize,
  required bool isStream,
}) =>
    queryCollectionPage(
      AMAECapoRedondoRecord.collection,
      AMAECapoRedondoRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      nextPageMarker: nextPageMarker,
      pageSize: pageSize,
      isStream: isStream,
    );

/// Functions to query UPAVergueiroRecords (as a Stream and as a Future).
Future<int> queryUPAVergueiroRecordCount({
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      UPAVergueiroRecord.collection,
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<UPAVergueiroRecord>> queryUPAVergueiroRecord({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      UPAVergueiroRecord.collection,
      UPAVergueiroRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<UPAVergueiroRecord>> queryUPAVergueiroRecordOnce({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      UPAVergueiroRecord.collection,
      UPAVergueiroRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<FFFirestorePage<UPAVergueiroRecord>> queryUPAVergueiroRecordPage({
  Query Function(Query)? queryBuilder,
  DocumentSnapshot? nextPageMarker,
  required int pageSize,
  required bool isStream,
}) =>
    queryCollectionPage(
      UPAVergueiroRecord.collection,
      UPAVergueiroRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      nextPageMarker: nextPageMarker,
      pageSize: pageSize,
      isStream: isStream,
    );

/// Functions to query UBSCidadeKemelRecords (as a Stream and as a Future).
Future<int> queryUBSCidadeKemelRecordCount({
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      UBSCidadeKemelRecord.collection,
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<UBSCidadeKemelRecord>> queryUBSCidadeKemelRecord({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      UBSCidadeKemelRecord.collection,
      UBSCidadeKemelRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<UBSCidadeKemelRecord>> queryUBSCidadeKemelRecordOnce({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      UBSCidadeKemelRecord.collection,
      UBSCidadeKemelRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<FFFirestorePage<UBSCidadeKemelRecord>> queryUBSCidadeKemelRecordPage({
  Query Function(Query)? queryBuilder,
  DocumentSnapshot? nextPageMarker,
  required int pageSize,
  required bool isStream,
}) =>
    queryCollectionPage(
      UBSCidadeKemelRecord.collection,
      UBSCidadeKemelRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      nextPageMarker: nextPageMarker,
      pageSize: pageSize,
      isStream: isStream,
    );

/// Functions to query UBSVilaCisperRecords (as a Stream and as a Future).
Future<int> queryUBSVilaCisperRecordCount({
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      UBSVilaCisperRecord.collection,
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<UBSVilaCisperRecord>> queryUBSVilaCisperRecord({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      UBSVilaCisperRecord.collection,
      UBSVilaCisperRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<UBSVilaCisperRecord>> queryUBSVilaCisperRecordOnce({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      UBSVilaCisperRecord.collection,
      UBSVilaCisperRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<FFFirestorePage<UBSVilaCisperRecord>> queryUBSVilaCisperRecordPage({
  Query Function(Query)? queryBuilder,
  DocumentSnapshot? nextPageMarker,
  required int pageSize,
  required bool isStream,
}) =>
    queryCollectionPage(
      UBSVilaCisperRecord.collection,
      UBSVilaCisperRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      nextPageMarker: nextPageMarker,
      pageSize: pageSize,
      isStream: isStream,
    );

/// Functions to query UBSBoraceaRecords (as a Stream and as a Future).
Future<int> queryUBSBoraceaRecordCount({
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      UBSBoraceaRecord.collection,
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<UBSBoraceaRecord>> queryUBSBoraceaRecord({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      UBSBoraceaRecord.collection,
      UBSBoraceaRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<UBSBoraceaRecord>> queryUBSBoraceaRecordOnce({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      UBSBoraceaRecord.collection,
      UBSBoraceaRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<FFFirestorePage<UBSBoraceaRecord>> queryUBSBoraceaRecordPage({
  Query Function(Query)? queryBuilder,
  DocumentSnapshot? nextPageMarker,
  required int pageSize,
  required bool isStream,
}) =>
    queryCollectionPage(
      UBSBoraceaRecord.collection,
      UBSBoraceaRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      nextPageMarker: nextPageMarker,
      pageSize: pageSize,
      isStream: isStream,
    );

/// Functions to query UBSJardimEledyRecords (as a Stream and as a Future).
Future<int> queryUBSJardimEledyRecordCount({
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      UBSJardimEledyRecord.collection,
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<UBSJardimEledyRecord>> queryUBSJardimEledyRecord({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      UBSJardimEledyRecord.collection,
      UBSJardimEledyRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<UBSJardimEledyRecord>> queryUBSJardimEledyRecordOnce({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      UBSJardimEledyRecord.collection,
      UBSJardimEledyRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<FFFirestorePage<UBSJardimEledyRecord>> queryUBSJardimEledyRecordPage({
  Query Function(Query)? queryBuilder,
  DocumentSnapshot? nextPageMarker,
  required int pageSize,
  required bool isStream,
}) =>
    queryCollectionPage(
      UBSJardimEledyRecord.collection,
      UBSJardimEledyRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      nextPageMarker: nextPageMarker,
      pageSize: pageSize,
      isStream: isStream,
    );

/// Functions to query UBSJardimHelianRecords (as a Stream and as a Future).
Future<int> queryUBSJardimHelianRecordCount({
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      UBSJardimHelianRecord.collection,
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<UBSJardimHelianRecord>> queryUBSJardimHelianRecord({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      UBSJardimHelianRecord.collection,
      UBSJardimHelianRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<UBSJardimHelianRecord>> queryUBSJardimHelianRecordOnce({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      UBSJardimHelianRecord.collection,
      UBSJardimHelianRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<FFFirestorePage<UBSJardimHelianRecord>> queryUBSJardimHelianRecordPage({
  Query Function(Query)? queryBuilder,
  DocumentSnapshot? nextPageMarker,
  required int pageSize,
  required bool isStream,
}) =>
    queryCollectionPage(
      UBSJardimHelianRecord.collection,
      UBSJardimHelianRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      nextPageMarker: nextPageMarker,
      pageSize: pageSize,
      isStream: isStream,
    );

/// Functions to query UBSSantaMadalenaRecords (as a Stream and as a Future).
Future<int> queryUBSSantaMadalenaRecordCount({
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      UBSSantaMadalenaRecord.collection,
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<UBSSantaMadalenaRecord>> queryUBSSantaMadalenaRecord({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      UBSSantaMadalenaRecord.collection,
      UBSSantaMadalenaRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<UBSSantaMadalenaRecord>> queryUBSSantaMadalenaRecordOnce({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      UBSSantaMadalenaRecord.collection,
      UBSSantaMadalenaRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<FFFirestorePage<UBSSantaMadalenaRecord>>
    queryUBSSantaMadalenaRecordPage({
  Query Function(Query)? queryBuilder,
  DocumentSnapshot? nextPageMarker,
  required int pageSize,
  required bool isStream,
}) =>
        queryCollectionPage(
          UBSSantaMadalenaRecord.collection,
          UBSSantaMadalenaRecord.fromSnapshot,
          queryBuilder: queryBuilder,
          nextPageMarker: nextPageMarker,
          pageSize: pageSize,
          isStream: isStream,
        );

/// Functions to query UBSJardimSilvaTelesRecords (as a Stream and as a Future).
Future<int> queryUBSJardimSilvaTelesRecordCount({
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      UBSJardimSilvaTelesRecord.collection,
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<UBSJardimSilvaTelesRecord>> queryUBSJardimSilvaTelesRecord({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      UBSJardimSilvaTelesRecord.collection,
      UBSJardimSilvaTelesRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<UBSJardimSilvaTelesRecord>> queryUBSJardimSilvaTelesRecordOnce({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      UBSJardimSilvaTelesRecord.collection,
      UBSJardimSilvaTelesRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<FFFirestorePage<UBSJardimSilvaTelesRecord>>
    queryUBSJardimSilvaTelesRecordPage({
  Query Function(Query)? queryBuilder,
  DocumentSnapshot? nextPageMarker,
  required int pageSize,
  required bool isStream,
}) =>
        queryCollectionPage(
          UBSJardimSilvaTelesRecord.collection,
          UBSJardimSilvaTelesRecord.fromSnapshot,
          queryBuilder: queryBuilder,
          nextPageMarker: nextPageMarker,
          pageSize: pageSize,
          isStream: isStream,
        );

/// Functions to query UBSJardimCopaRecords (as a Stream and as a Future).
Future<int> queryUBSJardimCopaRecordCount({
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      UBSJardimCopaRecord.collection,
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<UBSJardimCopaRecord>> queryUBSJardimCopaRecord({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      UBSJardimCopaRecord.collection,
      UBSJardimCopaRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<UBSJardimCopaRecord>> queryUBSJardimCopaRecordOnce({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      UBSJardimCopaRecord.collection,
      UBSJardimCopaRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<FFFirestorePage<UBSJardimCopaRecord>> queryUBSJardimCopaRecordPage({
  Query Function(Query)? queryBuilder,
  DocumentSnapshot? nextPageMarker,
  required int pageSize,
  required bool isStream,
}) =>
    queryCollectionPage(
      UBSJardimCopaRecord.collection,
      UBSJardimCopaRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      nextPageMarker: nextPageMarker,
      pageSize: pageSize,
      isStream: isStream,
    );

/// Functions to query UBSJardimIvaRecords (as a Stream and as a Future).
Future<int> queryUBSJardimIvaRecordCount({
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      UBSJardimIvaRecord.collection,
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<UBSJardimIvaRecord>> queryUBSJardimIvaRecord({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      UBSJardimIvaRecord.collection,
      UBSJardimIvaRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<UBSJardimIvaRecord>> queryUBSJardimIvaRecordOnce({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      UBSJardimIvaRecord.collection,
      UBSJardimIvaRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<FFFirestorePage<UBSJardimIvaRecord>> queryUBSJardimIvaRecordPage({
  Query Function(Query)? queryBuilder,
  DocumentSnapshot? nextPageMarker,
  required int pageSize,
  required bool isStream,
}) =>
    queryCollectionPage(
      UBSJardimIvaRecord.collection,
      UBSJardimIvaRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      nextPageMarker: nextPageMarker,
      pageSize: pageSize,
      isStream: isStream,
    );

/// Functions to query UBSJardimKeraluxRecords (as a Stream and as a Future).
Future<int> queryUBSJardimKeraluxRecordCount({
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      UBSJardimKeraluxRecord.collection,
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<UBSJardimKeraluxRecord>> queryUBSJardimKeraluxRecord({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      UBSJardimKeraluxRecord.collection,
      UBSJardimKeraluxRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<UBSJardimKeraluxRecord>> queryUBSJardimKeraluxRecordOnce({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      UBSJardimKeraluxRecord.collection,
      UBSJardimKeraluxRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<FFFirestorePage<UBSJardimKeraluxRecord>>
    queryUBSJardimKeraluxRecordPage({
  Query Function(Query)? queryBuilder,
  DocumentSnapshot? nextPageMarker,
  required int pageSize,
  required bool isStream,
}) =>
        queryCollectionPage(
          UBSJardimKeraluxRecord.collection,
          UBSJardimKeraluxRecord.fromSnapshot,
          queryBuilder: queryBuilder,
          nextPageMarker: nextPageMarker,
          pageSize: pageSize,
          isStream: isStream,
        );

/// Functions to query UBSGuainasesRecords (as a Stream and as a Future).
Future<int> queryUBSGuainasesRecordCount({
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      UBSGuainasesRecord.collection,
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<UBSGuainasesRecord>> queryUBSGuainasesRecord({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      UBSGuainasesRecord.collection,
      UBSGuainasesRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<UBSGuainasesRecord>> queryUBSGuainasesRecordOnce({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      UBSGuainasesRecord.collection,
      UBSGuainasesRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<FFFirestorePage<UBSGuainasesRecord>> queryUBSGuainasesRecordPage({
  Query Function(Query)? queryBuilder,
  DocumentSnapshot? nextPageMarker,
  required int pageSize,
  required bool isStream,
}) =>
    queryCollectionPage(
      UBSGuainasesRecord.collection,
      UBSGuainasesRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      nextPageMarker: nextPageMarker,
      pageSize: pageSize,
      isStream: isStream,
    );

/// Functions to query UBSMascarenhasdeMoraesRecords (as a Stream and as a Future).
Future<int> queryUBSMascarenhasdeMoraesRecordCount({
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      UBSMascarenhasdeMoraesRecord.collection,
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<UBSMascarenhasdeMoraesRecord>> queryUBSMascarenhasdeMoraesRecord({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      UBSMascarenhasdeMoraesRecord.collection,
      UBSMascarenhasdeMoraesRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<UBSMascarenhasdeMoraesRecord>>
    queryUBSMascarenhasdeMoraesRecordOnce({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
        queryCollectionOnce(
          UBSMascarenhasdeMoraesRecord.collection,
          UBSMascarenhasdeMoraesRecord.fromSnapshot,
          queryBuilder: queryBuilder,
          limit: limit,
          singleRecord: singleRecord,
        );

Future<FFFirestorePage<UBSMascarenhasdeMoraesRecord>>
    queryUBSMascarenhasdeMoraesRecordPage({
  Query Function(Query)? queryBuilder,
  DocumentSnapshot? nextPageMarker,
  required int pageSize,
  required bool isStream,
}) =>
        queryCollectionPage(
          UBSMascarenhasdeMoraesRecord.collection,
          UBSMascarenhasdeMoraesRecord.fromSnapshot,
          queryBuilder: queryBuilder,
          nextPageMarker: nextPageMarker,
          pageSize: pageSize,
          isStream: isStream,
        );

/// Functions to query UBSJardimLapennaRecords (as a Stream and as a Future).
Future<int> queryUBSJardimLapennaRecordCount({
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      UBSJardimLapennaRecord.collection,
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<UBSJardimLapennaRecord>> queryUBSJardimLapennaRecord({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      UBSJardimLapennaRecord.collection,
      UBSJardimLapennaRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<UBSJardimLapennaRecord>> queryUBSJardimLapennaRecordOnce({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      UBSJardimLapennaRecord.collection,
      UBSJardimLapennaRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<FFFirestorePage<UBSJardimLapennaRecord>>
    queryUBSJardimLapennaRecordPage({
  Query Function(Query)? queryBuilder,
  DocumentSnapshot? nextPageMarker,
  required int pageSize,
  required bool isStream,
}) =>
        queryCollectionPage(
          UBSJardimLapennaRecord.collection,
          UBSJardimLapennaRecord.fromSnapshot,
          queryBuilder: queryBuilder,
          nextPageMarker: nextPageMarker,
          pageSize: pageSize,
          isStream: isStream,
        );

/// Functions to query UBSUniaodeVilaNovaRecords (as a Stream and as a Future).
Future<int> queryUBSUniaodeVilaNovaRecordCount({
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      UBSUniaodeVilaNovaRecord.collection,
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<UBSUniaodeVilaNovaRecord>> queryUBSUniaodeVilaNovaRecord({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      UBSUniaodeVilaNovaRecord.collection,
      UBSUniaodeVilaNovaRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<UBSUniaodeVilaNovaRecord>> queryUBSUniaodeVilaNovaRecordOnce({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      UBSUniaodeVilaNovaRecord.collection,
      UBSUniaodeVilaNovaRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<FFFirestorePage<UBSUniaodeVilaNovaRecord>>
    queryUBSUniaodeVilaNovaRecordPage({
  Query Function(Query)? queryBuilder,
  DocumentSnapshot? nextPageMarker,
  required int pageSize,
  required bool isStream,
}) =>
        queryCollectionPage(
          UBSUniaodeVilaNovaRecord.collection,
          UBSUniaodeVilaNovaRecord.fromSnapshot,
          queryBuilder: queryBuilder,
          nextPageMarker: nextPageMarker,
          pageSize: pageSize,
          isStream: isStream,
        );

/// Functions to query UBSVilaSantanaRecords (as a Stream and as a Future).
Future<int> queryUBSVilaSantanaRecordCount({
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      UBSVilaSantanaRecord.collection,
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<UBSVilaSantanaRecord>> queryUBSVilaSantanaRecord({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      UBSVilaSantanaRecord.collection,
      UBSVilaSantanaRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<UBSVilaSantanaRecord>> queryUBSVilaSantanaRecordOnce({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      UBSVilaSantanaRecord.collection,
      UBSVilaSantanaRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<FFFirestorePage<UBSVilaSantanaRecord>> queryUBSVilaSantanaRecordPage({
  Query Function(Query)? queryBuilder,
  DocumentSnapshot? nextPageMarker,
  required int pageSize,
  required bool isStream,
}) =>
    queryCollectionPage(
      UBSVilaSantanaRecord.collection,
      UBSVilaSantanaRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      nextPageMarker: nextPageMarker,
      pageSize: pageSize,
      isStream: isStream,
    );

/// Functions to query UBSVilaNovaCuruaRecords (as a Stream and as a Future).
Future<int> queryUBSVilaNovaCuruaRecordCount({
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      UBSVilaNovaCuruaRecord.collection,
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<UBSVilaNovaCuruaRecord>> queryUBSVilaNovaCuruaRecord({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      UBSVilaNovaCuruaRecord.collection,
      UBSVilaNovaCuruaRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<UBSVilaNovaCuruaRecord>> queryUBSVilaNovaCuruaRecordOnce({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      UBSVilaNovaCuruaRecord.collection,
      UBSVilaNovaCuruaRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<FFFirestorePage<UBSVilaNovaCuruaRecord>>
    queryUBSVilaNovaCuruaRecordPage({
  Query Function(Query)? queryBuilder,
  DocumentSnapshot? nextPageMarker,
  required int pageSize,
  required bool isStream,
}) =>
        queryCollectionPage(
          UBSVilaNovaCuruaRecord.collection,
          UBSVilaNovaCuruaRecord.fromSnapshot,
          queryBuilder: queryBuilder,
          nextPageMarker: nextPageMarker,
          pageSize: pageSize,
          isStream: isStream,
        );

/// Functions to query UBSTeotonioVilelaRecords (as a Stream and as a Future).
Future<int> queryUBSTeotonioVilelaRecordCount({
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      UBSTeotonioVilelaRecord.collection,
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<UBSTeotonioVilelaRecord>> queryUBSTeotonioVilelaRecord({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      UBSTeotonioVilelaRecord.collection,
      UBSTeotonioVilelaRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<UBSTeotonioVilelaRecord>> queryUBSTeotonioVilelaRecordOnce({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      UBSTeotonioVilelaRecord.collection,
      UBSTeotonioVilelaRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<FFFirestorePage<UBSTeotonioVilelaRecord>>
    queryUBSTeotonioVilelaRecordPage({
  Query Function(Query)? queryBuilder,
  DocumentSnapshot? nextPageMarker,
  required int pageSize,
  required bool isStream,
}) =>
        queryCollectionPage(
          UBSTeotonioVilelaRecord.collection,
          UBSTeotonioVilelaRecord.fromSnapshot,
          queryBuilder: queryBuilder,
          nextPageMarker: nextPageMarker,
          pageSize: pageSize,
          isStream: isStream,
        );

/// Functions to query UBSJardimSoaresRecords (as a Stream and as a Future).
Future<int> queryUBSJardimSoaresRecordCount({
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      UBSJardimSoaresRecord.collection,
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<UBSJardimSoaresRecord>> queryUBSJardimSoaresRecord({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      UBSJardimSoaresRecord.collection,
      UBSJardimSoaresRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<UBSJardimSoaresRecord>> queryUBSJardimSoaresRecordOnce({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      UBSJardimSoaresRecord.collection,
      UBSJardimSoaresRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<FFFirestorePage<UBSJardimSoaresRecord>> queryUBSJardimSoaresRecordPage({
  Query Function(Query)? queryBuilder,
  DocumentSnapshot? nextPageMarker,
  required int pageSize,
  required bool isStream,
}) =>
    queryCollectionPage(
      UBSJardimSoaresRecord.collection,
      UBSJardimSoaresRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      nextPageMarker: nextPageMarker,
      pageSize: pageSize,
      isStream: isStream,
    );

/// Functions to query UBSBrasilandiaRecords (as a Stream and as a Future).
Future<int> queryUBSBrasilandiaRecordCount({
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      UBSBrasilandiaRecord.collection,
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<UBSBrasilandiaRecord>> queryUBSBrasilandiaRecord({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      UBSBrasilandiaRecord.collection,
      UBSBrasilandiaRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<UBSBrasilandiaRecord>> queryUBSBrasilandiaRecordOnce({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      UBSBrasilandiaRecord.collection,
      UBSBrasilandiaRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<FFFirestorePage<UBSBrasilandiaRecord>> queryUBSBrasilandiaRecordPage({
  Query Function(Query)? queryBuilder,
  DocumentSnapshot? nextPageMarker,
  required int pageSize,
  required bool isStream,
}) =>
    queryCollectionPage(
      UBSBrasilandiaRecord.collection,
      UBSBrasilandiaRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      nextPageMarker: nextPageMarker,
      pageSize: pageSize,
      isStream: isStream,
    );

/// Functions to query UBSVilaEdeRecords (as a Stream and as a Future).
Future<int> queryUBSVilaEdeRecordCount({
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      UBSVilaEdeRecord.collection,
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<UBSVilaEdeRecord>> queryUBSVilaEdeRecord({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      UBSVilaEdeRecord.collection,
      UBSVilaEdeRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<UBSVilaEdeRecord>> queryUBSVilaEdeRecordOnce({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      UBSVilaEdeRecord.collection,
      UBSVilaEdeRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<FFFirestorePage<UBSVilaEdeRecord>> queryUBSVilaEdeRecordPage({
  Query Function(Query)? queryBuilder,
  DocumentSnapshot? nextPageMarker,
  required int pageSize,
  required bool isStream,
}) =>
    queryCollectionPage(
      UBSVilaEdeRecord.collection,
      UBSVilaEdeRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      nextPageMarker: nextPageMarker,
      pageSize: pageSize,
      isStream: isStream,
    );

/// Functions to query UBSJardimApuanaRecords (as a Stream and as a Future).
Future<int> queryUBSJardimApuanaRecordCount({
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      UBSJardimApuanaRecord.collection,
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<UBSJardimApuanaRecord>> queryUBSJardimApuanaRecord({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      UBSJardimApuanaRecord.collection,
      UBSJardimApuanaRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<UBSJardimApuanaRecord>> queryUBSJardimApuanaRecordOnce({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      UBSJardimApuanaRecord.collection,
      UBSJardimApuanaRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<FFFirestorePage<UBSJardimApuanaRecord>> queryUBSJardimApuanaRecordPage({
  Query Function(Query)? queryBuilder,
  DocumentSnapshot? nextPageMarker,
  required int pageSize,
  required bool isStream,
}) =>
    queryCollectionPage(
      UBSJardimApuanaRecord.collection,
      UBSJardimApuanaRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      nextPageMarker: nextPageMarker,
      pageSize: pageSize,
      isStream: isStream,
    );

/// Functions to query UBSInterativaRecords (as a Stream and as a Future).
Future<int> queryUBSInterativaRecordCount({
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      UBSInterativaRecord.collection,
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<UBSInterativaRecord>> queryUBSInterativaRecord({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      UBSInterativaRecord.collection,
      UBSInterativaRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<UBSInterativaRecord>> queryUBSInterativaRecordOnce({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      UBSInterativaRecord.collection,
      UBSInterativaRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<FFFirestorePage<UBSInterativaRecord>> queryUBSInterativaRecordPage({
  Query Function(Query)? queryBuilder,
  DocumentSnapshot? nextPageMarker,
  required int pageSize,
  required bool isStream,
}) =>
    queryCollectionPage(
      UBSInterativaRecord.collection,
      UBSInterativaRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      nextPageMarker: nextPageMarker,
      pageSize: pageSize,
      isStream: isStream,
    );

/// Functions to query UBSJardimJapaoRecords (as a Stream and as a Future).
Future<int> queryUBSJardimJapaoRecordCount({
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      UBSJardimJapaoRecord.collection,
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<UBSJardimJapaoRecord>> queryUBSJardimJapaoRecord({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      UBSJardimJapaoRecord.collection,
      UBSJardimJapaoRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<UBSJardimJapaoRecord>> queryUBSJardimJapaoRecordOnce({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      UBSJardimJapaoRecord.collection,
      UBSJardimJapaoRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<FFFirestorePage<UBSJardimJapaoRecord>> queryUBSJardimJapaoRecordPage({
  Query Function(Query)? queryBuilder,
  DocumentSnapshot? nextPageMarker,
  required int pageSize,
  required bool isStream,
}) =>
    queryCollectionPage(
      UBSJardimJapaoRecord.collection,
      UBSJardimJapaoRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      nextPageMarker: nextPageMarker,
      pageSize: pageSize,
      isStream: isStream,
    );

/// Functions to query UBSDrJoseToledoPizaRecords (as a Stream and as a Future).
Future<int> queryUBSDrJoseToledoPizaRecordCount({
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      UBSDrJoseToledoPizaRecord.collection,
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<UBSDrJoseToledoPizaRecord>> queryUBSDrJoseToledoPizaRecord({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      UBSDrJoseToledoPizaRecord.collection,
      UBSDrJoseToledoPizaRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<UBSDrJoseToledoPizaRecord>> queryUBSDrJoseToledoPizaRecordOnce({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      UBSDrJoseToledoPizaRecord.collection,
      UBSDrJoseToledoPizaRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<FFFirestorePage<UBSDrJoseToledoPizaRecord>>
    queryUBSDrJoseToledoPizaRecordPage({
  Query Function(Query)? queryBuilder,
  DocumentSnapshot? nextPageMarker,
  required int pageSize,
  required bool isStream,
}) =>
        queryCollectionPage(
          UBSDrJoseToledoPizaRecord.collection,
          UBSDrJoseToledoPizaRecord.fromSnapshot,
          queryBuilder: queryBuilder,
          nextPageMarker: nextPageMarker,
          pageSize: pageSize,
          isStream: isStream,
        );

Future<int> queryCollectionCount(
  Query collection, {
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) {
  final builder = queryBuilder ?? (q) => q;
  var query = builder(collection);
  if (limit > 0) {
    query = query.limit(limit);
  }

  return query.count().get().catchError((err) {
    print('Error querying $collection: $err');
  }).then((value) => value.count);
}

Stream<List<T>> queryCollection<T>(
  Query collection,
  RecordBuilder<T> recordBuilder, {
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) {
  final builder = queryBuilder ?? (q) => q;
  var query = builder(collection);
  if (limit > 0 || singleRecord) {
    query = query.limit(singleRecord ? 1 : limit);
  }
  return query.snapshots().handleError((err) {
    print('Error querying $collection: $err');
  }).map((s) => s.docs
      .map(
        (d) => safeGet(
          () => recordBuilder(d),
          (e) => print('Error serializing doc ${d.reference.path}:\n$e'),
        ),
      )
      .where((d) => d != null)
      .map((d) => d!)
      .toList());
}

Future<List<T>> queryCollectionOnce<T>(
  Query collection,
  RecordBuilder<T> recordBuilder, {
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) {
  final builder = queryBuilder ?? (q) => q;
  var query = builder(collection);
  if (limit > 0 || singleRecord) {
    query = query.limit(singleRecord ? 1 : limit);
  }
  return query.get().then((s) => s.docs
      .map(
        (d) => safeGet(
          () => recordBuilder(d),
          (e) => print('Error serializing doc ${d.reference.path}:\n$e'),
        ),
      )
      .where((d) => d != null)
      .map((d) => d!)
      .toList());
}

extension QueryExtension on Query {
  Query whereIn(String field, List? list) => (list?.isEmpty ?? true)
      ? where(field, whereIn: null)
      : where(field, whereIn: list);

  Query whereNotIn(String field, List? list) => (list?.isEmpty ?? true)
      ? where(field, whereNotIn: null)
      : where(field, whereNotIn: list);

  Query whereArrayContainsAny(String field, List? list) =>
      (list?.isEmpty ?? true)
          ? where(field, arrayContainsAny: null)
          : where(field, arrayContainsAny: list);
}

class FFFirestorePage<T> {
  final List<T> data;
  final Stream<List<T>>? dataStream;
  final QueryDocumentSnapshot? nextPageMarker;

  FFFirestorePage(this.data, this.dataStream, this.nextPageMarker);
}

Future<FFFirestorePage<T>> queryCollectionPage<T>(
  Query collection,
  RecordBuilder<T> recordBuilder, {
  Query Function(Query)? queryBuilder,
  DocumentSnapshot? nextPageMarker,
  required int pageSize,
  required bool isStream,
}) async {
  final builder = queryBuilder ?? (q) => q;
  var query = builder(collection).limit(pageSize);
  if (nextPageMarker != null) {
    query = query.startAfterDocument(nextPageMarker);
  }
  Stream<QuerySnapshot>? docSnapshotStream;
  QuerySnapshot docSnapshot;
  if (isStream) {
    docSnapshotStream = query.snapshots();
    docSnapshot = await docSnapshotStream.first;
  } else {
    docSnapshot = await query.get();
  }
  final getDocs = (QuerySnapshot s) => s.docs
      .map(
        (d) => safeGet(
          () => recordBuilder(d),
          (e) => print('Error serializing doc ${d.reference.path}:\n$e'),
        ),
      )
      .where((d) => d != null)
      .map((d) => d!)
      .toList();
  final data = getDocs(docSnapshot);
  final dataStream = docSnapshotStream?.map(getDocs);
  final nextPageToken = docSnapshot.docs.isEmpty ? null : docSnapshot.docs.last;
  return FFFirestorePage(data, dataStream, nextPageToken);
}

// Creates a Firestore document representing the logged in user if it doesn't yet exist
Future maybeCreateUser(User user) async {
  final userRecord = UserRecord.collection.doc(user.uid);
  final userExists = await userRecord.get().then((u) => u.exists);
  if (userExists) {
    currentUserDocument = await UserRecord.getDocumentOnce(userRecord);
    return;
  }

  final userData = createUserRecordData(
    email: user.email,
    displayName: user.displayName,
    photoUrl: user.photoURL,
    uid: user.uid,
    phoneNumber: user.phoneNumber,
    createdTime: getCurrentTimestamp,
  );

  await userRecord.set(userData);
  currentUserDocument = UserRecord.getDocumentFromData(userData, userRecord);
}
