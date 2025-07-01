import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/message_box/warning404/warning404_widget.dart';
import '/message_box/warning429/warning429_widget.dart';
import '/message_box/warning500/warning500_widget.dart';
import '/sub_component/calculator_u_i/calculator_u_i_widget.dart';
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'setting_bar_model.dart';
export 'setting_bar_model.dart';

class SettingBarWidget extends StatefulWidget {
  const SettingBarWidget({super.key});

  @override
  State<SettingBarWidget> createState() => _SettingBarWidgetState();
}

class _SettingBarWidgetState extends State<SettingBarWidget>
    with TickerProviderStateMixin {
  late SettingBarModel _model;

  final animationsMap = <String, AnimationInfo>{};

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SettingBarModel());

    animationsMap.addAll({
      'iconOnPageLoadAnimation': AnimationInfo(
        loop: true,
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          RotateEffect(
            curve: Curves.easeInOut,
            delay: 400.0.ms,
            duration: 1300.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
    });
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Stack(
      children: [
        Container(
          width: MediaQuery.sizeOf(context).width * 1.0,
          height: MediaQuery.sizeOf(context).height * 1.0,
          decoration: BoxDecoration(
            color: Color(0xFF1A1A2E),
          ),
          alignment: AlignmentDirectional(0.0, 0.0),
          child: Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0.0, 15.0, 0.0, 15.0),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Padding(
                  padding:
                      EdgeInsetsDirectional.fromSTEB(12.0, 20.0, 12.0, 0.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 20.0, 0.0),
                        child: Text(
                          FFAppState().PlayerName,
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    font: GoogleFonts.ubuntu(
                                      fontWeight: FontWeight.bold,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontStyle,
                                    ),
                                    color: Colors.white,
                                    fontSize: 16.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.bold,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .fontStyle,
                                  ),
                        ),
                      ),
                      Align(
                        alignment: AlignmentDirectional(0.0, 0.0),
                        child: Icon(
                          Icons.settings_sharp,
                          color: Colors.white,
                          size: 24.0,
                        ),
                      ),
                    ],
                  ),
                ),
                Divider(
                  thickness: 3.0,
                  indent: 12.0,
                  endIndent: 12.0,
                  color: Colors.white,
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 48.0, 0.0, 0.0),
                  child: InkWell(
                    splashColor: Colors.transparent,
                    focusColor: Colors.transparent,
                    hoverColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onTap: () async {
                      context.goNamed(LoginPageWidget.routeName);
                    },
                    child: Container(
                      width: MediaQuery.sizeOf(context).width * 1.0,
                      decoration: BoxDecoration(),
                      alignment: AlignmentDirectional(0.0, 0.0),
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            16.0, 24.0, 12.0, 8.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Align(
                              alignment: AlignmentDirectional(0.0, 0.0),
                              child: Text(
                                'Log out',
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      font: GoogleFonts.ubuntu(
                                        fontWeight: FontWeight.bold,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .fontStyle,
                                      ),
                                      color: Colors.white,
                                      fontSize: 24.0,
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.bold,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontStyle,
                                    ),
                              ),
                            ),
                            Icon(
                              Icons.logout_outlined,
                              color: Colors.white,
                              size: 28.0,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Divider(
                  height: 24.0,
                  thickness: 3.0,
                  indent: 12.0,
                  endIndent: 12.0,
                  color: Color(0xFF57636C),
                ),
                Builder(
                  builder: (context) => InkWell(
                    splashColor: Colors.transparent,
                    focusColor: Colors.transparent,
                    hoverColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onTap: () async {
                      var _shouldSetState = false;
                      _model.isLoading = true;
                      safeSetState(() {});
                      _model.refreshDATA = await FetchUserDataCall.call(
                        username: FFAppState().userEmail,
                        password: FFAppState().userPw,
                      );

                      _shouldSetState = true;
                      if ((_model.refreshDATA?.succeeded ?? true)) {
                        // HomePage Update
                        FFAppState().PlayerTitle =
                            FetchUserDataCall.playerTitle(
                          (_model.refreshDATA?.jsonBody ?? ''),
                        )!;
                        FFAppState().PlayerName = FetchUserDataCall.playerName(
                          (_model.refreshDATA?.jsonBody ?? ''),
                        )!;
                        FFAppState().PlayerAvatar =
                            FetchUserDataCall.playerAvatar(
                          (_model.refreshDATA?.jsonBody ?? ''),
                        )!;
                        FFAppState().HomeRating = FetchUserDataCall.ratingList(
                          (_model.refreshDATA?.jsonBody ?? ''),
                        )!
                            .toList()
                            .cast<String>();
                        FFAppState().HomeClearData =
                            FetchUserDataCall.clearDataList(
                          (_model.refreshDATA?.jsonBody ?? ''),
                        )!
                                .toList()
                                .cast<String>();
                        FFAppState().HomeProgress =
                            FetchUserDataCall.progressList(
                          (_model.refreshDATA?.jsonBody ?? ''),
                        )!
                                .toList()
                                .cast<String>();
                        FFAppState().HomePercent =
                            FetchUserDataCall.progressDoubleList(
                          (_model.refreshDATA?.jsonBody ?? ''),
                        )!
                                .toList()
                                .cast<double>();
                        FFAppState().HomePG = FetchUserDataCall.pGList(
                          (_model.refreshDATA?.jsonBody ?? ''),
                        )!
                            .toList()
                            .cast<String>();
                        FFAppState().HomeUG = FetchUserDataCall.uGList(
                          (_model.refreshDATA?.jsonBody ?? ''),
                        )!
                            .toList()
                            .cast<String>();
                        FFAppState().HomeEG = FetchUserDataCall.eGList(
                          (_model.refreshDATA?.jsonBody ?? ''),
                        )!
                            .toList()
                            .cast<String>();
                        FFAppState().HomeSG = FetchUserDataCall.sGList(
                          (_model.refreshDATA?.jsonBody ?? ''),
                        )!
                            .toList()
                            .cast<String>();
                        FFAppState().HomeMG = FetchUserDataCall.mGList(
                          (_model.refreshDATA?.jsonBody ?? ''),
                        )!
                            .toList()
                            .cast<String>();
                        FFAppState().HomeTG = FetchUserDataCall.tGList(
                          (_model.refreshDATA?.jsonBody ?? ''),
                        )!
                            .toList()
                            .cast<String>();
                        FFAppState().HomeFG = FetchUserDataCall.fGList(
                          (_model.refreshDATA?.jsonBody ?? ''),
                        )!
                            .toList()
                            .cast<String>();
                        FFAppState().HomeRG = FetchUserDataCall.rGList(
                          (_model.refreshDATA?.jsonBody ?? ''),
                        )!
                            .toList()
                            .cast<String>();
                        // PumpbilityPage Update
                        FFAppState().PumbilityScore = formatNumber(
                          FetchUserDataCall.pumpbilityScore(
                            (_model.refreshDATA?.jsonBody ?? ''),
                          ),
                          formatType: FormatType.decimal,
                          decimalType: DecimalType.periodDecimal,
                        );
                        FFAppState().PumpbTitle =
                            FetchUserDataCall.pumpbilitySongList(
                          (_model.refreshDATA?.jsonBody ?? ''),
                        )!
                                .toList()
                                .cast<String>();
                        FFAppState().PumpbArtist =
                            FetchUserDataCall.pumpbilitySongTitle(
                          (_model.refreshDATA?.jsonBody ?? ''),
                        )!
                                .toList()
                                .cast<String>();
                        FFAppState().PumpbScore =
                            FetchUserDataCall.pumpbilitySongScore(
                          (_model.refreshDATA?.jsonBody ?? ''),
                        )!
                                .toList()
                                .cast<String>();
                        FFAppState().PumpbDate =
                            FetchUserDataCall.pumpbilityDate(
                          (_model.refreshDATA?.jsonBody ?? ''),
                        )!
                                .toList()
                                .cast<String>();
                        FFAppState().PumpbPlateurl =
                            FetchUserDataCall.pumpbilityPlate(
                          (_model.refreshDATA?.jsonBody ?? ''),
                        )!
                                .toList()
                                .cast<String>();
                        FFAppState().PumpbStepball1 =
                            FetchUserDataCall.pumpbilityStepball1(
                          (_model.refreshDATA?.jsonBody ?? ''),
                        )!
                                .toList()
                                .cast<String>();
                        FFAppState().PumpbStepball2 =
                            FetchUserDataCall.pumpbilityStepball2(
                          (_model.refreshDATA?.jsonBody ?? ''),
                        )!
                                .toList()
                                .cast<String>();
                        FFAppState().PumpbStepballText =
                            FetchUserDataCall.pumpbilitySteptext(
                          (_model.refreshDATA?.jsonBody ?? ''),
                        )!
                                .toList()
                                .cast<String>();
                        FFAppState().PumpbStepballBG =
                            FetchUserDataCall.pumpbilityStepballType(
                          (_model.refreshDATA?.jsonBody ?? ''),
                        )!
                                .toList()
                                .cast<String>();
                        FFAppState().PumpbScoreInt =
                            FetchUserDataCall.pumpbilityScore(
                          (_model.refreshDATA?.jsonBody ?? ''),
                        )!;
                        FFAppState().PumpbBG = FetchUserDataCall.pumpbBG(
                          (_model.refreshDATA?.jsonBody ?? ''),
                        )!
                            .toList()
                            .cast<String>();
                        // RecentPage Update
                        FFAppState().RecentSong = FetchUserDataCall.recentSong(
                          (_model.refreshDATA?.jsonBody ?? ''),
                        )!
                            .toList()
                            .cast<String>();
                        FFAppState().RecentScore =
                            FetchUserDataCall.recentScore(
                          (_model.refreshDATA?.jsonBody ?? ''),
                        )!
                                .toList()
                                .cast<String>();
                        FFAppState().RecentStepballURL =
                            FetchUserDataCall.recentStepballUrl(
                          (_model.refreshDATA?.jsonBody ?? ''),
                        )!
                                .toList()
                                .cast<String>();
                        FFAppState().RecentStepballType =
                            FetchUserDataCall.recentStepballType(
                          (_model.refreshDATA?.jsonBody ?? ''),
                        )!
                                .toList()
                                .cast<String>();
                        FFAppState().RecentBallText1 =
                            FetchUserDataCall.recentStepballT1(
                          (_model.refreshDATA?.jsonBody ?? ''),
                        )!
                                .toList()
                                .cast<String>();
                        FFAppState().RecentBallText2 =
                            FetchUserDataCall.recentStepballT2(
                          (_model.refreshDATA?.jsonBody ?? ''),
                        )!
                                .toList()
                                .cast<String>();
                        FFAppState().RecentPerfect =
                            FetchUserDataCall.recentPerfect(
                          (_model.refreshDATA?.jsonBody ?? ''),
                        )!
                                .toList()
                                .cast<String>();
                        FFAppState().RecentGreat =
                            FetchUserDataCall.recentGreat(
                          (_model.refreshDATA?.jsonBody ?? ''),
                        )!
                                .toList()
                                .cast<String>();
                        FFAppState().RecentGood = FetchUserDataCall.recentGood(
                          (_model.refreshDATA?.jsonBody ?? ''),
                        )!
                            .toList()
                            .cast<String>();
                        FFAppState().RecentBad = FetchUserDataCall.recentBad(
                          (_model.refreshDATA?.jsonBody ?? ''),
                        )!
                            .toList()
                            .cast<String>();
                        FFAppState().RecentMiss = FetchUserDataCall.recentMiss(
                          (_model.refreshDATA?.jsonBody ?? ''),
                        )!
                            .toList()
                            .cast<String>();
                        FFAppState().RecentPlate =
                            FetchUserDataCall.recentPlate(
                          (_model.refreshDATA?.jsonBody ?? ''),
                        )!
                                .toList()
                                .cast<String>();
                        FFAppState().RecentBG = FetchUserDataCall.recentBG(
                          (_model.refreshDATA?.jsonBody ?? ''),
                        )!
                            .toList()
                            .cast<String>();

                        context.pushNamed(
                          HomePageWidget.routeName,
                          extra: <String, dynamic>{
                            kTransitionInfoKey: TransitionInfo(
                              hasTransition: true,
                              transitionType: PageTransitionType.fade,
                              duration: Duration(milliseconds: 2),
                            ),
                          },
                        );
                      } else {
                        if ((_model.refreshDATA?.statusCode ?? 200) == 500) {
                          await showDialog(
                            barrierColor: Color(0x5857636C),
                            context: context,
                            builder: (dialogContext) {
                              return Dialog(
                                elevation: 0,
                                insetPadding: EdgeInsets.zero,
                                backgroundColor: Colors.transparent,
                                alignment: AlignmentDirectional(0.0, 0.0)
                                    .resolve(Directionality.of(context)),
                                child: Container(
                                  height: 100.0,
                                  width: 300.0,
                                  child: Warning500Widget(),
                                ),
                              );
                            },
                          );
                        } else if ((_model.refreshDATA?.statusCode ?? 200) ==
                            404) {
                          await showDialog(
                            barrierColor: Color(0x5857636C),
                            context: context,
                            builder: (dialogContext) {
                              return Dialog(
                                elevation: 0,
                                insetPadding: EdgeInsets.zero,
                                backgroundColor: Colors.transparent,
                                alignment: AlignmentDirectional(0.0, 0.0)
                                    .resolve(Directionality.of(context)),
                                child: Container(
                                  height: 100.0,
                                  width: 300.0,
                                  child: Warning404Widget(),
                                ),
                              );
                            },
                          );
                        } else {
                          await showDialog(
                            barrierColor: Color(0x5857636C),
                            context: context,
                            builder: (dialogContext) {
                              return Dialog(
                                elevation: 0,
                                insetPadding: EdgeInsets.zero,
                                backgroundColor: Colors.transparent,
                                alignment: AlignmentDirectional(0.0, 0.0)
                                    .resolve(Directionality.of(context)),
                                child: Container(
                                  height: 100.0,
                                  width: 300.0,
                                  child: Warning429Widget(),
                                ),
                              );
                            },
                          );
                        }

                        if (_shouldSetState) safeSetState(() {});
                        return;
                      }

                      if (_shouldSetState) safeSetState(() {});
                    },
                    child: Container(
                      width: MediaQuery.sizeOf(context).width * 1.0,
                      decoration: BoxDecoration(),
                      alignment: AlignmentDirectional(0.0, 0.0),
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            16.0, 8.0, 12.0, 8.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Refresh Data',
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    font: GoogleFonts.ubuntu(
                                      fontWeight: FontWeight.bold,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontStyle,
                                    ),
                                    color: Colors.white,
                                    fontSize: 24.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.bold,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .fontStyle,
                                  ),
                            ),
                            Icon(
                              Icons.refresh_outlined,
                              color: Colors.white,
                              size: 28.0,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Divider(
                  height: 24.0,
                  thickness: 3.0,
                  indent: 12.0,
                  endIndent: 12.0,
                  color: Color(0xFF57636C),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 24.0),
                  child: InkWell(
                    splashColor: Colors.transparent,
                    focusColor: Colors.transparent,
                    hoverColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onTap: () async {
                      context.pushNamed(DashboardPageWidget.routeName);
                    },
                    child: Container(
                      width: MediaQuery.sizeOf(context).width * 1.0,
                      decoration: BoxDecoration(),
                      alignment: AlignmentDirectional(0.0, 0.0),
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            16.0, 8.0, 12.0, 8.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Align(
                              alignment: AlignmentDirectional(0.0, 0.0),
                              child: Text(
                                'Create Dashboard',
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      font: GoogleFonts.ubuntu(
                                        fontWeight: FontWeight.bold,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .fontStyle,
                                      ),
                                      color: Colors.white,
                                      fontSize: 24.0,
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.bold,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontStyle,
                                    ),
                              ),
                            ),
                            Icon(
                              Icons.format_paint_outlined,
                              color: Colors.white,
                              size: 28.0,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Divider(
                  height: 24.0,
                  thickness: 3.0,
                  indent: 12.0,
                  endIndent: 12.0,
                  color: Colors.white,
                ),
                Builder(
                  builder: (context) => InkWell(
                    splashColor: Colors.transparent,
                    focusColor: Colors.transparent,
                    hoverColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onTap: () async {
                      await showDialog(
                        context: context,
                        builder: (dialogContext) {
                          return Dialog(
                            elevation: 0,
                            insetPadding: EdgeInsets.zero,
                            backgroundColor: Colors.transparent,
                            alignment: AlignmentDirectional(0.0, 1.0)
                                .resolve(Directionality.of(context)),
                            child: Container(
                              height: 400.0,
                              child: CalculatorUIWidget(),
                            ),
                          );
                        },
                      );
                    },
                    child: Container(
                      width: MediaQuery.sizeOf(context).width * 1.0,
                      decoration: BoxDecoration(),
                      alignment: AlignmentDirectional(0.0, 0.0),
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            16.0, 8.0, 12.0, 8.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Pumbility Calculator',
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    font: GoogleFonts.ubuntu(
                                      fontWeight: FontWeight.bold,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontStyle,
                                    ),
                                    color: Colors.white,
                                    fontSize: 20.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.bold,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .fontStyle,
                                  ),
                            ),
                            Icon(
                              Icons.calculate_rounded,
                              color: Colors.white,
                              size: 28.0,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ].divide(SizedBox(height: 12.0)),
            ),
          ),
        ),
        if (_model.isLoading ? true : false)
          Opacity(
            opacity: 0.2,
            child: AnimatedContainer(
              duration: Duration(milliseconds: 1200),
              curve: Curves.easeIn,
              width: MediaQuery.sizeOf(context).width * 1.0,
              height: MediaQuery.sizeOf(context).height * 1.0,
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).secondaryBackground,
              ),
              child: Icon(
                Icons.refresh,
                color: Color(0xFF14181B),
                size: 60.0,
              ).animateOnPageLoad(animationsMap['iconOnPageLoadAnimation']!),
            ),
          ),
      ],
    );
  }
}
