import '/backend/api_requests/api_calls.dart';
import '/components/warning404_widget.dart';
import '/components/warning429_widget.dart';
import '/components/warning500_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:math';
import 'dart:ui';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'login_page_model.dart';
export 'login_page_model.dart';

class LoginPageWidget extends StatefulWidget {
  const LoginPageWidget({super.key});

  @override
  State<LoginPageWidget> createState() => _LoginPageWidgetState();
}

class _LoginPageWidgetState extends State<LoginPageWidget>
    with TickerProviderStateMixin {
  late LoginPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = <String, AnimationInfo>{};

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => LoginPageModel());

    _model.emailAddressTextController ??=
        TextEditingController(text: FFAppState().userEmail);
    _model.emailAddressFocusNode ??= FocusNode();

    _model.passwordTextController ??=
        TextEditingController(text: FFAppState().userPw);
    _model.passwordFocusNode ??= FocusNode();

    animationsMap.addAll({
      'containerOnPageLoadAnimation': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          VisibilityEffect(duration: 1.ms),
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 300.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          ScaleEffect(
            curve: Curves.bounceOut,
            delay: 0.0.ms,
            duration: 300.0.ms,
            begin: Offset(0.6, 1.0),
            end: Offset(1.0, 1.0),
          ),
        ],
      ),
      'textOnPageLoadAnimation1': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          VisibilityEffect(duration: 100.ms),
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 100.0.ms,
            duration: 400.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 100.0.ms,
            duration: 400.0.ms,
            begin: Offset(0.0, 30.0),
            end: Offset(0.0, 0.0),
          ),
        ],
      ),
      'textOnPageLoadAnimation2': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          VisibilityEffect(duration: 150.ms),
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 150.0.ms,
            duration: 400.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 150.0.ms,
            duration: 400.0.ms,
            begin: Offset(0.0, 30.0),
            end: Offset(0.0, 0.0),
          ),
        ],
      ),
      'columnOnPageLoadAnimation': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 200.0.ms,
            duration: 400.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 200.0.ms,
            duration: 400.0.ms,
            begin: Offset(0.0, 60.0),
            end: Offset(0.0, 0.0),
          ),
          TiltEffect(
            curve: Curves.easeInOut,
            delay: 200.0.ms,
            duration: 400.0.ms,
            begin: Offset(-0.349, 0),
            end: Offset(0, 0),
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
        backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
        body: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Container(
              width: double.infinity,
              height: 300.0,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    FlutterFlowTheme.of(context).primary,
                    FlutterFlowTheme.of(context).error,
                    FlutterFlowTheme.of(context).tertiary
                  ],
                  stops: [0.0, 0.5, 1.0],
                  begin: AlignmentDirectional(-1.0, -1.0),
                  end: AlignmentDirectional(1.0, 1.0),
                ),
              ),
              child: Container(
                width: 100.0,
                height: 100.0,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Color(0x00FFFFFF),
                      FlutterFlowTheme.of(context).secondaryBackground
                    ],
                    stops: [0.0, 1.0],
                    begin: AlignmentDirectional(0.0, -1.0),
                    end: AlignmentDirectional(0, 1.0),
                  ),
                ),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: 250.0,
                        height: 120.0,
                        decoration: BoxDecoration(
                          color: Colors.transparent,
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: Image.network(
                              'https://www.piugame.com/l_img/logo.png',
                            ).image,
                          ),
                          borderRadius: BorderRadius.circular(16.0),
                        ),
                      ).animateOnPageLoad(
                          animationsMap['containerOnPageLoadAnimation']!),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            0.0, 12.0, 0.0, 12.0),
                        child: Text(
                          'PIU-Checker',
                          style: FlutterFlowTheme.of(context)
                              .headlineSmall
                              .override(
                                fontFamily: 'Ubuntu',
                                fontSize: 28.0,
                                letterSpacing: 0.0,
                                fontWeight: FontWeight.bold,
                              ),
                        ).animateOnPageLoad(
                            animationsMap['textOnPageLoadAnimation1']!),
                      ),
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 8.0, 0.0, 0.0),
                        child: Text(
                          'Use the piugame account below to log in',
                          style:
                              FlutterFlowTheme.of(context).labelMedium.override(
                                    fontFamily: 'Ubuntu',
                                    fontSize: 15.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.w500,
                                  ),
                        ).animateOnPageLoad(
                            animationsMap['textOnPageLoadAnimation2']!),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Align(
              alignment: AlignmentDirectional(0.0, 0.0),
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(16.0, 75.0, 16.0, 16.0),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 16.0),
                      child: Container(
                        width: double.infinity,
                        child: TextFormField(
                          controller: _model.emailAddressTextController,
                          focusNode: _model.emailAddressFocusNode,
                          onChanged: (_) => EasyDebounce.debounce(
                            '_model.emailAddressTextController',
                            Duration(milliseconds: 2000),
                            () async {
                              FFAppState().userEmail =
                                  _model.emailAddressTextController.text;
                            },
                          ),
                          autofocus: true,
                          autofillHints: [AutofillHints.email],
                          obscureText: false,
                          decoration: InputDecoration(
                            labelText: 'Email',
                            labelStyle: FlutterFlowTheme.of(context)
                                .labelMedium
                                .override(
                                  fontFamily: 'Ubuntu',
                                  letterSpacing: 0.0,
                                ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: FlutterFlowTheme.of(context).alternate,
                                width: 2.0,
                              ),
                              borderRadius: BorderRadius.circular(12.0),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: FlutterFlowTheme.of(context).primary,
                                width: 2.0,
                              ),
                              borderRadius: BorderRadius.circular(12.0),
                            ),
                            errorBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: FlutterFlowTheme.of(context).error,
                                width: 2.0,
                              ),
                              borderRadius: BorderRadius.circular(12.0),
                            ),
                            focusedErrorBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: FlutterFlowTheme.of(context).error,
                                width: 2.0,
                              ),
                              borderRadius: BorderRadius.circular(12.0),
                            ),
                            filled: true,
                            fillColor: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                            contentPadding: EdgeInsets.all(24.0),
                          ),
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Ubuntu',
                                    color: Color(0xFFF4780D),
                                    letterSpacing: 0.0,
                                  ),
                          keyboardType: TextInputType.emailAddress,
                          validator: _model.emailAddressTextControllerValidator
                              .asValidator(context),
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 16.0),
                      child: Container(
                        width: double.infinity,
                        child: TextFormField(
                          controller: _model.passwordTextController,
                          focusNode: _model.passwordFocusNode,
                          onChanged: (_) => EasyDebounce.debounce(
                            '_model.passwordTextController',
                            Duration(milliseconds: 2000),
                            () async {
                              FFAppState().userPw =
                                  _model.passwordTextController.text;
                            },
                          ),
                          autofocus: false,
                          autofillHints: [AutofillHints.password],
                          obscureText: !_model.passwordVisibility,
                          decoration: InputDecoration(
                            labelText: 'Password',
                            labelStyle: FlutterFlowTheme.of(context)
                                .labelMedium
                                .override(
                                  fontFamily: 'Ubuntu',
                                  letterSpacing: 0.0,
                                ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: FlutterFlowTheme.of(context).alternate,
                                width: 2.0,
                              ),
                              borderRadius: BorderRadius.circular(12.0),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: FlutterFlowTheme.of(context).primary,
                                width: 2.0,
                              ),
                              borderRadius: BorderRadius.circular(12.0),
                            ),
                            errorBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: FlutterFlowTheme.of(context).error,
                                width: 2.0,
                              ),
                              borderRadius: BorderRadius.circular(12.0),
                            ),
                            focusedErrorBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: FlutterFlowTheme.of(context).error,
                                width: 2.0,
                              ),
                              borderRadius: BorderRadius.circular(12.0),
                            ),
                            filled: true,
                            fillColor: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                            contentPadding: EdgeInsets.all(24.0),
                            suffixIcon: InkWell(
                              onTap: () => safeSetState(
                                () => _model.passwordVisibility =
                                    !_model.passwordVisibility,
                              ),
                              focusNode: FocusNode(skipTraversal: true),
                              child: Icon(
                                _model.passwordVisibility
                                    ? Icons.visibility_outlined
                                    : Icons.visibility_off_outlined,
                                color:
                                    FlutterFlowTheme.of(context).secondaryText,
                                size: 24.0,
                              ),
                            ),
                          ),
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Ubuntu',
                                    color: Color(0xFFF4780D),
                                    letterSpacing: 0.0,
                                  ),
                          validator: _model.passwordTextControllerValidator
                              .asValidator(context),
                        ),
                      ),
                    ),
                    Align(
                      alignment: AlignmentDirectional(0.0, 0.0),
                      child: Builder(
                        builder: (context) => Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 16.0, 0.0, 16.0),
                          child: FFButtonWidget(
                            onPressed: () async {
                              var _shouldSetState = false;
                              _model.fetchuserdata =
                                  await FetchUserDataCall.call(
                                username:
                                    _model.emailAddressTextController.text,
                                password: _model.passwordTextController.text,
                              );

                              _shouldSetState = true;
                              if ((_model.fetchuserdata?.succeeded ?? true)) {
                                // HomePage Update
                                FFAppState().PlayerTitle =
                                    FetchUserDataCall.playerTitle(
                                  (_model.fetchuserdata?.jsonBody ?? ''),
                                )!;
                                FFAppState().PlayerName =
                                    FetchUserDataCall.playerName(
                                  (_model.fetchuserdata?.jsonBody ?? ''),
                                )!;
                                FFAppState().PlayerAvatar =
                                    FetchUserDataCall.playerAvatar(
                                  (_model.fetchuserdata?.jsonBody ?? ''),
                                )!;
                                FFAppState().HomeRating =
                                    FetchUserDataCall.ratingList(
                                  (_model.fetchuserdata?.jsonBody ?? ''),
                                )!
                                        .toList()
                                        .cast<String>();
                                FFAppState().HomeClearData =
                                    FetchUserDataCall.clearDataList(
                                  (_model.fetchuserdata?.jsonBody ?? ''),
                                )!
                                        .toList()
                                        .cast<String>();
                                FFAppState().HomeProgress =
                                    FetchUserDataCall.progressList(
                                  (_model.fetchuserdata?.jsonBody ?? ''),
                                )!
                                        .toList()
                                        .cast<String>();
                                FFAppState().HomePercent =
                                    FetchUserDataCall.progressDoubleList(
                                  (_model.fetchuserdata?.jsonBody ?? ''),
                                )!
                                        .toList()
                                        .cast<double>();
                                FFAppState().HomePG = FetchUserDataCall.pGList(
                                  (_model.fetchuserdata?.jsonBody ?? ''),
                                )!
                                    .toList()
                                    .cast<String>();
                                FFAppState().HomeUG = FetchUserDataCall.uGList(
                                  (_model.fetchuserdata?.jsonBody ?? ''),
                                )!
                                    .toList()
                                    .cast<String>();
                                FFAppState().HomeEG = FetchUserDataCall.eGList(
                                  (_model.fetchuserdata?.jsonBody ?? ''),
                                )!
                                    .toList()
                                    .cast<String>();
                                FFAppState().HomeSG = FetchUserDataCall.sGList(
                                  (_model.fetchuserdata?.jsonBody ?? ''),
                                )!
                                    .toList()
                                    .cast<String>();
                                FFAppState().HomeMG = FetchUserDataCall.mGList(
                                  (_model.fetchuserdata?.jsonBody ?? ''),
                                )!
                                    .toList()
                                    .cast<String>();
                                FFAppState().HomeTG = FetchUserDataCall.tGList(
                                  (_model.fetchuserdata?.jsonBody ?? ''),
                                )!
                                    .toList()
                                    .cast<String>();
                                FFAppState().HomeFG = FetchUserDataCall.fGList(
                                  (_model.fetchuserdata?.jsonBody ?? ''),
                                )!
                                    .toList()
                                    .cast<String>();
                                FFAppState().HomeRG = FetchUserDataCall.rGList(
                                  (_model.fetchuserdata?.jsonBody ?? ''),
                                )!
                                    .toList()
                                    .cast<String>();
                                safeSetState(() {});
                                // PumpbilityPage Update
                                FFAppState().PumbilityScore = formatNumber(
                                  FetchUserDataCall.pumpbilityScore(
                                    (_model.fetchuserdata?.jsonBody ?? ''),
                                  ),
                                  formatType: FormatType.decimal,
                                  decimalType: DecimalType.periodDecimal,
                                );
                                FFAppState().PumpbTitle =
                                    FetchUserDataCall.pumpbilitySongList(
                                  (_model.fetchuserdata?.jsonBody ?? ''),
                                )!
                                        .toList()
                                        .cast<String>();
                                FFAppState().PumpbArtist =
                                    FetchUserDataCall.pumpbilitySongTitle(
                                  (_model.fetchuserdata?.jsonBody ?? ''),
                                )!
                                        .toList()
                                        .cast<String>();
                                FFAppState().PumpbScore =
                                    FetchUserDataCall.pumpbilitySongScore(
                                  (_model.fetchuserdata?.jsonBody ?? ''),
                                )!
                                        .toList()
                                        .cast<String>();
                                FFAppState().PumpbDate =
                                    FetchUserDataCall.pumpbilityDate(
                                  (_model.fetchuserdata?.jsonBody ?? ''),
                                )!
                                        .toList()
                                        .cast<String>();
                                FFAppState().PumpbPlateurl =
                                    FetchUserDataCall.pumpbilityPlate(
                                  (_model.fetchuserdata?.jsonBody ?? ''),
                                )!
                                        .toList()
                                        .cast<String>();
                                FFAppState().PumpbStepball1 =
                                    FetchUserDataCall.pumpbilityStepball1(
                                  (_model.fetchuserdata?.jsonBody ?? ''),
                                )!
                                        .toList()
                                        .cast<String>();
                                FFAppState().PumpbStepball2 =
                                    FetchUserDataCall.pumpbilityStepball2(
                                  (_model.fetchuserdata?.jsonBody ?? ''),
                                )!
                                        .toList()
                                        .cast<String>();
                                FFAppState().PumpbStepballText =
                                    FetchUserDataCall.pumpbilitySteptext(
                                  (_model.fetchuserdata?.jsonBody ?? ''),
                                )!
                                        .toList()
                                        .cast<String>();
                                FFAppState().PumpbStepballBG =
                                    FetchUserDataCall.pumpbilityStepballType(
                                  (_model.fetchuserdata?.jsonBody ?? ''),
                                )!
                                        .toList()
                                        .cast<String>();
                                FFAppState().PumpbScoreInt =
                                    FetchUserDataCall.pumpbilityScore(
                                  (_model.fetchuserdata?.jsonBody ?? ''),
                                )!;
                                FFAppState().PumpbBG =
                                    FetchUserDataCall.pumpbBG(
                                  (_model.fetchuserdata?.jsonBody ?? ''),
                                )!
                                        .toList()
                                        .cast<String>();
                                // RecentPage Update
                                FFAppState().RecentSong =
                                    FetchUserDataCall.recentSong(
                                  (_model.fetchuserdata?.jsonBody ?? ''),
                                )!
                                        .toList()
                                        .cast<String>();
                                FFAppState().RecentScore =
                                    FetchUserDataCall.recentScore(
                                  (_model.fetchuserdata?.jsonBody ?? ''),
                                )!
                                        .toList()
                                        .cast<String>();
                                FFAppState().RecentStepballURL =
                                    FetchUserDataCall.recentStepballUrl(
                                  (_model.fetchuserdata?.jsonBody ?? ''),
                                )!
                                        .toList()
                                        .cast<String>();
                                FFAppState().RecentStepballType =
                                    FetchUserDataCall.recentStepballType(
                                  (_model.fetchuserdata?.jsonBody ?? ''),
                                )!
                                        .toList()
                                        .cast<String>();
                                FFAppState().RecentBallText1 =
                                    FetchUserDataCall.recentStepballT1(
                                  (_model.fetchuserdata?.jsonBody ?? ''),
                                )!
                                        .toList()
                                        .cast<String>();
                                FFAppState().RecentBallText2 =
                                    FetchUserDataCall.recentStepballT2(
                                  (_model.fetchuserdata?.jsonBody ?? ''),
                                )!
                                        .toList()
                                        .cast<String>();
                                FFAppState().RecentPerfect =
                                    FetchUserDataCall.recentPerfect(
                                  (_model.fetchuserdata?.jsonBody ?? ''),
                                )!
                                        .toList()
                                        .cast<String>();
                                FFAppState().RecentGreat =
                                    FetchUserDataCall.recentGreat(
                                  (_model.fetchuserdata?.jsonBody ?? ''),
                                )!
                                        .toList()
                                        .cast<String>();
                                FFAppState().RecentGood =
                                    FetchUserDataCall.recentGood(
                                  (_model.fetchuserdata?.jsonBody ?? ''),
                                )!
                                        .toList()
                                        .cast<String>();
                                FFAppState().RecentBad =
                                    FetchUserDataCall.recentBad(
                                  (_model.fetchuserdata?.jsonBody ?? ''),
                                )!
                                        .toList()
                                        .cast<String>();
                                FFAppState().RecentMiss =
                                    FetchUserDataCall.recentMiss(
                                  (_model.fetchuserdata?.jsonBody ?? ''),
                                )!
                                        .toList()
                                        .cast<String>();
                                FFAppState().RecentPlate =
                                    FetchUserDataCall.recentPlate(
                                  (_model.fetchuserdata?.jsonBody ?? ''),
                                )!
                                        .toList()
                                        .cast<String>();
                                FFAppState().RecentBG =
                                    FetchUserDataCall.recentBG(
                                  (_model.fetchuserdata?.jsonBody ?? ''),
                                )!
                                        .toList()
                                        .cast<String>();

                                context.pushNamed('HomePage');
                              } else {
                                safeSetState(() {
                                  _model.emailAddressTextController?.clear();
                                  _model.passwordTextController?.clear();
                                });
                                if ((_model.fetchuserdata?.statusCode ?? 200)
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
                                        child: GestureDetector(
                                          onTap: () {
                                            FocusScope.of(dialogContext)
                                                .unfocus();
                                            FocusManager.instance.primaryFocus
                                                ?.unfocus();
                                          },
                                          child: Container(
                                            height: 100.0,
                                            width: 300.0,
                                            child: Warning500Widget(),
                                          ),
                                        ),
                                      );
                                    },
                                  );
                                } else if ((_model.fetchuserdata?.statusCode ??
                                        200) ==
                                    404) {
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
                                        child: GestureDetector(
                                          onTap: () {
                                            FocusScope.of(dialogContext)
                                                .unfocus();
                                            FocusManager.instance.primaryFocus
                                                ?.unfocus();
                                          },
                                          child: Container(
                                            height: 100.0,
                                            width: 300.0,
                                            child: Warning404Widget(),
                                          ),
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
                                        child: GestureDetector(
                                          onTap: () {
                                            FocusScope.of(dialogContext)
                                                .unfocus();
                                            FocusManager.instance.primaryFocus
                                                ?.unfocus();
                                          },
                                          child: Container(
                                            height: 100.0,
                                            width: 300.0,
                                            child: Warning429Widget(),
                                          ),
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
                            text: 'Log In',
                            options: FFButtonOptions(
                              width: 230.0,
                              height: 52.0,
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 0.0, 0.0),
                              iconPadding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 0.0, 0.0),
                              color: FlutterFlowTheme.of(context).primary,
                              textStyle: FlutterFlowTheme.of(context)
                                  .titleSmall
                                  .override(
                                    fontFamily: 'Ubuntu',
                                    color: Colors.white,
                                    letterSpacing: 0.0,
                                  ),
                              elevation: 3.0,
                              borderSide: BorderSide(
                                color: Colors.transparent,
                                width: 1.0,
                              ),
                              borderRadius: BorderRadius.circular(12.0),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ).animateOnPageLoad(
                    animationsMap['columnOnPageLoadAnimation']!),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
