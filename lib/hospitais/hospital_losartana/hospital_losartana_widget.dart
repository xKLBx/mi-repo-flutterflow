import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_google_map.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart'
    as smooth_page_indicator;
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'hospital_losartana_model.dart';
export 'hospital_losartana_model.dart';

class HospitalLosartanaWidget extends StatefulWidget {
  const HospitalLosartanaWidget({
    Key? key,
    this.local,
  }) : super(key: key);

  final LatLng? local;

  @override
  _HospitalLosartanaWidgetState createState() =>
      _HospitalLosartanaWidgetState();
}

class _HospitalLosartanaWidgetState extends State<HospitalLosartanaWidget> {
  late HospitalLosartanaModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => HospitalLosartanaModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      resizeToAvoidBottomInset: false,
      backgroundColor: FlutterFlowTheme.of(context).primaryBtnText,
      appBar: AppBar(
        backgroundColor: Color(0xFFA000FF),
        automaticallyImplyLeading: false,
        leading: FlutterFlowIconButton(
          borderColor: Colors.transparent,
          borderRadius: 30.0,
          borderWidth: 1.0,
          buttonSize: 60.0,
          icon: Icon(
            Icons.arrow_back_rounded,
            color: Colors.white,
            size: 30.0,
          ),
          onPressed: () async {
            context.pop();
          },
        ),
        title: Text(
          'LOSARTANA',
          style: FlutterFlowTheme.of(context).bodyLarge.override(
                fontFamily: 'Readex Pro',
                color: FlutterFlowTheme.of(context).primaryBtnText,
                fontWeight: FontWeight.w500,
              ),
        ),
        actions: [],
        centerTitle: true,
        elevation: 2.0,
      ),
      body: SafeArea(
        top: true,
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Expanded(
              child: Container(
                width: double.infinity,
                height: 500.0,
                child: Stack(
                  children: [
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 40.0),
                      child: PageView(
                        controller: _model.pageViewController ??=
                            PageController(initialPage: 0),
                        scrollDirection: Axis.horizontal,
                        children: [
                          Container(
                            width: 100.0,
                            height: 461.0,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                            ),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Expanded(
                                  child: StreamBuilder<
                                      List<UBSJardimKeraluxRecord>>(
                                    stream: queryUBSJardimKeraluxRecord(
                                      singleRecord: true,
                                    ),
                                    builder: (context, snapshot) {
                                      // Customize what your widget looks like when it's loading.
                                      if (!snapshot.hasData) {
                                        return Center(
                                          child: SizedBox(
                                            width: 50.0,
                                            height: 50.0,
                                            child: CircularProgressIndicator(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primary,
                                            ),
                                          ),
                                        );
                                      }
                                      List<UBSJardimKeraluxRecord>
                                          columnMainContentUBSJardimKeraluxRecordList =
                                          snapshot.data!;
                                      // Return an empty Container when the item does not exist.
                                      if (snapshot.data!.isEmpty) {
                                        return Container();
                                      }
                                      final columnMainContentUBSJardimKeraluxRecord =
                                          columnMainContentUBSJardimKeraluxRecordList
                                                  .isNotEmpty
                                              ? columnMainContentUBSJardimKeraluxRecordList
                                                  .first
                                              : null;
                                      return SingleChildScrollView(
                                        child: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      20.0, 20.0, 20.0, 20.0),
                                              child: ClipRRect(
                                                borderRadius:
                                                    BorderRadius.circular(10.0),
                                                child: CachedNetworkImage(
                                                  imageUrl:
                                                      'https://static.wixstatic.com/media/2dff7a_39e549326454440bb1488917ea979d97~mv2_d_1600_1200_s_2.jpg/v1/fill/w_560,h_512,al_c,q_90,enc_auto/2dff7a_39e549326454440bb1488917ea979d97~mv2_d_1600_1200_s_2.jpg',
                                                  width:
                                                      MediaQuery.sizeOf(context)
                                                              .width *
                                                          1.0,
                                                  height: 230.0,
                                                  fit: BoxFit.cover,
                                                ),
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      20.0, 0.0, 0.0, 0.0),
                                              child: Text(
                                                'UBS Jardim Keralux',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .headlineMedium
                                                        .override(
                                                          fontFamily: 'Outfit',
                                                          fontWeight:
                                                              FontWeight.w600,
                                                        ),
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      20.0, 8.0, 0.0, 0.0),
                                              child: Text(
                                                'Horario de funcionamento: 24 Horas',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .titleSmall
                                                        .override(
                                                          fontFamily:
                                                              'Lexend Deca',
                                                          color: Colors.black,
                                                          fontSize: 16.0,
                                                          fontWeight:
                                                              FontWeight.w500,
                                                        ),
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      20.0, 12.0, 20.0, 4.0),
                                              child: Text(
                                                'Localizado na zona sul, tem fácil acesso para transporte público.\nSendo 24 horas, tendo atendimento todos os dias da semana.',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .labelLarge,
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      10.0, 20.0, 10.0, 10.0),
                                              child: Container(
                                                width: double.infinity,
                                                height: 326.0,
                                                decoration: BoxDecoration(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryBackground,
                                                ),
                                                child:
                                                    Builder(builder: (context) {
                                                  final _googleMapMarker =
                                                      columnMainContentUBSJardimKeraluxRecord;
                                                  return FlutterFlowGoogleMap(
                                                    controller: _model
                                                        .googleMapsController1,
                                                    onCameraIdle: (latLng) =>
                                                        _model.googleMapsCenter1 =
                                                            latLng,
                                                    initialLocation: _model
                                                            .googleMapsCenter1 ??=
                                                        columnMainContentUBSJardimKeraluxRecord!
                                                            .local!,
                                                    markers: [
                                                      if (_googleMapMarker !=
                                                          null)
                                                        FlutterFlowMarker(
                                                          _googleMapMarker
                                                              .reference.path,
                                                          _googleMapMarker
                                                              .local!,
                                                        ),
                                                    ],
                                                    markerColor:
                                                        GoogleMarkerColor
                                                            .violet,
                                                    mapType: MapType.normal,
                                                    style:
                                                        GoogleMapStyle.standard,
                                                    initialZoom: 14.0,
                                                    allowInteraction: true,
                                                    allowZoom: true,
                                                    showZoomControls: true,
                                                    showLocation: true,
                                                    showCompass: false,
                                                    showMapToolbar: false,
                                                    showTraffic: false,
                                                    centerMapOnMarkerTap: true,
                                                  );
                                                }),
                                              ),
                                            ),
                                          ],
                                        ),
                                      );
                                    },
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            width: 100.0,
                            height: 489.0,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                            ),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Expanded(
                                  child:
                                      StreamBuilder<List<UBSGuainasesRecord>>(
                                    stream: queryUBSGuainasesRecord(
                                      singleRecord: true,
                                    ),
                                    builder: (context, snapshot) {
                                      // Customize what your widget looks like when it's loading.
                                      if (!snapshot.hasData) {
                                        return Center(
                                          child: SizedBox(
                                            width: 50.0,
                                            height: 50.0,
                                            child: CircularProgressIndicator(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primary,
                                            ),
                                          ),
                                        );
                                      }
                                      List<UBSGuainasesRecord>
                                          columnMainContentUBSGuainasesRecordList =
                                          snapshot.data!;
                                      // Return an empty Container when the item does not exist.
                                      if (snapshot.data!.isEmpty) {
                                        return Container();
                                      }
                                      final columnMainContentUBSGuainasesRecord =
                                          columnMainContentUBSGuainasesRecordList
                                                  .isNotEmpty
                                              ? columnMainContentUBSGuainasesRecordList
                                                  .first
                                              : null;
                                      return SingleChildScrollView(
                                        child: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      20.0, 20.0, 20.0, 20.0),
                                              child: ClipRRect(
                                                borderRadius:
                                                    BorderRadius.circular(10.0),
                                                child: CachedNetworkImage(
                                                  imageUrl:
                                                      'data:image/jpeg;base64,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',
                                                  width:
                                                      MediaQuery.sizeOf(context)
                                                              .width *
                                                          1.0,
                                                  height: 230.0,
                                                  fit: BoxFit.cover,
                                                ),
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      20.0, 0.0, 0.0, 0.0),
                                              child: Text(
                                                'UBS Guainases\tII',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .headlineMedium
                                                        .override(
                                                          fontFamily: 'Outfit',
                                                          fontWeight:
                                                              FontWeight.w600,
                                                        ),
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      20.0, 8.0, 0.0, 0.0),
                                              child: Text(
                                                'Horario de funcionamento: 07:00 ás 20:00',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .titleSmall
                                                        .override(
                                                          fontFamily:
                                                              'Lexend Deca',
                                                          color: Colors.black,
                                                          fontSize: 16.0,
                                                          fontWeight:
                                                              FontWeight.w500,
                                                        ),
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      20.0, 12.0, 20.0, 4.0),
                                              child: Text(
                                                'Localizado na zona leste, tem fácil acesso para transporte público.\nSendo 07:00 ás 20:00 horas, tendo atendimento todos os dias da semana.',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .labelLarge,
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      10.0, 20.0, 10.0, 10.0),
                                              child: Container(
                                                width: double.infinity,
                                                height: 326.0,
                                                decoration: BoxDecoration(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryBackground,
                                                ),
                                                child:
                                                    Builder(builder: (context) {
                                                  final _googleMapMarker =
                                                      columnMainContentUBSGuainasesRecord;
                                                  return FlutterFlowGoogleMap(
                                                    controller: _model
                                                        .googleMapsController2,
                                                    onCameraIdle: (latLng) =>
                                                        _model.googleMapsCenter2 =
                                                            latLng,
                                                    initialLocation: _model
                                                            .googleMapsCenter2 ??=
                                                        columnMainContentUBSGuainasesRecord!
                                                            .local!,
                                                    markers: [
                                                      if (_googleMapMarker !=
                                                          null)
                                                        FlutterFlowMarker(
                                                          _googleMapMarker
                                                              .reference.path,
                                                          _googleMapMarker
                                                              .local!,
                                                        ),
                                                    ],
                                                    markerColor:
                                                        GoogleMarkerColor
                                                            .violet,
                                                    mapType: MapType.normal,
                                                    style:
                                                        GoogleMapStyle.standard,
                                                    initialZoom: 14.0,
                                                    allowInteraction: true,
                                                    allowZoom: true,
                                                    showZoomControls: true,
                                                    showLocation: true,
                                                    showCompass: false,
                                                    showMapToolbar: false,
                                                    showTraffic: false,
                                                    centerMapOnMarkerTap: true,
                                                  );
                                                }),
                                              ),
                                            ),
                                          ],
                                        ),
                                      );
                                    },
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            width: 100.0,
                            height: 489.0,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                            ),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Expanded(
                                  child: StreamBuilder<
                                      List<UBSMascarenhasdeMoraesRecord>>(
                                    stream: queryUBSMascarenhasdeMoraesRecord(
                                      singleRecord: true,
                                    ),
                                    builder: (context, snapshot) {
                                      // Customize what your widget looks like when it's loading.
                                      if (!snapshot.hasData) {
                                        return Center(
                                          child: SizedBox(
                                            width: 50.0,
                                            height: 50.0,
                                            child: CircularProgressIndicator(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primary,
                                            ),
                                          ),
                                        );
                                      }
                                      List<UBSMascarenhasdeMoraesRecord>
                                          columnMainContentUBSMascarenhasdeMoraesRecordList =
                                          snapshot.data!;
                                      // Return an empty Container when the item does not exist.
                                      if (snapshot.data!.isEmpty) {
                                        return Container();
                                      }
                                      final columnMainContentUBSMascarenhasdeMoraesRecord =
                                          columnMainContentUBSMascarenhasdeMoraesRecordList
                                                  .isNotEmpty
                                              ? columnMainContentUBSMascarenhasdeMoraesRecordList
                                                  .first
                                              : null;
                                      return SingleChildScrollView(
                                        child: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      20.0, 20.0, 20.0, 20.0),
                                              child: ClipRRect(
                                                borderRadius:
                                                    BorderRadius.circular(10.0),
                                                child: CachedNetworkImage(
                                                  imageUrl:
                                                      'https://pr0.nicelocal.br.com/9RFIdw0LxGa4VqnYYIcp8A/1120x700,q85/4px-BW84_n0QJGVPszge3NRBsKw-2VcOifrJIjPYFYkOtaCZxxXQ2dIkD8avy6svoLXCPK0itAm4_C9yqyYgJfX_T9OfekUFeWrFpq7cHWG8-Z2TWg0-1w',
                                                  width:
                                                      MediaQuery.sizeOf(context)
                                                              .width *
                                                          1.0,
                                                  height: 230.0,
                                                  fit: BoxFit.cover,
                                                ),
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      20.0, 0.0, 0.0, 0.0),
                                              child: Text(
                                                'UBS Mascarenhas de Moraes',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .headlineMedium
                                                        .override(
                                                          fontFamily: 'Outfit',
                                                          fontWeight:
                                                              FontWeight.w600,
                                                        ),
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      20.0, 8.0, 0.0, 0.0),
                                              child: Text(
                                                'Horario de funcionamento: 09:00 ás 22:00',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .titleSmall
                                                        .override(
                                                          fontFamily:
                                                              'Lexend Deca',
                                                          color: Colors.black,
                                                          fontSize: 16.0,
                                                          fontWeight:
                                                              FontWeight.w500,
                                                        ),
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      20.0, 12.0, 20.0, 4.0),
                                              child: Text(
                                                'Localizado na zona sul, tem fácil acesso para transporte público.\nSendo 09:00 ás 22:00 horas, tendo atendimento de segunda a sexta.',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .labelLarge,
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      10.0, 20.0, 10.0, 10.0),
                                              child: Container(
                                                width: double.infinity,
                                                height: 326.0,
                                                decoration: BoxDecoration(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryBackground,
                                                ),
                                                child:
                                                    Builder(builder: (context) {
                                                  final _googleMapMarker =
                                                      columnMainContentUBSMascarenhasdeMoraesRecord;
                                                  return FlutterFlowGoogleMap(
                                                    controller: _model
                                                        .googleMapsController3,
                                                    onCameraIdle: (latLng) =>
                                                        _model.googleMapsCenter3 =
                                                            latLng,
                                                    initialLocation: _model
                                                            .googleMapsCenter3 ??=
                                                        columnMainContentUBSMascarenhasdeMoraesRecord!
                                                            .local!,
                                                    markers: [
                                                      if (_googleMapMarker !=
                                                          null)
                                                        FlutterFlowMarker(
                                                          _googleMapMarker
                                                              .reference.path,
                                                          _googleMapMarker
                                                              .local!,
                                                        ),
                                                    ],
                                                    markerColor:
                                                        GoogleMarkerColor
                                                            .violet,
                                                    mapType: MapType.normal,
                                                    style:
                                                        GoogleMapStyle.standard,
                                                    initialZoom: 14.0,
                                                    allowInteraction: true,
                                                    allowZoom: true,
                                                    showZoomControls: true,
                                                    showLocation: true,
                                                    showCompass: false,
                                                    showMapToolbar: false,
                                                    showTraffic: false,
                                                    centerMapOnMarkerTap: true,
                                                  );
                                                }),
                                              ),
                                            ),
                                          ],
                                        ),
                                      );
                                    },
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Align(
                      alignment: AlignmentDirectional(-1.0, 1.0),
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            16.0, 0.0, 0.0, 16.0),
                        child: smooth_page_indicator.SmoothPageIndicator(
                          controller: _model.pageViewController ??=
                              PageController(initialPage: 0),
                          count: 3,
                          axisDirection: Axis.horizontal,
                          onDotClicked: (i) async {
                            await _model.pageViewController!.animateToPage(
                              i,
                              duration: Duration(milliseconds: 500),
                              curve: Curves.ease,
                            );
                          },
                          effect: smooth_page_indicator.ExpandingDotsEffect(
                            expansionFactor: 3.0,
                            spacing: 8.0,
                            radius: 16.0,
                            dotWidth: 16.0,
                            dotHeight: 8.0,
                            dotColor: Color(0xFFEBBBFF),
                            activeDotColor: Color(0xFFA000FF),
                            paintStyle: PaintingStyle.fill,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
