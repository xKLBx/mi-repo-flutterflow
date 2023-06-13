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
import 'hospital_insulina_model.dart';
export 'hospital_insulina_model.dart';

class HospitalInsulinaWidget extends StatefulWidget {
  const HospitalInsulinaWidget({
    Key? key,
    this.local,
  }) : super(key: key);

  final LatLng? local;

  @override
  _HospitalInsulinaWidgetState createState() => _HospitalInsulinaWidgetState();
}

class _HospitalInsulinaWidgetState extends State<HospitalInsulinaWidget> {
  late HospitalInsulinaModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => HospitalInsulinaModel());
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
                                  child: StreamBuilder<
                                      List<UBSJardimSilvaTelesRecord>>(
                                    stream: queryUBSJardimSilvaTelesRecord(
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
                                      List<UBSJardimSilvaTelesRecord>
                                          columnMainContentUBSJardimSilvaTelesRecordList =
                                          snapshot.data!;
                                      // Return an empty Container when the item does not exist.
                                      if (snapshot.data!.isEmpty) {
                                        return Container();
                                      }
                                      final columnMainContentUBSJardimSilvaTelesRecord =
                                          columnMainContentUBSJardimSilvaTelesRecordList
                                                  .isNotEmpty
                                              ? columnMainContentUBSJardimSilvaTelesRecordList
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
                                                      'https://cloudfront-us-east-1.images.arcpublishing.com/estadao/7UGZBIYI3FNCHKJOVWGFK4MBKY.jpg',
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
                                                'UBS Jardim Silva Teles\t',
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
                                                      columnMainContentUBSJardimSilvaTelesRecord;
                                                  return FlutterFlowGoogleMap(
                                                    controller: _model
                                                        .googleMapsController1,
                                                    onCameraIdle: (latLng) =>
                                                        _model.googleMapsCenter1 =
                                                            latLng,
                                                    initialLocation: _model
                                                            .googleMapsCenter1 ??=
                                                        columnMainContentUBSJardimSilvaTelesRecord!
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
                                      StreamBuilder<List<UBSJardimCopaRecord>>(
                                    stream: queryUBSJardimCopaRecord(
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
                                      List<UBSJardimCopaRecord>
                                          columnMainContentUBSJardimCopaRecordList =
                                          snapshot.data!;
                                      // Return an empty Container when the item does not exist.
                                      if (snapshot.data!.isEmpty) {
                                        return Container();
                                      }
                                      final columnMainContentUBSJardimCopaRecord =
                                          columnMainContentUBSJardimCopaRecordList
                                                  .isNotEmpty
                                              ? columnMainContentUBSJardimCopaRecordList
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
                                                      'https://aps.santamarcelina.org/wp-content/uploads/2019/10/Renomecao_UBS_COPA_MATHILDE_AQUINO_DINIZ-222.jpg',
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
                                                'UBS Jardim Copa\t',
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
                                                      columnMainContentUBSJardimCopaRecord;
                                                  return FlutterFlowGoogleMap(
                                                    controller: _model
                                                        .googleMapsController2,
                                                    onCameraIdle: (latLng) =>
                                                        _model.googleMapsCenter2 =
                                                            latLng,
                                                    initialLocation: _model
                                                            .googleMapsCenter2 ??=
                                                        columnMainContentUBSJardimCopaRecord!
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
                                      StreamBuilder<List<UBSJardimIvaRecord>>(
                                    stream: queryUBSJardimIvaRecord(
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
                                      List<UBSJardimIvaRecord>
                                          columnMainContentUBSJardimIvaRecordList =
                                          snapshot.data!;
                                      // Return an empty Container when the item does not exist.
                                      if (snapshot.data!.isEmpty) {
                                        return Container();
                                      }
                                      final columnMainContentUBSJardimIvaRecord =
                                          columnMainContentUBSJardimIvaRecordList
                                                  .isNotEmpty
                                              ? columnMainContentUBSJardimIvaRecordList
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
                                                      'https://pr1.nicelocal.br.com/ICRBYv1UM1KpT9pVGH8Psg/330x440,q85/4px-BW84_n0QJGVPszge3NRBsKw-2VcOifrJIjPYFYkOtaCZxxXQ2WoRpVLTYtabRS7LLGLbgmhs2adp4NVQfvF_oS8bZ9ogjoBN0CZEl_Zb5jOfT5kBiQ',
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
                                                'UBS Jardim Iva\t',
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
                                                      columnMainContentUBSJardimIvaRecord;
                                                  return FlutterFlowGoogleMap(
                                                    controller: _model
                                                        .googleMapsController3,
                                                    onCameraIdle: (latLng) =>
                                                        _model.googleMapsCenter3 =
                                                            latLng,
                                                    initialLocation: _model
                                                            .googleMapsCenter3 ??=
                                                        columnMainContentUBSJardimIvaRecord!
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
