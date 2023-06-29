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
import 'hospital_propanol_model.dart';
export 'hospital_propanol_model.dart';

class HospitalPropanolWidget extends StatefulWidget {
  const HospitalPropanolWidget({
    Key? key,
    this.local,
  }) : super(key: key);

  final LatLng? local;

  @override
  _HospitalPropanolWidgetState createState() => _HospitalPropanolWidgetState();
}

class _HospitalPropanolWidgetState extends State<HospitalPropanolWidget> {
  late HospitalPropanolModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => HospitalPropanolModel());
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
          'PROPANOLOL',
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
                                      StreamBuilder<List<UBSBrasilandiaRecord>>(
                                    stream: queryUBSBrasilandiaRecord(
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
                                      List<UBSBrasilandiaRecord>
                                          columnMainContentUBSBrasilandiaRecordList =
                                          snapshot.data!;
                                      // Return an empty Container when the item does not exist.
                                      if (snapshot.data!.isEmpty) {
                                        return Container();
                                      }
                                      final columnMainContentUBSBrasilandiaRecord =
                                          columnMainContentUBSBrasilandiaRecordList
                                                  .isNotEmpty
                                              ? columnMainContentUBSBrasilandiaRecordList
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
                                                      'https://www.capital.sp.gov.br/fotos-para-noticias/fotos-galeria/2022-01/20220125_inauguracao-da-ubs-elisa-maria-ii-dr-camilo-cristofaro-martins_elj/20220125_inauguracao_ubs_elisa_maria_ii_camilo_cristofaro_elj-3256.jpg/@@images/dceb837b-c1d0-4ef5-a09d-c5a5eec0f88b.jpeg',
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
                                                'UBS Elisa Maria II',
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
                                                      columnMainContentUBSBrasilandiaRecord;
                                                  return FlutterFlowGoogleMap(
                                                    controller: _model
                                                        .googleMapsController1,
                                                    onCameraIdle: (latLng) =>
                                                        _model.googleMapsCenter1 =
                                                            latLng,
                                                    initialLocation: _model
                                                            .googleMapsCenter1 ??=
                                                        columnMainContentUBSBrasilandiaRecord!
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
                                  child: StreamBuilder<List<UBSVilaEdeRecord>>(
                                    stream: queryUBSVilaEdeRecord(
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
                                      List<UBSVilaEdeRecord>
                                          columnMainContentUBSVilaEdeRecordList =
                                          snapshot.data!;
                                      // Return an empty Container when the item does not exist.
                                      if (snapshot.data!.isEmpty) {
                                        return Container();
                                      }
                                      final columnMainContentUBSVilaEdeRecord =
                                          columnMainContentUBSVilaEdeRecordList
                                                  .isNotEmpty
                                              ? columnMainContentUBSVilaEdeRecordList
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
                                                      'data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEAAoHCBUVFRgWFRUYGRgaGhgcHBwaGh8aHB4cHhwaHh4hHiMlJS4lJB4rIRkhJjgmKy8xNTU1GiQ7QDs0Py40NTEBDAwMEA8QHhISHzEkISExNDQ0NDQ0NDQ0NDQ0MTQxMTQ0NDE0NDQxNDQxNDQ0NDQ0NDQ0NDQxNDQ0NDQ0PjRANP/AABEIAKwBJQMBIgACEQEDEQH/xAAbAAABBQEBAAAAAAAAAAAAAAADAAIEBQYBB//EAEcQAAIBAgQCBwUFBgQEBQUAAAECEQADBBIhMQVBBiJRYXGBkRMyobHRQlJiwfAUI3KSsuEVM4KiJFTC8RZDU4PSBxdjc5P/xAAYAQADAQEAAAAAAAAAAAAAAAAAAQIDBP/EACIRAAICAgMAAgMBAAAAAAAAAAABAhESITFBUQMTImGBcf/aAAwDAQACEQMRAD8A9KzSNVkdxBHxrkr3r6j56UBUIAmG79V9I0p63D+LzAYeoq0ZBspPYfEV0L3EfwmR8fpQQ45qP6T8Y+dEV1+8R47epkfGmA6eRIP8Qinqvcf9JmuCeRB/XjTlX8P8p/7GgBPcgElhoPtAqPM8h31522Ib9quPCFkfMIOdJnl3V6DiLpVSQzKdACVzCTty1HnyrzxYOJvxqJ7MvqKllRNzwHiAuKRMsoQsCACC05tByJEiPvVbVi+jB/4kn8BHwn6elbM00yWOFPFDFPFMkeKcKaop9SxoVOFcpwpGkRUq7SpFHKVKlQAqVKu0AcpV2uUAKkaVKmAxhQ2FFahtTJYJqGaI9DNBIq4aVKgZw0006uUgG0jXa5QBylSpUigPsz2g+Ippt0ZGDCVII7jNdIqzMj5Dy/OkFPZPpRga7FFgA8QfiPjREfsf1E/3ogFOCCgAVxiSoMGcw0PPKY3rF44f8TcaIJgnzAn4zW3fCqRG3hprWJ4wuXEuO8f0jtpMaJnR7TEr+IN6gN+R+FbOsFw69+9t5TDZxGh758iJ8q3a3O3Q+Mg+BoQMeKeDTa6BRYqHqaeDTFqLieJ2kYIzdYkCBrHe3YKGNIninChK1EFItIdSpUqQxUqVKgBUqVKgBVykaVACpUqVADWobUQ0NqYmCYUM0VqGaLFQ2lSpUrCjlcpxptKxiNNp1NosDlKu0qVhRkbL65kYjvU1a4XiNyQCQwJG+/qKpUw6oSVBE79lcuYlk1UwRqOYnvpJ0NqzYIZpwFZXA9Lohb1oj8VvUem/pWiwXErN33HUn7uzelaKSZLjRJpwp2WgPiba+86DxYfWiySQtYrjg/4l/L+kVrsPirbzkdGjeGGlZTjZBxLkEHRdtfsimgI1rFmy6OEzEE6D+E1rOFYpr1vO1s2zJBUg69hEgfoVm+H/AOfZ/wD2D+lq25NHYICrkc5Hx/X67qKrjU9lMI7KRQwdDsflQMy/EOlWaVti4q/eCNmP0H6mqm1jEJEh99SUMeJpwsDvo1vDiRvWbcXzZaTXBqeCYpmSG3QlZ7RoR848qubbVnujllgjjsfTTllWr+0DTQwwrtMLAbmuG6v3h6imIJSoK31JgMCe4g0WgBUqVKgBUqVKgBUqVdoAaaGwopobUACahNRWoTVNiobSpVw0WAq5Xa5RYzlKu1w0WBylTWcDcgeJApUrGeYt0us8rd7+Vf8A5UC/0nturKLd3UESQsD41OnvpwrfCHhlnIoTxP8AA/8ALTVx/wD+Jz/p8frWhnvrhNPCPgfZIqH4w7ABrdxwNBnBMDuO9NPEW5WLg/0n6VcUppYR8FnIo3xUyXtuogalZHnV5wYqUUrBEHbbeiIYmjYRBm0gCDsIoaj0Jyb5O8RBydXQiTI0I0O1WvAemCsFt4nqvsH+yf4uw9+3hVXxMH2b5YnK0TtMHestbs4ic37v1MfWpxb4KTSWz07pHcS5hroS4DqoJRxIOZTuO6sKmB0/zLv/APQ1AGHvyGHstNQOt2Hz2PbSscRuMNQBrHbtFUm4rYPfDJh4Yv37n8/9qaeHLze745/7UP8AarnatcXF3SJlRrGopfYgxkdfhSfeufz0k4Rb/H/N/amDEXCYBQeR1NdS7eIJldJ5dk0fah4sL/g9rmpPma7/AITZ+78T9aCt+5Ell1EjQ/o0UPcInMNO7X50faGDDYbhyIQyZkYahlYhge4zVxY6R463AD27qjk6kNH8Ska+NZpuKBSRmMjTaRRl4uvOPlS+xPkMZLg2Vrp3cA6+EafwOpHxog6fr/yt/wD2/WsaOIIf1NL9uT8XpTuAfkbP/wC4C/8AK3/9v1rh/wDqAv8Ayl71T61jv21e/wBKX7Ynf6UXAPy8Ndc6faHLhbgMGCSsA8p7qvOjXGnxSM7W8gWFPWkloltI0XURqa87woN1sltWdjyA/UCvQ+i3Dbli2y3AoLNmgGYGUCDynTlNKTjWhrLsviajLiEb3WU+B7KrOP8AE/ZBVYr1zlAgknSTttsaxmG466XYtQ0tkPwgidRvFZSlTos9GagtTUviILozc4IpFqVhQqVNBrtFjoVcpUoosKBYjEKilnIA18THZWZ4xxoXAFRnQbakCT4A1ZdJR1U8W+VYwgyIj/M/LuHzpLYUWNpsw2208aVLDgQZjc1ykMyuHxqOSqs8jtmjYtGUAhz6zVXbwOJtCVsbwQcyn86sGvuQudQmsNmAI8d4rRJ3yK1XAxLjkDrmi2Wcn3zTEvsykqlvRgI20PP60W7nTL/kiWCyCdO891DTEiyXC99PGEqBmvcrln1Y1GxWKvoVGZOswWQDpM6+XdUYS9KteAsazrcdVcgA6eg860XAXLIjMZJDfM/SszdtvnfroTmHI6mPXlU3A27gAUXUXTb2ZMc+39RXRSpHP2zScVYC05/C39JrM2eIj7rUbF270BDeVgweR7KNkLdvPLFQl4XdkDOeey94Hb30N0NRT5Ji8SGvUPwqJatGNju20/hoeMwdxEzl+YGqfijeT2V18Fe+y7RMTljmF7e+lk3yylFIl27cROaOe8bf3G1dS31To0yOTa9vj50TCcLdc7HEOIUmMqtzPJiR9mucNxqoXVmZxoQSqiNWB205Cou1odbFbtaiVaJ10P6FFtCEIIP2o0P6NSP8St9h9BHzro4jb+6fQVNvwqirNpiPdadOWu3woluwQpBU8j4b86n28egAlDoOYGtdfFW4PU1YHsnaPlTt+AUl5OsZj3jttTcQkgHu+tcv31VyDO/ZpqJ/P4U9L6sNOWmx5Cfzp0xWTsDaHW8qfhsHmzax1zQMBi1kgazpO2ojt8R61Ow2JVMwY6kzp3/9qnFq2VkmRnsoGgvqNCACfkKLZwyOJVgYMHlrvEECiWHm/bNuIYXC8yOdvUd+3kTTsReto76HMWk951/KKGuhkzoxdNrFDrIgIZSTBBGXNAmIJgV6V+2rp37ajtA/6l/mrxLi7hkJU6ysDnsooGH4rfCge3uA8h7RojSOfd8Kt9Ga2bPppxfM4UNKrcQpsIIV1cHvzaa1mbz5HDsWUnrMNmDE6w1ImbZJJP7+zqdSZZpPma5x+4VxByidFOvh49n51l8i4ZSNb0U4inMIu4kgKwgDfX47/CtKccuVnYqqAnrswC6bmTyrxtbzZgAMs850od7GNOU3DABIWJEzvrpMVEb4HR6bj+mti2JRTcPbORPIka+Q86zOM/8AqDfY9TKknSFDdnM1h72OLGHOk6U17oG2pqqfZLdGzxfTLFMVb2q2yu4thSpI+8DO/ZU/hfT+6G/eqroT9kZGXTwg6669tecNfI12/Ou2rhJkA+A105U6Cz2HH9ILF9FCPlaT1X6vLt2PrWce4JPOHB3nSN96z9zHIVHWHLSPge/uqwtZGAynlsAfyppFl3Y4hbE9bczoCdOXKlVVZBE9aNtNT9aVLQ6l4MwvDkVVa4y7DZQTEE99dv8AErdv3VgSNSN9dtqrf2/OogBhETHZpsaarAaBF3nVQdfOujRjsNgMSpDk20aST1hMeEEU7Hunu5F98R72ojVTrsOXPly1j4C/lDaDcnYH5j5VIxt0wkqJLKRoNZpaDYB8Nab3Q1s9xLLvGoOvdIJ5aVDv4a8jLIaM4yN7yk8ip1B8qsnuODohM6aATvOg0J2qNiMW75IzAh1K6fa1IiD30IKLZMSi5PaMSWgiCzbF9o7zt+VLCYnOxY6SY2jZY28qq7eITDuzXkdmDDKhUqAIJkhtDuNam4bFK/XQQp20jZDPxBpxQpkrG3eukfj/AKHq0T3hr2/1LWfxVw5l8Ln9D1d4a5Lbc25/jFZ/JyOHBD6Qk+xbU7pz/G/0qaQ2TNB3U/70qHx/Wy/cUP8Avepl58tti2iqokzP211MCiKtFPkkK4UuToMhJ8IuE/KqXilnNnCqs9TfQRN3+1WoYlHldkbv+w/aKytm+zs5AckjZiAY606aAAdmlTG+hugnsVByM0P2GfhoBVrheDX7uqW84gMGzLHZoO6i8OxRUq7wzbqriVURvlP2vrWgHTK+PueaH8jWlMnJGT4pw7FWgCcO5IWWaJVY7xpULCsz51dGRwpIn7RgyNezT9CtlxfpXcu2bi5VGVGYFRrIGh1JGhM7bgViOJWLi/s7sWz3WKkEdcBgSu+slQdCOyl+g0yrwmCa9cuMWyKsSx2JiABO50mrKxw21IX2z6mJyLEn/VVbicXfssEZ2GWepmKDKTpmjc8vKtD0PTNeS46go5HVIJUgE5jJ3jLy2nnzrJrsMSPcRbLlHYHWT5hf/jRQUciHXXRecxJMVtb3SLhAkDDo8H/0lg9pBOlQeJcY4bfSFBs3ApCNlIVewMRK5ZA9KHK1QsVdlXwq3luIJnqXfnZqu4qzC/c1tRmEZnhvdHIAxvUjh+a7cT2qwUe5lUQoRh7MxoTmGu5JnTeqjpHlGJuFg66qARlKnqIeca+dRF1ItrQf9oMbIe4sB93bPl7KrLl2T7uWCNB2d2tR7rqDo8gjfadydP1tR8KvtXVNmMBToBPIHuMVbkSol/acmyx0/wA7D/1NXOkojEFhPuqfgR+VOs2G9g4KMCt+wraaKQ7g+lSOP4XPcDAzICjyP96xnvgtFXZdDuJMEyP1POot7BXXllQEBesQQCBr+oqZ+ylOvmgA+NGt4owxBgtIYQdJ0Ok+fZWcbiwsozwl31RCMo+6ZJnlrqe4SaKvRfEk+6w7yjj5ir/C3WW31HK84XMCY5jWJG+wodziLtAa9cnl1jM05fJT2S6Ke70fFlxnR7mk++La6mPus2/hU/hd5VBC4JQDuDedpjTWU76sbd0gdZy0iCWOYgeJ56UjiVRpCow/Fmk+hoXy3yMLb4k4gLg8OojqkGf+gGm4+3iGXO62wTEKM3M6UfDcULXF6iKm2gaB2aEjn86usTgWcRKQYIIVtDP8Z3p2pcFxddmOZcQCdEHgn1NKtriMBnYt1QTvAO9KjFBk/TC2MEoUfu7EkT/m3jvr7uuvnFRsbhmQZ8lmOcLcEanU5nM+VaKx7i/wj+mouLAfqBlkmO3WTyq1LZNGfwuNCAkqhnXVSfTuojtbuCS2XrDnAA8l286tz0dtghXeSeSiPmdqZxnh2GRUYM4UkA6AjLMSOe9Vkm9Ao6AJw3CtDNe7iARqPE6/A1Hx6hEQB4IcQ2YNCgGDpv4xXQmBBkXnBGx9mD8DT8S+DYqQ8EOC59nGYQZAExvTTYmtEy6tvFoiZ3YrqHIAbKA+2nuyPhQMFh/ZpkBkCdfFSak2OMYW3dF1GghSuUIQGEQJ10PhvFCxPFLDsSLkTG6nkoWiLfhEla0CxLwy/wDuf0NV3hHBYwwO+xn7dZvEYq0WX96pHXB0OkoRJ076scLxOyP/ADk5zoe2eyiasI6LHi4nD3T+FT/veu8bcexvAH7AP+8H0qHi+I4d7ToMQoLaCVMEBjvrpv303HY7DOjL+0rLhVY5dNIBO81MbSKZeWACzIdmBHqr0/o/0btPibyXGaEVCF6oY584kkbRlmqnD8Zw8ybqaA/aInQiNu+s9xv2N641xkLoAM3s7gXVmuae6dRpy2jtoimmM2nSBcBhHKG7ed8oaAEeJJABbqwdNjrFU3RE4e62S9dK3HuQgyllk6AE5hBnblWPxSW1VPZW3QdYEO2YnaCOqKiW8UyMrqYZSGB7CDIPqK0omj2XjPRyzYVgHZnZSIJhQD2jXU7ATzNZrGqilnvszKlvPlXUy7ZVGvZrz5mlxfjF17SEP1nyuW2J3bmSe6oaYNnzuxP71lV5OgWGygDsAnaoe2UkReF4CxjrhCl7bJmyGAVKmSRvvqeXfpWgREwlr2L5ngsqMkZpKktMwAI1qD0dwJt4tEUGLYcz+HKRJ7Zn41b8btr7YBgpVkBKt3EiRz5ClJ1KiktWzP8A/hltMlxWUcmlSR4gEfCpGH6KuZLsqjYQS58RovbGo5Va+1AUkSR2QZ8tqkYTFjJABUL+Ek69knWlKbEoplVh7CJeUKzGS4JaOsyrbWRHblHxqv4rwC8997iIQtwqA6vEkJbWCCMpEnaRM1a4m0j3LMLID3H10JcKhDVe4TFIqwXA30IJB1QwREbKdRrqKnKtjaT4MHhej+JDPNlXkZNSEg9Xl/rX1ouB4JcsXFL2GMAGSZPlqBW7wWKtoWDEavmEZiI/dd2nuH4VG4iyuwyNoFgzI5R2UOQ1E4ijLmywxy5tt+tvHOAKq+MuBkkfan4ip6PCmTqWJjs327tfhUDH3VBUMrMDMBWA1HPUa/2qUwaKp8SSYA3merOnjm8ORqDYTcOQSIggSfPWatrvELKDILbMfxZZHdmEfo1CbOAXCKFPujc6c83MUOSIaI0lSMsgiYImNuffUW6+5ykMW6vdprp5fGrNusNQAGiYMGRB5Hl31SPiwtwAbTrO2p0/KpTUmPHRPS26iS2pnXcDtnTfSpSKo1Gd5EEgaZuQ86c1t1AzoIOmZYaAdiBt50Cxcu23EA5S4RjGoO42pNIcYlvw13lQba6xpME+E1qcBfZuq6EMOehEcue+vZWYwiEpPWiWBIjSHM/WrpeKImVg40gNmJkjzG8670/jlo0n8aWi9NvxpU7DYhWGYEEHsP0rtXZnRjsBw5WQDIzkCDnfqgwNIXl40TEBLY1dV/BbQDt3O8Vm+hbXrrvD5UCwWOqy2wJMSYBq/vcIZJMpv72YOxnsjalJqLpstRb2jt/F24JDLprGwNUXSnEK1pcrKcrAaEbED5ECp120UkZiDrrmBjyk/GqnHcJVznZnZjHP1q4J3bJlXCZnC9cLVOvcGCjW4F/iIn03oVu1aU9d2fuUZAfMyY8hXUmjFkZn7/1NTcLwfEXNUtPHawyD1aAfKptnjq2xFrD2074lvNjqfWnP0mvH7voKVvoKO2uiN1vfe2nmWPw0+NWGH6Gp9u+zfwIF+JLVUv0gvfe+Apq9IcQNnNQ8vSteGgPRTDL7z3D4lR/011ujOFiAXntzj6VRDpNiObT46/MUROktzUlUO32V+lLGXofwtH6LYYD37g81+lCTotZ1/eXN9DK6fDWm2OkqGM9seRI+tWuG41hn94FdtdW+TCPQ0ql6FooeJcDcsES6HO4V2AMbcl7TVBjOE4i3Oe04XbMAWT+YSB516O7YZ/culRvMzoOQEAydOzSe6q3E3nSFIJUzkM9UjQwRrykR+LnStxKVMz/C8Rcf2drIclsGWOsyQfTSAO+t/j+HlcA6ic4UPpuCpDad4UR5VC4Jw5XYFRCe93g9niD8q1VqyFUrLNMzmJbfTnyqJSBI896F4t/2lM5Zi6uskzsMwP8AsI86sunfCvaNbuAkFQyad/W+vwqm4XfyLhriwfZ4u5YbLpoxVh8GYf64r0jE4dXBRhIP6FOT2mNcUeSrwa599v5jTv8AB7h0LsfM16C/AmA6rBvHQ/Shf4Tc+58V+tGSYqZmuCYI2mQMSc1y4ZP8C/Sra7acElSN4ExIHV7ewl9vw1zjVi5ZbD9SSzsIzAQpWGM67DWOcVKmoY0VwF0DSTrpOu6mTMk+9y1/KiIbumQGDmnNJj3ebQfvHxqYK6DSGDwAfIDcPWIGkajTmeZmoHG8QEyFgCpLAiSvLTUVaMYqh6QvKJMbn9fCihEZySGILJtoVOUAgRJj5iNa5bxzoV90qJgBhA5awDlqmeVmJ7DBqPcxLKw3gHXXUjvpuCFZc4i6Ly9S3DjXRyc2vLwn0FVtvCNcu5EALMsnUQAuoJPdURMWZIjflvGvzP51f9E2UYglzAW2VHYGfSNO6fSprEadsNwvht32ezLLKpBIBIYSpHMEflFaLhuFVVCPJMycyayOcgjURG3rROIYM50CNoQzf7pUdshTHpNW3DrRyEP1jJ31G+nnrUNpo04ZG6PMVR1ja4/xM1K4xg/b2mTUN7yEadcbbdu3nQ34TbE+zC2ydTAlT4qdPSK6L72gFbI8+6EUhjHYJPrt30QTWh/JJNt+mfHR57iq9nErlI+0SGHcQDuDIpVaXODi4S7oUJPu2mAXxJO7HmYFcra2ZGL4UXN63bS5mRXzutsQkjYSfePf31sb9owWuOEXnqB8dvSsbwl2w46gDvsCRCyezmTUTiq37rfvXzH7i6hfTTyAqnG2Fl5jukuFtStpRdftIET3mJNZrHcfuOYLBB2IIHw1p9nhluQHZkWJLMVRQO3WWNQuJcQT2vs8NluJ1QpNvrM3Ps0q0q6ENR5+0G867r2CtA/CbZWMigkcgJB5wai/4CB7rt3yZFNTCimdyNx8acgPMVbNwZpkMD48qA+FjTc9g5k6AedVkhFc512mP0aaD41af4W43oV3Csmpj9RQpICFmFPt86JkmuhKdgCNINTmTvPnTKCQ+GxBVhrzq4fENoJJE5gJ0B7h5/Os4X1qyGM90EaRv+v1rUTQ48mx6PcTKEpmjO3VB5kSTHkPl21oGx9yCFAB5E7A94A7ax/AJ9oH01nf8vWr7imJy2mOYgsIG/Psrna2ap6KTPlw1xMiv7S/n16vXGVp8SFiddDWt/xVwsm20wNFGb+maxFiWKryDDTlJIB+VaoHWAYPYTr6Rt4VUlRMSUvHgPeUqeUqdfAAk1Is8WDmFZZ7CGVvQiaiK3br3/8Aem3cLbdYZAQDpupHhGxqdFEXpKLlxVdWXNbJYabgiCPjNUVjid3ZkUx4j61p24eyiEuNB5XJuRp9mSD6k1SLgSjMrGewxAI7R8qqNPRMvTi8Qb7g9f7UDF4x2QqmZGMDMI7tvSpPsoobWh3zVYk2RsFj7gLi67NtlGUCI5z2mmY5PaBVg6SZPfUw2+1fSnpbWP7RRiFlE3DFO8+tFfoy7zkdTpybf1FWjJHKupKmVMGhoLKFuiV0a5ZPbmFEtcLdJOYgsYbSe8Dt79fWtbhuIg6OIPaNvOprWVbrCGHMciKzd9lqjP4TirqyBtcgI00003Hlzq6Tj4icpNNucOttqoI8p17CNYNRX4cBoo9Ej1qVFDtl3huL2njrAHsbSmNgFzM9m6bbNuA2ZPIfZ8vGqI4UATJkGDIprllMgEjtX9TVKNcCv0lXcHcYxft4i4R7rW75yweyCDyG4rlNt41wNGBpUfkFox7tdJB0WAeYHx/KhvhMS6wiZBMyIUk67nfnVCGdt2aPE0UZvtP8TXR/hNEv/AMQ2rgH/X86m4Xhd61qiKp7QdfnVQrxszeRNS7fFLqe67eevzqXYy0Y4n/sRQ7rYge9p4kfWoR4zfP2h/Kv0obY0sZKgsdyQDr9O6hComF75E9YjtBJ+RoRFzmD6GowxzqMqsQJJgUnx9wnVzTy/QUHzv2n41zO/wChUYYl+RPxpty8++vjO1PL9BRKZ3/QobMeZA37qjYh7jRlB13IGprjYG4wliANutrr3Cm2KiWbLdvpFcOGbkJ89KZhrK22kMx0MggASf8AUT8qlNihIOUiNNNSPy+dDbEXuC6L21Ad76GRI5jykiqvijKLig9ZNI28hppuKHguMPaJCKrDSM4kg93d503HYg3AM6jXTQxEGZPr21nJPk6IyTi1pI0XAB+8QGYLQPMT+VaXiHCC6EKddx5Hasv0SJe9bYTkRXYToST1T8h+hW8Vz901m+TNcGHGCdG5SD8RWlwyu6KxWCQDpBE+Z7ai4HLcuMHB1zHTSDNXqBVAAgQIHgKqTFErVRp2b0o6SORqQ9kzmRgTzUmQ30PeKIt2d1KnmCP1IqCwCt5etMxOGziD732T39nn9Knz2V3cTApcByZgIA0MDAOo2PfVpb4ZaZQy5iDtr/alxSxPXHL3h+dQcDi8h01U7xyrS3JWjPh0yRf4YimSWycyDqp7dtR311+DCdHMeXz7P1rViL8icpg7HSCD511FAAAUxyAj61OTHSKw8HWPfMx2aVU4iwyNlYeBGx8K1Da7EjyE02/bRxD/ABkH401IHFdGUy0XD3mQ9U6dhqZiOHMp6sOOUHX0qIyVd2Z7RY2ccCZ91u86HzqYqhtde8T86oAp/W1T+G3DOUMAeQY9U93cew1MolqRYvhFIhVA8tfnTW4ehEGZ7aPZujNl1DfdO/lyIqSDPjWdtFUZu9hVUw0z2gHWlWgvYYMZIJ8DXKMmLE8PMnTaiC0Oyujn4n8qHfc10AFy1xkqLnNDFwxvSAmBaRqJ7Q6605L7RvRQEpLgDSQDpzojXQTtHhVcMU2aZ18BXWxTTy9BToCyS+AZifHanPjAZhAJgjs0qt/a2jl/KPpTP2hiRJ+AHypJWBZ3MaJmCD2CoeJ4k3uoSsa99BxLkCo9oQCeetNO0Jk2zxV1PWOdZ1BCye+SKlJctv7r5TE5WE692uvrVZPcKHc0MCmJk+5iAunvHu2qXgWDtD6qATG0RVTZQTVhg/fA5EwfCk3YJGw4V0cXE287sykaIqtBVeU+Op8zUxOiDj3MTeXeJY1C6NYphfgHQhwRygbVsheNYvTLWzMWui2JQymMcd+3zJmiHh/Ek93EyJ0zIDp8da0/tj3U5rhyny+YoyYUjNJ/ia6m7bP/ALfdzgSKE/Gceh69m20bxmH51rEOtEI/P5Us14FGNPSrEqOtg/Rj+udP/wDGjKsthWHeW6nIdnbyrVlAdwKi3OHWmmUX0GvjSyXgzKDp452FpQPvEyfgKh3OksmQqnfY/o1psV0YwrnW36GI8KyvSfgtrDlPZArO4mRptvWkWQybhOlzoNLQI5dfbw0qfZ6YNzsHwV5/KvPQm+p586EL7g6O3rV0mF0enp0xQ727g/lP68KIel1sfYePKfnXlycRuT70+NHOOcjU0sEGTPSU6WWT9i55hT+dMxPHMM+vXVuRyj0Ovxrz5b7aUT2zdtGIXZrW45YBguR4rRRxewP/ADAfAVimNPtbihk0ekYfpFhHTLduDTSSrfTQ1OscYwsQMShj7zax415U23pRjpEVMootM9ZXiWH/APXtfzr9aVeT12s8UPI//9k=',
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
                                                'UBS Vila Ede\t',
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
                                                      columnMainContentUBSVilaEdeRecord;
                                                  return FlutterFlowGoogleMap(
                                                    controller: _model
                                                        .googleMapsController2,
                                                    onCameraIdle: (latLng) =>
                                                        _model.googleMapsCenter2 =
                                                            latLng,
                                                    initialLocation: _model
                                                            .googleMapsCenter2 ??=
                                                        columnMainContentUBSVilaEdeRecord!
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
                                      List<UBSJardimApuanaRecord>>(
                                    stream: queryUBSJardimApuanaRecord(
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
                                      List<UBSJardimApuanaRecord>
                                          columnMainContentUBSJardimApuanaRecordList =
                                          snapshot.data!;
                                      // Return an empty Container when the item does not exist.
                                      if (snapshot.data!.isEmpty) {
                                        return Container();
                                      }
                                      final columnMainContentUBSJardimApuanaRecord =
                                          columnMainContentUBSJardimApuanaRecordList
                                                  .isNotEmpty
                                              ? columnMainContentUBSJardimApuanaRecordList
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
                                                      'https://www.prefeitura.sp.gov.br/cidade/secretarias/upload/ama_joamar_fc_a_1176323275.jpg',
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
                                                'UBS Jardim Apuanã',
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
                                                      columnMainContentUBSJardimApuanaRecord;
                                                  return FlutterFlowGoogleMap(
                                                    controller: _model
                                                        .googleMapsController3,
                                                    onCameraIdle: (latLng) =>
                                                        _model.googleMapsCenter3 =
                                                            latLng,
                                                    initialLocation: _model
                                                            .googleMapsCenter3 ??=
                                                        columnMainContentUBSJardimApuanaRecord!
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
