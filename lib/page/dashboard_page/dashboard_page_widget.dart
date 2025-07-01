import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/sub_component/setting_bar/setting_bar_widget.dart';
import '/index.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'dashboard_page_model.dart';
export 'dashboard_page_model.dart';

class DashboardPageWidget extends StatefulWidget {
  const DashboardPageWidget({super.key});

  static String routeName = 'Dashboard_Page';
  static String routePath = '/dashboardPage';

  @override
  State<DashboardPageWidget> createState() => _DashboardPageWidgetState();
}

class _DashboardPageWidgetState extends State<DashboardPageWidget>
    with TickerProviderStateMixin {
  late DashboardPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = <String, AnimationInfo>{};

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => DashboardPageModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      _model.loadDASHBOARD = await FetchDashboardDataCall.call(
        username: FFAppState().userEmail,
        password: FFAppState().userPw,
      );

      if ((_model.loadDASHBOARD?.succeeded ?? true)) {
        _model.id = FetchDashboardDataCall.id(
          (_model.loadDASHBOARD?.jsonBody ?? ''),
        )!;
        _model.rank = FetchDashboardDataCall.rank(
          (_model.loadDASHBOARD?.jsonBody ?? ''),
        )!;
        _model.avatar = FetchDashboardDataCall.avatar(
          (_model.loadDASHBOARD?.jsonBody ?? ''),
        )!;
        _model.pumpbility = FetchDashboardDataCall.score(
          (_model.loadDASHBOARD?.jsonBody ?? ''),
        );
        _model.topsonglist = FetchDashboardDataCall.tOPname(
          (_model.loadDASHBOARD?.jsonBody ?? ''),
        )!
            .toList()
            .cast<String>();
        _model.topscorelist = FetchDashboardDataCall.tOPscore(
          (_model.loadDASHBOARD?.jsonBody ?? ''),
        )!
            .toList()
            .cast<String>();
        _model.toptypelist = FetchDashboardDataCall.tOPtype(
          (_model.loadDASHBOARD?.jsonBody ?? ''),
        )!
            .toList()
            .cast<String>();
        _model.topdiflist = FetchDashboardDataCall.tOPdif(
          (_model.loadDASHBOARD?.jsonBody ?? ''),
        )!
            .toList()
            .cast<String>();
        _model.topplatelist = FetchDashboardDataCall.tOPplate(
          (_model.loadDASHBOARD?.jsonBody ?? ''),
        )!
            .toList()
            .cast<String>();
        _model.topURLlist = FetchDashboardDataCall.tOPbg(
          (_model.loadDASHBOARD?.jsonBody ?? ''),
        )!
            .toList()
            .cast<String>();
        _model.othersong = FetchDashboardDataCall.oTHERname(
          (_model.loadDASHBOARD?.jsonBody ?? ''),
        )!
            .toList()
            .cast<String>();
        _model.otherscore = FetchDashboardDataCall.oTHERscore(
          (_model.loadDASHBOARD?.jsonBody ?? ''),
        )!
            .toList()
            .cast<String>();
        _model.othertype = FetchDashboardDataCall.oTHERtype(
          (_model.loadDASHBOARD?.jsonBody ?? ''),
        )!
            .toList()
            .cast<String>();
        _model.otherdif = FetchDashboardDataCall.oTHERdif(
          (_model.loadDASHBOARD?.jsonBody ?? ''),
        )!
            .toList()
            .cast<String>();
        _model.otherplate = FetchDashboardDataCall.oTHERplate(
          (_model.loadDASHBOARD?.jsonBody ?? ''),
        )!
            .toList()
            .cast<String>();
        _model.otherURL = FetchDashboardDataCall.oTHERbg(
          (_model.loadDASHBOARD?.jsonBody ?? ''),
        )!
            .toList()
            .cast<String>();
        safeSetState(() {});
        _model.isLoad = false;
        safeSetState(() {});
      }
    });

    animationsMap.addAll({
      'iconOnPageLoadAnimation': AnimationInfo(
        loop: true,
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          RotateEffect(
            curve: Curves.easeInOut,
            delay: 300.0.ms,
            duration: 1500.0.ms,
            begin: 0.0,
            end: -2.0,
          ),
        ],
      ),
    });
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: Colors.black,
        endDrawer: Drawer(
          elevation: 16.0,
          child: wrapWithModel(
            model: _model.settingBarModel,
            updateCallback: () => safeSetState(() {}),
            child: SettingBarWidget(),
          ),
        ),
        appBar: AppBar(
          backgroundColor: Color(0xFF4B39EF),
          automaticallyImplyLeading: false,
          title: Align(
            alignment: AlignmentDirectional(-1.0, 0.0),
            child: InkWell(
              splashColor: Colors.transparent,
              focusColor: Colors.transparent,
              hoverColor: Colors.transparent,
              highlightColor: Colors.transparent,
              onTap: () async {
                context.goNamed(HomePageWidget.routeName);
              },
              child: Text(
                'PIU Checker',
                style: FlutterFlowTheme.of(context).headlineMedium.override(
                      font: GoogleFonts.ubuntu(
                        fontWeight: FontWeight.w800,
                        fontStyle: FlutterFlowTheme.of(context)
                            .headlineMedium
                            .fontStyle,
                      ),
                      color: Colors.white,
                      fontSize: 22.0,
                      letterSpacing: 0.0,
                      fontWeight: FontWeight.w800,
                      fontStyle:
                          FlutterFlowTheme.of(context).headlineMedium.fontStyle,
                    ),
              ),
            ),
          ),
          actions: [
            FlutterFlowIconButton(
              borderRadius: 8.0,
              buttonSize: 40.0,
              fillColor: FlutterFlowTheme.of(context).primary,
              icon: Icon(
                Icons.settings_sharp,
                color: FlutterFlowTheme.of(context).info,
                size: 24.0,
              ),
              onPressed: () async {
                scaffoldKey.currentState!.openEndDrawer();
              },
            ),
          ],
          centerTitle: false,
          elevation: 2.0,
        ),
        body: SafeArea(
          top: true,
          child: Stack(
            children: [
              if ((!_model.isLoad! ? true : false) &&
                  responsiveVisibility(
                    context: context,
                    tabletLandscape: false,
                    desktop: false,
                  ))
                SafeArea(
                  child: Container(
                    width: MediaQuery.sizeOf(context).width * 1.0,
                    constraints: BoxConstraints(
                      maxWidth: 767.0,
                      maxHeight: 950.0,
                    ),
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [Color(0xFFF0F2F0), Color(0xFF000C40)],
                        stops: [0.0, 0.5],
                        begin: AlignmentDirectional(0.0, -1.0),
                        end: AlignmentDirectional(0, 1.0),
                      ),
                    ),
                    child: Visibility(
                      visible: responsiveVisibility(
                        context: context,
                        tabletLandscape: false,
                        desktop: false,
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      2.0, 0.0, 0.0, 0.0),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Text(
                                            'Player',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                              font: GoogleFonts.signikaNegative(
                                                fontWeight: FontWeight.w600,
                                                fontStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .fontStyle,
                                              ),
                                              color: Colors.white,
                                              fontSize: 12.0,
                                              letterSpacing: 0.0,
                                              fontWeight: FontWeight.w600,
                                              fontStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .fontStyle,
                                              shadows: [
                                                Shadow(
                                                  color: Colors.black,
                                                  offset: Offset(2.0, 2.0),
                                                  blurRadius: 2.0,
                                                )
                                              ],
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    8.0, 0.0, 0.0, 0.0),
                                            child: ClipRRect(
                                              borderRadius:
                                                  BorderRadius.circular(8.0),
                                              child: Image.network(
                                                valueOrDefault<String>(
                                                  _model.avatar,
                                                  'https://www.piugame.com/l_img/logo.png',
                                                ),
                                                width: 30.0,
                                                height: 24.0,
                                                fit: BoxFit.cover,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      Align(
                                        alignment:
                                            AlignmentDirectional(-1.0, 0.0),
                                        child: Text(
                                          valueOrDefault<String>(
                                            _model.id,
                                            '[ID]',
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                            font: GoogleFonts.signika(
                                              fontWeight: FontWeight.bold,
                                              fontStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .fontStyle,
                                            ),
                                            color: Colors.white,
                                            fontSize: 14.0,
                                            letterSpacing: 0.0,
                                            fontWeight: FontWeight.bold,
                                            fontStyle:
                                                FlutterFlowTheme.of(context)
                                                    .bodyMedium
                                                    .fontStyle,
                                            shadows: [
                                              Shadow(
                                                color: Colors.black,
                                                offset: Offset(2.0, 2.0),
                                                blurRadius: 4.0,
                                              )
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Column(
                                  mainAxisSize: MainAxisSize.max,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Align(
                                      alignment:
                                          AlignmentDirectional(-1.0, -1.0),
                                      child: Text(
                                        'Ranking',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                          font: GoogleFonts.signikaNegative(
                                            fontWeight: FontWeight.w600,
                                            fontStyle:
                                                FlutterFlowTheme.of(context)
                                                    .bodyMedium
                                                    .fontStyle,
                                          ),
                                          color: Colors.white,
                                          fontSize: 12.0,
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.w600,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMedium
                                                  .fontStyle,
                                          shadows: [
                                            Shadow(
                                              color: Colors.black,
                                              offset: Offset(2.0, 2.0),
                                              blurRadius: 2.0,
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                    Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Align(
                                          alignment:
                                              AlignmentDirectional(-1.0, 0.0),
                                          child: Text(
                                            '#',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                              font: GoogleFonts.signikaNegative(
                                                fontWeight: FontWeight.w800,
                                                fontStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .fontStyle,
                                              ),
                                              color: Colors.white,
                                              fontSize: 16.0,
                                              letterSpacing: 1.0,
                                              fontWeight: FontWeight.w800,
                                              fontStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .fontStyle,
                                              shadows: [
                                                Shadow(
                                                  color: Colors.black,
                                                  offset: Offset(2.0, 2.0),
                                                  blurRadius: 4.0,
                                                )
                                              ],
                                            ),
                                          ),
                                        ),
                                        Align(
                                          alignment:
                                              AlignmentDirectional(-1.0, 0.0),
                                          child: Text(
                                            valueOrDefault<String>(
                                              _model.rank,
                                              '[RANK]',
                                            ),
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                              font: GoogleFonts.signikaNegative(
                                                fontWeight: FontWeight.w800,
                                                fontStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .fontStyle,
                                              ),
                                              color: Colors.white,
                                              fontSize: 16.0,
                                              letterSpacing: 1.0,
                                              fontWeight: FontWeight.w800,
                                              fontStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .fontStyle,
                                              shadows: [
                                                Shadow(
                                                  color: Colors.black,
                                                  offset: Offset(2.0, 2.0),
                                                  blurRadius: 4.0,
                                                )
                                              ],
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 2.0, 0.0),
                                  child: Container(
                                    width: 100.0,
                                    height: 50.0,
                                    child: Stack(
                                      children: [
                                        Align(
                                          alignment:
                                              AlignmentDirectional(-1.0, 1.0),
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 0.0, 0.0, 4.0),
                                            child: Container(
                                              width: 100.0,
                                              height: 40.0,
                                              decoration: BoxDecoration(
                                                gradient: LinearGradient(
                                                  colors: [
                                                    valueOrDefault<Color>(
                                                      () {
                                                        if (_model.pumpbility! <
                                                            10000) {
                                                          return Color(
                                                              0xFF2E8B57);
                                                        } else if (_model
                                                                .pumpbility! <
                                                            20000) {
                                                          return Color(
                                                              0xFFFFA500);
                                                        } else if (_model
                                                                .pumpbility! <
                                                            30000) {
                                                          return Color(
                                                              0xFFC10202);
                                                        } else if (_model
                                                                .pumpbility! <
                                                            40000) {
                                                          return Color(
                                                              0xFFCC9966);
                                                        } else if (_model
                                                                .pumpbility! <
                                                            50000) {
                                                          return Color(
                                                              0xFFD9D8D8);
                                                        } else if (_model
                                                                .pumpbility! <
                                                            70000) {
                                                          return Color(
                                                              0xFFFFD700);
                                                        } else {
                                                          return Color(
                                                              0xFF99CCCC);
                                                        }
                                                      }(),
                                                      Color(0xFFFFD700),
                                                    ),
                                                    valueOrDefault<Color>(
                                                      () {
                                                        if (_model.pumpbility! <
                                                            10000) {
                                                          return Color(
                                                              0xFF2E8B57);
                                                        } else if (_model
                                                                .pumpbility! <
                                                            20000) {
                                                          return Color(
                                                              0xFFFFA500);
                                                        } else if (_model
                                                                .pumpbility! <
                                                            30000) {
                                                          return Color(
                                                              0xFFC10202);
                                                        } else if (_model
                                                                .pumpbility! <
                                                            40000) {
                                                          return Color(
                                                              0xFF663333);
                                                        } else if (_model
                                                                .pumpbility! <
                                                            50000) {
                                                          return Color(
                                                              0xFF666666);
                                                        } else if (_model
                                                                .pumpbility! <
                                                            70000) {
                                                          return Color(
                                                              0xFF996633);
                                                        } else {
                                                          return Color(
                                                              0xFF336699);
                                                        }
                                                      }(),
                                                      Color(0xFF996633),
                                                    )
                                                  ],
                                                  stops: [0.2, 1.0],
                                                  begin: AlignmentDirectional(
                                                      0.0, -1.0),
                                                  end: AlignmentDirectional(
                                                      0, 1.0),
                                                ),
                                                borderRadius: BorderRadius.only(
                                                  bottomLeft:
                                                      Radius.circular(0.0),
                                                  bottomRight:
                                                      Radius.circular(0.0),
                                                  topLeft: Radius.circular(0.0),
                                                  topRight:
                                                      Radius.circular(0.0),
                                                ),
                                                border: Border.all(
                                                  color: Colors.white,
                                                  width: 2.0,
                                                ),
                                              ),
                                              child: Align(
                                                alignment: AlignmentDirectional(
                                                    0.0, 0.0),
                                                child: Text(
                                                  valueOrDefault<String>(
                                                    formatNumber(
                                                      _model.pumpbility,
                                                      formatType:
                                                          FormatType.decimal,
                                                      decimalType: DecimalType
                                                          .periodDecimal,
                                                    ),
                                                    '00000',
                                                  ),
                                                  textAlign: TextAlign.center,
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                    font: GoogleFonts
                                                        .signikaNegative(
                                                      fontWeight:
                                                          FontWeight.w800,
                                                      fontStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMedium
                                                              .fontStyle,
                                                    ),
                                                    color: Colors.white,
                                                    fontSize: 18.0,
                                                    letterSpacing: 1.0,
                                                    fontWeight: FontWeight.w800,
                                                    fontStyle:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .bodyMedium
                                                            .fontStyle,
                                                    shadows: [
                                                      Shadow(
                                                        color: Colors.black,
                                                        offset:
                                                            Offset(2.0, 2.0),
                                                        blurRadius: 4.0,
                                                      )
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Align(
                                          alignment:
                                              AlignmentDirectional(-1.0, -1.0),
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    6.0, 0.0, 0.0, 0.0),
                                            child: Text(
                                              'Pumbility',
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                font:
                                                    GoogleFonts.signikaNegative(
                                                  fontWeight: FontWeight.w600,
                                                  fontStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMedium
                                                          .fontStyle,
                                                ),
                                                color: Colors.white,
                                                fontSize: 12.0,
                                                letterSpacing: 0.0,
                                                fontWeight: FontWeight.w600,
                                                fontStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .fontStyle,
                                                shadows: [
                                                  Shadow(
                                                    color: Colors.black,
                                                    offset: Offset(2.0, 2.0),
                                                    blurRadius: 2.0,
                                                  )
                                                ],
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ].divide(SizedBox(width: 10.0)),
                            ),
                          ),
                          Align(
                            alignment: AlignmentDirectional(-1.0, 0.0),
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  10.0, 4.0, 0.0, 8.0),
                              child: AutoSizeText(
                                'TOP 50 Songs in Pumbility',
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                  font: GoogleFonts.signikaNegative(
                                    fontWeight: FontWeight.bold,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .fontStyle,
                                  ),
                                  color: Colors.white,
                                  fontSize: 15.0,
                                  letterSpacing: 0.5,
                                  fontWeight: FontWeight.bold,
                                  fontStyle: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .fontStyle,
                                  shadows: [
                                    Shadow(
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryText,
                                      offset: Offset(2.0, 2.0),
                                      blurRadius: 2.0,
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Container(
                            width: MediaQuery.sizeOf(context).width * 0.95,
                            constraints: BoxConstraints(
                              maxWidth: 750.0,
                            ),
                            decoration: BoxDecoration(
                              color: Color(0x32000000),
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      6.0, 0.0, 6.0, 0.0),
                                  child: Builder(
                                    builder: (context) {
                                      final listview = _model.topsonglist
                                          .toList()
                                          .take(10)
                                          .toList();

                                      return GridView.builder(
                                        padding: EdgeInsets.fromLTRB(
                                          0,
                                          4.0,
                                          0,
                                          4.0,
                                        ),
                                        gridDelegate:
                                            SliverGridDelegateWithFixedCrossAxisCount(
                                          crossAxisCount: 5,
                                          crossAxisSpacing: 6.0,
                                          mainAxisSpacing: 10.0,
                                          childAspectRatio: 1.2,
                                        ),
                                        shrinkWrap: true,
                                        scrollDirection: Axis.vertical,
                                        itemCount: listview.length,
                                        itemBuilder: (context, listviewIndex) {
                                          final listviewItem =
                                              listview[listviewIndex];
                                          return Container(
                                            width: 70.0,
                                            height: 70.0,
                                            decoration: BoxDecoration(
                                              color: Colors.transparent,
                                              borderRadius:
                                                  BorderRadius.circular(12.0),
                                            ),
                                            child: Column(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Align(
                                                  alignment:
                                                      AlignmentDirectional(
                                                          0.0, 0.0),
                                                  child: Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Column(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: [
                                                          Align(
                                                            alignment:
                                                                AlignmentDirectional(
                                                                    -1.0, 0.0),
                                                            child: Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          2.0,
                                                                          0.0,
                                                                          0.0),
                                                              child: Text(
                                                                valueOrDefault<
                                                                    String>(
                                                                  _model.top10
                                                                      .elementAtOrNull(
                                                                          listviewIndex),
                                                                  '#0',
                                                                ),
                                                                textAlign:
                                                                    TextAlign
                                                                        .start,
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .override(
                                                                  font: GoogleFonts
                                                                      .signikaNegative(
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .bold,
                                                                    fontStyle: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .fontStyle,
                                                                  ),
                                                                  color: Color(
                                                                      0xFFF5DB1B),
                                                                  fontSize:
                                                                      10.0,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold,
                                                                  fontStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .fontStyle,
                                                                  shadows: [
                                                                    Shadow(
                                                                      color: Color(
                                                                          0xFF14181B),
                                                                      offset: Offset(
                                                                          1.0,
                                                                          1.0),
                                                                      blurRadius:
                                                                          2.0,
                                                                    )
                                                                  ],
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                          Align(
                                                            alignment:
                                                                AlignmentDirectional(
                                                                    0.0, 0.0),
                                                            child: Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          2.0,
                                                                          8.0,
                                                                          0.0,
                                                                          0.0),
                                                              child: Text(
                                                                valueOrDefault<
                                                                    String>(
                                                                  _model
                                                                      .topscorelist
                                                                      .elementAtOrNull(
                                                                          listviewIndex),
                                                                  '0,000',
                                                                ),
                                                                textAlign:
                                                                    TextAlign
                                                                        .center,
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .override(
                                                                  font: GoogleFonts
                                                                      .signikaNegative(
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .bold,
                                                                    fontStyle: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .fontStyle,
                                                                  ),
                                                                  color: Colors
                                                                      .white,
                                                                  fontSize:
                                                                      10.0,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold,
                                                                  fontStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .fontStyle,
                                                                  shadows: [
                                                                    Shadow(
                                                                      color: Color(
                                                                          0xFF57636C),
                                                                      offset: Offset(
                                                                          1.0,
                                                                          1.0),
                                                                      blurRadius:
                                                                          2.0,
                                                                    )
                                                                  ],
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                      Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    2.0,
                                                                    2.0,
                                                                    0.0,
                                                                    2.0),
                                                        child: Container(
                                                          width: 36.0,
                                                          height: 35.0,
                                                          child: Stack(
                                                            children: [
                                                              Align(
                                                                alignment:
                                                                    AlignmentDirectional(
                                                                        1.0,
                                                                        1.0),
                                                                child:
                                                                    ClipRRect(
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              0.0),
                                                                  child:
                                                                      CachedNetworkImage(
                                                                    fadeInDuration:
                                                                        Duration(
                                                                            milliseconds:
                                                                                500),
                                                                    fadeOutDuration:
                                                                        Duration(
                                                                            milliseconds:
                                                                                500),
                                                                    imageUrl: _model
                                                                        .topURLlist
                                                                        .elementAtOrNull(
                                                                            listviewIndex)!,
                                                                    width: 36.0,
                                                                    height:
                                                                        30.0,
                                                                    fit: BoxFit
                                                                        .cover,
                                                                    alignment:
                                                                        Alignment(
                                                                            0.0,
                                                                            0.0),
                                                                  ),
                                                                ),
                                                              ),
                                                              Align(
                                                                alignment:
                                                                    AlignmentDirectional(
                                                                        1.0,
                                                                        -1.0),
                                                                child: Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          2.0,
                                                                          0.0,
                                                                          0.0,
                                                                          4.0),
                                                                  child:
                                                                      Container(
                                                                    width: 15.0,
                                                                    height:
                                                                        10.0,
                                                                    decoration:
                                                                        BoxDecoration(
                                                                      color: valueOrDefault<
                                                                          Color>(
                                                                        _model.toptypelist.elementAtOrNull(listviewIndex) ==
                                                                                's'
                                                                            ? Color(0xFFFF3232)
                                                                            : Color(0xFF05CB14),
                                                                        Color(
                                                                            0xFF05CB14),
                                                                      ),
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              2.0),
                                                                    ),
                                                                    alignment:
                                                                        AlignmentDirectional(
                                                                            0.0,
                                                                            0.0),
                                                                    child:
                                                                        Align(
                                                                      alignment:
                                                                          AlignmentDirectional(
                                                                              0.0,
                                                                              0.0),
                                                                      child:
                                                                          Text(
                                                                        valueOrDefault<
                                                                            String>(
                                                                          _model
                                                                              .topdiflist
                                                                              .elementAtOrNull(listviewIndex),
                                                                          '00',
                                                                        ),
                                                                        textAlign:
                                                                            TextAlign.center,
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .bodyMedium
                                                                            .override(
                                                                          font:
                                                                              GoogleFonts.dmSerifText(
                                                                            fontWeight:
                                                                                FontWeight.bold,
                                                                            fontStyle:
                                                                                FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                          ),
                                                                          color:
                                                                              Colors.white,
                                                                          fontSize:
                                                                              7.0,
                                                                          letterSpacing:
                                                                              0.0,
                                                                          fontWeight:
                                                                              FontWeight.bold,
                                                                          fontStyle: FlutterFlowTheme.of(context)
                                                                              .bodyMedium
                                                                              .fontStyle,
                                                                          shadows: [
                                                                            Shadow(
                                                                              color: Color(0xFF57636C),
                                                                              offset: Offset(1.0, 1.0),
                                                                              blurRadius: 2.0,
                                                                            )
                                                                          ],
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ),
                                                              ),
                                                              Align(
                                                                alignment:
                                                                    AlignmentDirectional(
                                                                        1.0,
                                                                        1.0),
                                                                child:
                                                                    ClipRRect(
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              0.0),
                                                                  child: Image
                                                                      .network(
                                                                    valueOrDefault<
                                                                        String>(
                                                                      _model
                                                                          .topplatelist
                                                                          .elementAtOrNull(
                                                                              listviewIndex),
                                                                      'https://www.piugame.com/l_img/grade/ss.png',
                                                                    ),
                                                                    width: 16.0,
                                                                    height:
                                                                        12.0,
                                                                    fit: BoxFit
                                                                        .fitWidth,
                                                                    alignment:
                                                                        Alignment(
                                                                            1.0,
                                                                            0.0),
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
                                                Divider(
                                                  height: 6.0,
                                                  color: Colors.white,
                                                ),
                                                Align(
                                                  alignment:
                                                      AlignmentDirectional(
                                                          -1.0, 0.0),
                                                  child: Text(
                                                    valueOrDefault<String>(
                                                      _model.topsonglist
                                                          .elementAtOrNull(
                                                              listviewIndex),
                                                      '[SONG]',
                                                    ).maybeHandleOverflow(
                                                      maxChars: 20,
                                                    ),
                                                    textAlign: TextAlign.start,
                                                    maxLines: 1,
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              'NAVER NANUM',
                                                          color: Colors.white,
                                                          fontSize: 6.0,
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.normal,
                                                        ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          );
                                        },
                                      );
                                    },
                                  ),
                                ),
                                Divider(
                                  height: 6.0,
                                  thickness: 2.0,
                                  indent: 4.0,
                                  endIndent: 4.0,
                                  color: Colors.white,
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      6.0, 0.0, 6.0, 0.0),
                                  child: Builder(
                                    builder: (context) {
                                      final grid = _model.othersong
                                          .toList()
                                          .take(40)
                                          .toList();

                                      return GridView.builder(
                                        padding: EdgeInsets.fromLTRB(
                                          0,
                                          4.0,
                                          0,
                                          4.0,
                                        ),
                                        gridDelegate:
                                            SliverGridDelegateWithFixedCrossAxisCount(
                                          crossAxisCount: 5,
                                          crossAxisSpacing: 6.0,
                                          mainAxisSpacing: 10.0,
                                          childAspectRatio: 1.2,
                                        ),
                                        primary: false,
                                        shrinkWrap: true,
                                        scrollDirection: Axis.vertical,
                                        itemCount: grid.length,
                                        itemBuilder: (context, gridIndex) {
                                          final gridItem = grid[gridIndex];
                                          return Container(
                                            width: 70.0,
                                            height: 70.0,
                                            decoration: BoxDecoration(
                                              borderRadius: BorderRadius.only(
                                                bottomLeft:
                                                    Radius.circular(0.0),
                                                bottomRight:
                                                    Radius.circular(0.0),
                                                topLeft: Radius.circular(0.0),
                                                topRight: Radius.circular(0.0),
                                              ),
                                            ),
                                            child: Column(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Align(
                                                  alignment:
                                                      AlignmentDirectional(
                                                          0.0, 0.0),
                                                  child: Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Column(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: [
                                                          Align(
                                                            alignment:
                                                                AlignmentDirectional(
                                                                    0.0, 0.0),
                                                            child: Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          2.0,
                                                                          0.0,
                                                                          0.0),
                                                              child: Text(
                                                                valueOrDefault<
                                                                    String>(
                                                                  _model.other40
                                                                      .elementAtOrNull(
                                                                          gridIndex),
                                                                  '#11',
                                                                ),
                                                                textAlign:
                                                                    TextAlign
                                                                        .center,
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .override(
                                                                      font: GoogleFonts
                                                                          .signikaNegative(
                                                                        fontWeight:
                                                                            FontWeight.bold,
                                                                        fontStyle: FlutterFlowTheme.of(context)
                                                                            .bodyMedium
                                                                            .fontStyle,
                                                                      ),
                                                                      color: Colors
                                                                          .white,
                                                                      fontSize:
                                                                          10.0,
                                                                      letterSpacing:
                                                                          0.0,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .bold,
                                                                      fontStyle: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium
                                                                          .fontStyle,
                                                                    ),
                                                              ),
                                                            ),
                                                          ),
                                                          Align(
                                                            alignment:
                                                                AlignmentDirectional(
                                                                    0.0, 0.0),
                                                            child: Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          2.0,
                                                                          6.0,
                                                                          0.0,
                                                                          0.0),
                                                              child: Text(
                                                                valueOrDefault<
                                                                    String>(
                                                                  _model
                                                                      .otherscore
                                                                      .elementAtOrNull(
                                                                          gridIndex),
                                                                  '0,000',
                                                                ),
                                                                textAlign:
                                                                    TextAlign
                                                                        .center,
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .override(
                                                                  font: GoogleFonts
                                                                      .signikaNegative(
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .bold,
                                                                    fontStyle: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .fontStyle,
                                                                  ),
                                                                  color: Colors
                                                                      .white,
                                                                  fontSize: 8.0,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold,
                                                                  fontStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .fontStyle,
                                                                  shadows: [
                                                                    Shadow(
                                                                      color: Color(
                                                                          0xFF57636C),
                                                                      offset: Offset(
                                                                          1.0,
                                                                          1.0),
                                                                      blurRadius:
                                                                          2.0,
                                                                    )
                                                                  ],
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                      Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    0.0,
                                                                    3.0,
                                                                    0.0,
                                                                    0.0),
                                                        child: Container(
                                                          width: 36.0,
                                                          height: 35.0,
                                                          child: Stack(
                                                            alignment:
                                                                AlignmentDirectional(
                                                                    1.0, 1.0),
                                                            children: [
                                                              Align(
                                                                alignment:
                                                                    AlignmentDirectional(
                                                                        1.0,
                                                                        1.0),
                                                                child:
                                                                    ClipRRect(
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .only(
                                                                    bottomLeft:
                                                                        Radius.circular(
                                                                            0.0),
                                                                    bottomRight:
                                                                        Radius.circular(
                                                                            0.0),
                                                                    topLeft: Radius
                                                                        .circular(
                                                                            0.0),
                                                                    topRight: Radius
                                                                        .circular(
                                                                            6.0),
                                                                  ),
                                                                  child:
                                                                      CachedNetworkImage(
                                                                    fadeInDuration:
                                                                        Duration(
                                                                            milliseconds:
                                                                                500),
                                                                    fadeOutDuration:
                                                                        Duration(
                                                                            milliseconds:
                                                                                500),
                                                                    imageUrl: _model
                                                                        .otherURL
                                                                        .elementAtOrNull(
                                                                            gridIndex)!,
                                                                    width: 36.0,
                                                                    height:
                                                                        30.0,
                                                                    fit: BoxFit
                                                                        .cover,
                                                                    alignment:
                                                                        Alignment(
                                                                            0.0,
                                                                            0.0),
                                                                  ),
                                                                ),
                                                              ),
                                                              Align(
                                                                alignment:
                                                                    AlignmentDirectional(
                                                                        1.0,
                                                                        -1.0),
                                                                child:
                                                                    Container(
                                                                  width: 15.0,
                                                                  height: 10.0,
                                                                  decoration:
                                                                      BoxDecoration(
                                                                    color: valueOrDefault<
                                                                        Color>(
                                                                      _model.othertype.elementAtOrNull(gridIndex) ==
                                                                              's'
                                                                          ? Color(
                                                                              0xFFFF3232)
                                                                          : Color(
                                                                              0xFF05CB14),
                                                                      Color(
                                                                          0xFF05CB14),
                                                                    ),
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            2.0),
                                                                  ),
                                                                  alignment:
                                                                      AlignmentDirectional(
                                                                          0.0,
                                                                          0.0),
                                                                  child: Align(
                                                                    alignment:
                                                                        AlignmentDirectional(
                                                                            0.0,
                                                                            0.0),
                                                                    child: Text(
                                                                      valueOrDefault<
                                                                          String>(
                                                                        _model
                                                                            .otherdif
                                                                            .elementAtOrNull(gridIndex),
                                                                        '00',
                                                                      ),
                                                                      textAlign:
                                                                          TextAlign
                                                                              .center,
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium
                                                                          .override(
                                                                        font: GoogleFonts
                                                                            .dmSerifText(
                                                                          fontWeight:
                                                                              FontWeight.bold,
                                                                          fontStyle: FlutterFlowTheme.of(context)
                                                                              .bodyMedium
                                                                              .fontStyle,
                                                                        ),
                                                                        color: Colors
                                                                            .white,
                                                                        fontSize:
                                                                            7.0,
                                                                        letterSpacing:
                                                                            0.0,
                                                                        fontWeight:
                                                                            FontWeight.bold,
                                                                        fontStyle: FlutterFlowTheme.of(context)
                                                                            .bodyMedium
                                                                            .fontStyle,
                                                                        shadows: [
                                                                          Shadow(
                                                                            color:
                                                                                Color(0xFF57636C),
                                                                            offset:
                                                                                Offset(1.0, 1.0),
                                                                            blurRadius:
                                                                                2.0,
                                                                          )
                                                                        ],
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ),
                                                              ),
                                                              Align(
                                                                alignment:
                                                                    AlignmentDirectional(
                                                                        1.0,
                                                                        1.0),
                                                                child:
                                                                    ClipRRect(
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              0.0),
                                                                  child: Image
                                                                      .network(
                                                                    valueOrDefault<
                                                                        String>(
                                                                      _model
                                                                          .otherplate
                                                                          .elementAtOrNull(
                                                                              gridIndex),
                                                                      'https://www.piugame.com/l_img/grade/ss.png',
                                                                    ),
                                                                    width: 16.0,
                                                                    height:
                                                                        12.0,
                                                                    fit: BoxFit
                                                                        .fitWidth,
                                                                    alignment:
                                                                        Alignment(
                                                                            1.0,
                                                                            0.0),
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
                                                Divider(
                                                  height: 6.0,
                                                  color: Color(0xFF57636C),
                                                ),
                                                Align(
                                                  alignment:
                                                      AlignmentDirectional(
                                                          -1.0, 0.0),
                                                  child: Text(
                                                    valueOrDefault<String>(
                                                      _model.othersong
                                                          .elementAtOrNull(
                                                              gridIndex),
                                                      '[SONG]',
                                                    ).maybeHandleOverflow(
                                                      maxChars: 20,
                                                    ),
                                                    textAlign: TextAlign.start,
                                                    maxLines: 1,
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              'NAVER NANUM',
                                                          color: Colors.white,
                                                          fontSize: 6.0,
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.normal,
                                                        ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          );
                                        },
                                      );
                                    },
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                10.0, 4.0, 8.0, 0.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Align(
                                  alignment: AlignmentDirectional(1.0, 1.0),
                                  child: Text(
                                    'Generated on :',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          font: GoogleFonts.signikaNegative(
                                            fontWeight: FontWeight.w600,
                                            fontStyle:
                                                FlutterFlowTheme.of(context)
                                                    .bodyMedium
                                                    .fontStyle,
                                          ),
                                          color: Colors.white,
                                          fontSize: 12.0,
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.w600,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMedium
                                                  .fontStyle,
                                        ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      8.0, 0.0, 0.0, 0.0),
                                  child: Text(
                                    valueOrDefault<String>(
                                      dateTimeFormat("yyyy / MM / dd",
                                          getCurrentTimestamp),
                                      '0/00/0000',
                                    ),
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          font: GoogleFonts.signikaNegative(
                                            fontWeight: FontWeight.w600,
                                            fontStyle:
                                                FlutterFlowTheme.of(context)
                                                    .bodyMedium
                                                    .fontStyle,
                                          ),
                                          color: Colors.white,
                                          fontSize: 12.0,
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.w600,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMedium
                                                  .fontStyle,
                                        ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              if (valueOrDefault<bool>(
                _model.isLoad! ? true : false,
                true,
              ))
                Container(
                  width: MediaQuery.sizeOf(context).width * 1.0,
                  height: MediaQuery.sizeOf(context).height * 1.0,
                  decoration: BoxDecoration(
                    color: Colors.white,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.replay,
                        color: FlutterFlowTheme.of(context).primaryText,
                        size: 72.0,
                      ).animateOnPageLoad(
                          animationsMap['iconOnPageLoadAnimation']!),
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 2.0, 0.0, 0.0),
                        child: Text(
                          'LOADING...',
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    font: GoogleFonts.ubuntu(
                                      fontWeight: FontWeight.bold,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontStyle,
                                    ),
                                    color: Color(0xFF1A1A2E),
                                    fontSize: 30.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.bold,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .fontStyle,
                                  ),
                        ),
                      ),
                    ],
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
