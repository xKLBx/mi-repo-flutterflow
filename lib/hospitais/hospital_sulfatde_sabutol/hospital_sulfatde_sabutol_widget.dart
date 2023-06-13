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
import 'hospital_sulfatde_sabutol_model.dart';
export 'hospital_sulfatde_sabutol_model.dart';

class HospitalSulfatdeSabutolWidget extends StatefulWidget {
  const HospitalSulfatdeSabutolWidget({
    Key? key,
    this.local,
  }) : super(key: key);

  final LatLng? local;

  @override
  _HospitalSulfatdeSabutolWidgetState createState() =>
      _HospitalSulfatdeSabutolWidgetState();
}

class _HospitalSulfatdeSabutolWidgetState
    extends State<HospitalSulfatdeSabutolWidget> {
  late HospitalSulfatdeSabutolModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => HospitalSulfatdeSabutolModel());
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
      backgroundColor: Color(0xFFD7FFC4),
      appBar: AppBar(
        backgroundColor: Color(0xFF327D26),
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
          'ATENOLOL 25MG.',
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
                                  child:
                                      StreamBuilder<List<UBSInterativaRecord>>(
                                    stream: queryUBSInterativaRecord(
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
                                      List<UBSInterativaRecord>
                                          columnMainContentUBSInterativaRecordList =
                                          snapshot.data!;
                                      // Return an empty Container when the item does not exist.
                                      if (snapshot.data!.isEmpty) {
                                        return Container();
                                      }
                                      final columnMainContentUBSInterativaRecord =
                                          columnMainContentUBSInterativaRecordList
                                                  .isNotEmpty
                                              ? columnMainContentUBSInterativaRecordList
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
                                                      'https://www.jornalspnorte.com.br/wp-content/uploads/2018/11/221118_UBS-Interativa-Jaragua.jpg',
                                                  width: MediaQuery.of(context)
                                                          .size
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
                                                'UBS Interativa\t',
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
                                                style: FlutterFlowTheme.of(
                                                        context)
                                                    .titleSmall
                                                    .override(
                                                      fontFamily: 'Lexend Deca',
                                                      color: Color(0xFF327D26),
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
                                                      columnMainContentUBSInterativaRecord;
                                                  return FlutterFlowGoogleMap(
                                                    controller: _model
                                                        .googleMapsController1,
                                                    onCameraIdle: (latLng) =>
                                                        _model.googleMapsCenter1 =
                                                            latLng,
                                                    initialLocation: _model
                                                            .googleMapsCenter1 ??=
                                                        columnMainContentUBSInterativaRecord!
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
                                      StreamBuilder<List<UBSJardimJapaoRecord>>(
                                    stream: queryUBSJardimJapaoRecord(
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
                                      List<UBSJardimJapaoRecord>
                                          columnMainContentUBSJardimJapaoRecordList =
                                          snapshot.data!;
                                      // Return an empty Container when the item does not exist.
                                      if (snapshot.data!.isEmpty) {
                                        return Container();
                                      }
                                      final columnMainContentUBSJardimJapaoRecord =
                                          columnMainContentUBSJardimJapaoRecordList
                                                  .isNotEmpty
                                              ? columnMainContentUBSJardimJapaoRecordList
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
                                                  width: MediaQuery.of(context)
                                                          .size
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
                                                'UBS Jardim Japão\t',
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
                                                style: FlutterFlowTheme.of(
                                                        context)
                                                    .titleSmall
                                                    .override(
                                                      fontFamily: 'Lexend Deca',
                                                      color: Color(0xFF327D26),
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
                                                'Localizado na zona sul, tem fácil acesso para transporte público.\nSendo 07:00 ás 20:00 horas, tendo atendimento todos os dias da semana.',
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
                                                      columnMainContentUBSJardimJapaoRecord;
                                                  return FlutterFlowGoogleMap(
                                                    controller: _model
                                                        .googleMapsController2,
                                                    onCameraIdle: (latLng) =>
                                                        _model.googleMapsCenter2 =
                                                            latLng,
                                                    initialLocation: _model
                                                            .googleMapsCenter2 ??=
                                                        columnMainContentUBSJardimJapaoRecord!
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
                                      List<UBSDrJoseToledoPizaRecord>>(
                                    stream: queryUBSDrJoseToledoPizaRecord(
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
                                      List<UBSDrJoseToledoPizaRecord>
                                          columnMainContentUBSDrJoseToledoPizaRecordList =
                                          snapshot.data!;
                                      // Return an empty Container when the item does not exist.
                                      if (snapshot.data!.isEmpty) {
                                        return Container();
                                      }
                                      final columnMainContentUBSDrJoseToledoPizaRecord =
                                          columnMainContentUBSDrJoseToledoPizaRecordList
                                                  .isNotEmpty
                                              ? columnMainContentUBSDrJoseToledoPizaRecordList
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
                                                      'https://lh5.googleusercontent.com/p/AF1QipM1CC8BNZFSrDyGKP9MtaPxRRWJ1e1Rx2PF7sZs=w650-h486-k-no',
                                                  width: MediaQuery.of(context)
                                                          .size
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
                                                'UBS Dr Jose Toledo Piza\t',
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
                                                style: FlutterFlowTheme.of(
                                                        context)
                                                    .titleSmall
                                                    .override(
                                                      fontFamily: 'Lexend Deca',
                                                      color: Color(0xFF327D26),
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
                                                      columnMainContentUBSDrJoseToledoPizaRecord;
                                                  return FlutterFlowGoogleMap(
                                                    controller: _model
                                                        .googleMapsController3,
                                                    onCameraIdle: (latLng) =>
                                                        _model.googleMapsCenter3 =
                                                            latLng,
                                                    initialLocation: _model
                                                            .googleMapsCenter3 ??=
                                                        columnMainContentUBSDrJoseToledoPizaRecord!
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
                            dotColor: Color(0xFFB2DEA0),
                            activeDotColor: Color(0xFF113E07),
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
