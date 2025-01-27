import '/backend/api_requests/api_calls.dart';
import '/components/warning404_widget.dart';
import '/components/warning429_widget.dart';
import '/components/warning500_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'setting_bar_model.dart';
export 'setting_bar_model.dart';

class SettingBarWidget extends StatefulWidget {
  const SettingBarWidget({super.key});

  @override
  State<SettingBarWidget> createState() => _SettingBarWidgetState();
}

class _SettingBarWidgetState extends State<SettingBarWidget> {
  late SettingBarModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SettingBarModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Container(
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
              padding: EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 40.0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 20.0, 0.0),
                    child: Text(
                      'MENU',
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Ubuntu',
                            color: Colors.white,
                            fontSize: 16.0,
                            letterSpacing: 0.0,
                            fontWeight: FontWeight.w600,
                          ),
                    ),
                  ),
                  Align(
                    alignment: AlignmentDirectional(0.0, 0.0),
                    child: Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 12.0, 0.0),
                      child: Icon(
                        Icons.settings_sharp,
                        color: Colors.white,
                        size: 24.0,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Align(
              alignment: AlignmentDirectional(0.0, 0.0),
              child: Container(
                width: MediaQuery.sizeOf(context).width * 0.8,
                height: 80.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(24.0),
                  border: Border.all(
                    color: Colors.white,
                    width: 3.0,
                  ),
                ),
                child: Align(
                  alignment: AlignmentDirectional(0.0, 0.0),
                  child: InkWell(
                    splashColor: Colors.transparent,
                    focusColor: Colors.transparent,
                    hoverColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onTap: () async {
                      context.goNamed('Login_Page');
                    },
                    child: Text(
                      'Log out',
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Ubuntu',
                            color: Colors.white,
                            fontSize: 24.0,
                            letterSpacing: 0.0,
                            fontWeight: FontWeight.bold,
                          ),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0.0, 15.0, 0.0, 0.0),
              child: Container(
                width: MediaQuery.sizeOf(context).width * 0.8,
                height: 150.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(24.0),
                  border: Border.all(
                    color: Colors.white,
                    width: 3.0,
                  ),
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      'Refresh Data',
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Ubuntu',
                            color: Colors.white,
                            fontSize: 24.0,
                            letterSpacing: 0.0,
                            fontWeight: FontWeight.bold,
                          ),
                    ),
                    Align(
                      alignment: AlignmentDirectional(1.0, 0.0),
                      child: Builder(
                        builder: (context) => Padding(
                          padding: EdgeInsets.all(16.0),
                          child: FlutterFlowIconButton(
                            borderColor: Colors.transparent,
                            borderRadius: 8.0,
                            buttonSize: 50.0,
                            fillColor: Color(0x7F57636C),
                            icon: Icon(
                              Icons.replay_rounded,
                              color: FlutterFlowTheme.of(context).info,
                              size: 24.0,
                            ),
                            showLoadingIndicator: true,
                            onPressed: () async {
                              var _shouldSetState = false;
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
                                FFAppState().PlayerName =
                                    FetchUserDataCall.playerName(
                                  (_model.refreshDATA?.jsonBody ?? ''),
                                )!;
                                FFAppState().PlayerAvatar =
                                    FetchUserDataCall.playerAvatar(
                                  (_model.refreshDATA?.jsonBody ?? ''),
                                )!;
                                FFAppState().HomeRating =
                                    FetchUserDataCall.ratingList(
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
                                FFAppState().PumpbBG =
                                    FetchUserDataCall.pumpbBG(
                                  (_model.refreshDATA?.jsonBody ?? ''),
                                )!
                                        .toList()
                                        .cast<String>();
                                // RecentPage Update
                                FFAppState().RecentSong =
                                    FetchUserDataCall.recentSong(
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
                                FFAppState().RecentGood =
                                    FetchUserDataCall.recentGood(
                                  (_model.refreshDATA?.jsonBody ?? ''),
                                )!
                                        .toList()
                                        .cast<String>();
                                FFAppState().RecentBad =
                                    FetchUserDataCall.recentBad(
                                  (_model.refreshDATA?.jsonBody ?? ''),
                                )!
                                        .toList()
                                        .cast<String>();
                                FFAppState().RecentMiss =
                                    FetchUserDataCall.recentMiss(
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
                                FFAppState().RecentBG =
                                    FetchUserDataCall.recentBG(
                                  (_model.refreshDATA?.jsonBody ?? ''),
                                )!
                                        .toList()
                                        .cast<String>();

                                context.pushNamed(
                                  'HomePage',
                                  extra: <String, dynamic>{
                                    kTransitionInfoKey: TransitionInfo(
                                      hasTransition: true,
                                      transitionType: PageTransitionType.fade,
                                      duration: Duration(milliseconds: 2),
                                    ),
                                  },
                                );
                              } else {
                                if ((_model.refreshDATA?.statusCode ?? 200)
                                        .toString() ==
                                    '500') {
                                  await showDialog(
                                    barrierColor: Color(0x5857636C),
                                    context: context,
                                    builder: (dialogContext) {
                                      return Dialog(
                                        elevation: 0,
                                        insetPadding: EdgeInsets.zero,
                                        backgroundColor: Colors.transparent,
                                        alignment:
                                            AlignmentDirectional(0.0, 0.0)
                                                .resolve(
                                                    Directionality.of(context)),
                                        child: Container(
                                          height: 100.0,
                                          width: 300.0,
                                          child: Warning500Widget(),
                                        ),
                                      );
                                    },
                                  );
                                } else if ((_model.refreshDATA?.statusCode ??
                                            200)
                                        .toString() ==
                                    '404') {
                                  await showDialog(
                                    barrierColor: Color(0x5857636C),
                                    context: context,
                                    builder: (dialogContext) {
                                      return Dialog(
                                        elevation: 0,
                                        insetPadding: EdgeInsets.zero,
                                        backgroundColor: Colors.transparent,
                                        alignment:
                                            AlignmentDirectional(0.0, 0.0)
                                                .resolve(
                                                    Directionality.of(context)),
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
                                        alignment:
                                            AlignmentDirectional(0.0, 0.0)
                                                .resolve(
                                                    Directionality.of(context)),
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
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ].divide(SizedBox(height: 36.0)),
        ),
      ),
    );
  }
}
