import '/component/function/setting_bar/setting_bar_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'pumbility_page_model.dart';
export 'pumbility_page_model.dart';

class PumbilityPageWidget extends StatefulWidget {
  const PumbilityPageWidget({super.key});

  @override
  State<PumbilityPageWidget> createState() => _PumbilityPageWidgetState();
}

class _PumbilityPageWidgetState extends State<PumbilityPageWidget> {
  late PumbilityPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PumbilityPageModel());
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
                context.pushNamed('HomePage');
              },
              child: Text(
                'PIU Checker',
                style: FlutterFlowTheme.of(context).headlineMedium.override(
                      fontFamily: 'Ubuntu',
                      color: Colors.white,
                      fontSize: 22.0,
                      letterSpacing: 0.0,
                      fontWeight: FontWeight.w800,
                    ),
              ),
            ),
          ),
          actions: [
            FlutterFlowIconButton(
              borderRadius: 8.0,
              buttonSize: 40.0,
              icon: Icon(
                Icons.settings_sharp,
                color: Colors.white,
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
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  width: MediaQuery.sizeOf(context).width * 1.0,
                  height: 100.0,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).secondaryText,
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: Image.network(
                        'https://www.piugame.com/l_img/bg1.png',
                      ).image,
                    ),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Padding(
                        padding: EdgeInsets.all(12.0),
                        child: Container(
                          width: 100.0,
                          height: 100.0,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              fit: BoxFit.contain,
                              image: CachedNetworkImageProvider(
                                FFAppState().PlayerAvatar,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 0.0, 0.0),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Align(
                              alignment: AlignmentDirectional(-1.0, 0.0),
                              child: Text(
                                FFAppState().PlayerTitle,
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Ubuntu',
                                      color: Colors.white,
                                      fontSize: 18.0,
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.bold,
                                    ),
                              ),
                            ),
                            Align(
                              alignment: AlignmentDirectional(-1.0, 0.0),
                              child: Text(
                                FFAppState().PlayerName,
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Ubuntu',
                                      color: Colors.white,
                                      fontSize: 20.0,
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.w800,
                                    ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: MediaQuery.sizeOf(context).width * 1.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(0.0),
                      bottomRight: Radius.circular(0.0),
                      topLeft: Radius.circular(0.0),
                      topRight: Radius.circular(0.0),
                    ),
                  ),
                  child: Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(24.0, 16.0, 24.0, 16.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Container(
                          width: MediaQuery.sizeOf(context).width * 1.0,
                          height: 120.0,
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              colors: [
                                valueOrDefault<Color>(
                                  () {
                                    if (FFAppState().PumpbScoreInt < 10000) {
                                      return Color(0xFF2E8B57);
                                    } else if (FFAppState().PumpbScoreInt <
                                        20000) {
                                      return Color(0xFFFFA500);
                                    } else if (FFAppState().PumpbScoreInt <
                                        30000) {
                                      return Color(0xFFC10202);
                                    } else if (FFAppState().PumpbScoreInt <
                                        40000) {
                                      return Color(0xFFCC9966);
                                    } else if (FFAppState().PumpbScoreInt <
                                        50000) {
                                      return Color(0xFFD9D8D8);
                                    } else if (FFAppState().PumpbScoreInt <
                                        70000) {
                                      return Color(0xFFFFD700);
                                    } else {
                                      return Color(0xFF99CCCC);
                                    }
                                  }(),
                                  Color(0xFF2E8B57),
                                ),
                                () {
                                  if (FFAppState().PumpbScoreInt < 10000) {
                                    return Color(0xFF2E8B57);
                                  } else if (FFAppState().PumpbScoreInt <
                                      20000) {
                                    return Color(0xFFFFA500);
                                  } else if (FFAppState().PumpbScoreInt <
                                      30000) {
                                    return Color(0xFFC10202);
                                  } else if (FFAppState().PumpbScoreInt <
                                      40000) {
                                    return Color(0xFF663333);
                                  } else if (FFAppState().PumpbScoreInt <
                                      50000) {
                                    return Color(0xFF666666);
                                  } else if (FFAppState().PumpbScoreInt <
                                      70000) {
                                    return Color(0xFF996633);
                                  } else {
                                    return Color(0xFF336699);
                                  }
                                }()
                              ],
                              stops: [0.0, 1.0],
                              begin: AlignmentDirectional(0.0, -1.0),
                              end: AlignmentDirectional(0, 1.0),
                            ),
                            borderRadius: BorderRadius.circular(14.0),
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                'PUMBILITY',
                                style: FlutterFlowTheme.of(context)
                                    .headlineMedium
                                    .override(
                                      fontFamily: 'Ubuntu',
                                      color: Colors.white,
                                      fontSize: 26.0,
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.bold,
                                    ),
                              ),
                              Text(
                                valueOrDefault<String>(
                                  FFAppState().PumbilityScore,
                                  '00,000',
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .displayLarge
                                    .override(
                                      fontFamily: 'Readex Pro',
                                      color: Colors.white,
                                      fontSize: 48.0,
                                      letterSpacing: 1.0,
                                      fontWeight: FontWeight.bold,
                                    ),
                              ),
                            ],
                          ),
                        ),
                        Builder(
                          builder: (context) {
                            final songList =
                                _model.scoreNumber.toList().take(50).toList();

                            return ListView.separated(
                              padding: EdgeInsets.zero,
                              primary: false,
                              shrinkWrap: true,
                              scrollDirection: Axis.vertical,
                              itemCount: songList.length,
                              separatorBuilder: (_, __) =>
                                  SizedBox(height: 20.0),
                              itemBuilder: (context, songListIndex) {
                                final songListItem = songList[songListIndex];
                                return Material(
                                  color: Colors.transparent,
                                  elevation: 1.0,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(12.0),
                                  ),
                                  child: Container(
                                    width:
                                        MediaQuery.sizeOf(context).width * 1.0,
                                    decoration: BoxDecoration(
                                      color: Color(0xFF1A1A2E),
                                      borderRadius: BorderRadius.circular(12.0),
                                      border: Border.all(
                                        color: Colors.white,
                                        width: 2.0,
                                      ),
                                    ),
                                    child: Padding(
                                      padding: EdgeInsets.all(12.0),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 0.0, 0.0, 6.0),
                                            child: Text(
                                              valueOrDefault<String>(
                                                _model.scoreNumber
                                                    .elementAtOrNull(
                                                        songListIndex)
                                                    ?.toString(),
                                                '1',
                                              ),
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Ubuntu',
                                                        fontSize: 24.0,
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.w800,
                                                      ),
                                            ),
                                          ),
                                          Container(
                                            width: MediaQuery.sizeOf(context)
                                                    .width *
                                                0.775,
                                            height: 170.0,
                                            decoration: BoxDecoration(
                                              color: Colors.black,
                                              image: DecorationImage(
                                                fit: BoxFit.cover,
                                                image: Image.network(
                                                  FFAppState()
                                                      .PumpbBG
                                                      .elementAtOrNull(
                                                          songListIndex)!,
                                                ).image,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(10.0),
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    12.0, 12.0, 0.0, 0.0),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0.0,
                                                                  4.0,
                                                                  0.0,
                                                                  4.0),
                                                      child: Text(
                                                        valueOrDefault<String>(
                                                          FFAppState()
                                                              .PumpbTitle
                                                              .elementAtOrNull(
                                                                  songListIndex),
                                                          '.name',
                                                        ).maybeHandleOverflow(
                                                          maxChars: 20,
                                                          replacement: '…',
                                                        ),
                                                        textAlign:
                                                            TextAlign.start,
                                                        maxLines: 2,
                                                        style: FlutterFlowTheme
                                                                .of(context)
                                                            .titleMedium
                                                            .override(
                                                              fontFamily:
                                                                  'NAVER NANUM',
                                                              color:
                                                                  Colors.white,
                                                              fontSize: 18.0,
                                                              letterSpacing:
                                                                  0.0,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .normal,
                                                              useGoogleFonts:
                                                                  false,
                                                            ),
                                                      ),
                                                    ),
                                                    Text(
                                                      valueOrDefault<String>(
                                                        FFAppState()
                                                            .PumpbArtist
                                                            .elementAtOrNull(
                                                                songListIndex),
                                                        '.artist',
                                                      ),
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .bodyMedium
                                                          .override(
                                                            fontFamily:
                                                                'NAVER NANUM',
                                                            color: Color(
                                                                0xFF57636C),
                                                            fontSize: 12.0,
                                                            letterSpacing: 0.0,
                                                            useGoogleFonts:
                                                                false,
                                                          ),
                                                    ),
                                                  ].divide(
                                                      SizedBox(height: 4.0)),
                                                ),
                                                Container(
                                                  width: 60.0,
                                                  height: 50.0,
                                                  decoration: BoxDecoration(
                                                    image: DecorationImage(
                                                      fit: BoxFit.contain,
                                                      image: Image.network(
                                                        valueOrDefault<String>(
                                                          FFAppState()
                                                              .PumpbPlateurl
                                                              .elementAtOrNull(
                                                                  songListIndex),
                                                          '.plate',
                                                        ),
                                                      ).image,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            12.0),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    4.0, 0.0, 0.0, 0.0),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Container(
                                                  width: 100.0,
                                                  height: 65.0,
                                                  decoration: BoxDecoration(),
                                                  child: Stack(
                                                    children: [
                                                      if (FFAppState()
                                                              .PumpbStepballBG
                                                              .elementAtOrNull(
                                                                  songListIndex) ==
                                                          'd')
                                                        ClipRRect(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      8.0),
                                                          child: Image.asset(
                                                            'assets/images/d_bg.png',
                                                            width: MediaQuery
                                                                        .sizeOf(
                                                                            context)
                                                                    .width *
                                                                1.0,
                                                            height: MediaQuery
                                                                        .sizeOf(
                                                                            context)
                                                                    .height *
                                                                1.0,
                                                            fit: BoxFit.contain,
                                                          ),
                                                        ),
                                                      if (FFAppState()
                                                              .PumpbStepballBG
                                                              .elementAtOrNull(
                                                                  songListIndex) ==
                                                          's')
                                                        ClipRRect(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      8.0),
                                                          child: Image.asset(
                                                            'assets/images/s_bg.png',
                                                            width: MediaQuery
                                                                        .sizeOf(
                                                                            context)
                                                                    .width *
                                                                1.0,
                                                            height: MediaQuery
                                                                        .sizeOf(
                                                                            context)
                                                                    .height *
                                                                1.0,
                                                            fit: BoxFit.contain,
                                                          ),
                                                        ),
                                                      Column(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        children: [
                                                          Align(
                                                            alignment:
                                                                AlignmentDirectional(
                                                                    0.0, 1.0),
                                                            child: Container(
                                                              width: 100.0,
                                                              height: 20.0,
                                                              decoration:
                                                                  BoxDecoration(
                                                                image:
                                                                    DecorationImage(
                                                                  fit: BoxFit
                                                                      .fitWidth,
                                                                  alignment:
                                                                      AlignmentDirectional(
                                                                          0.0,
                                                                          1.0),
                                                                  image: Image
                                                                      .network(
                                                                    FFAppState()
                                                                        .PumpbStepballText
                                                                        .elementAtOrNull(
                                                                            songListIndex)!,
                                                                  ).image,
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                          Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .center,
                                                            children: [
                                                              Container(
                                                                width: 40.0,
                                                                height: 40.0,
                                                                decoration:
                                                                    BoxDecoration(
                                                                  image:
                                                                      DecorationImage(
                                                                    fit: BoxFit
                                                                        .contain,
                                                                    image: Image
                                                                        .network(
                                                                      FFAppState()
                                                                          .PumpbStepball1
                                                                          .elementAtOrNull(
                                                                              songListIndex)!,
                                                                    ).image,
                                                                  ),
                                                                ),
                                                              ),
                                                              Container(
                                                                width: 40.0,
                                                                height: 40.0,
                                                                decoration:
                                                                    BoxDecoration(
                                                                  image:
                                                                      DecorationImage(
                                                                    fit: BoxFit
                                                                        .contain,
                                                                    image: Image
                                                                        .network(
                                                                      FFAppState()
                                                                          .PumpbStepball2
                                                                          .elementAtOrNull(
                                                                              songListIndex)!,
                                                                    ).image,
                                                                  ),
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ],
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 0.0, 4.0, 0.0),
                                                  child: Text(
                                                    valueOrDefault<String>(
                                                      FFAppState()
                                                          .PumpbScore
                                                          .elementAtOrNull(
                                                              songListIndex),
                                                      '.score',
                                                    ),
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodySmall
                                                        .override(
                                                          fontFamily: 'Ubuntu',
                                                          color: Colors.white,
                                                          fontSize: 24.0,
                                                          letterSpacing: 2.0,
                                                          fontWeight:
                                                              FontWeight.w900,
                                                        ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Align(
                                            alignment:
                                                AlignmentDirectional(1.0, 1.0),
                                            child: Text(
                                              valueOrDefault<String>(
                                                FFAppState()
                                                    .PumpbDate
                                                    .elementAtOrNull(
                                                        songListIndex),
                                                '.Date',
                                              ),
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodySmall
                                                      .override(
                                                        fontFamily: 'Inter',
                                                        color:
                                                            Color(0xFF57636C),
                                                        fontSize: 12.0,
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.normal,
                                                      ),
                                            ),
                                          ),
                                        ].divide(SizedBox(height: 8.0)),
                                      ),
                                    ),
                                  ),
                                );
                              },
                            );
                          },
                        ),
                      ].divide(SizedBox(height: 16.0)),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
