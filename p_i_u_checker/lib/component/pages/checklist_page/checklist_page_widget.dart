import '/backend/api_requests/api_calls.dart';
import '/component/function/setting_bar/setting_bar_widget.dart';
import '/components/no_result_widget.dart';
import '/components/warning429_widget.dart';
import '/components/warning_m_s_g_widget.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'dart:ui';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'checklist_page_model.dart';
export 'checklist_page_model.dart';

class ChecklistPageWidget extends StatefulWidget {
  const ChecklistPageWidget({
    super.key,
    this.stepStyle,
  });

  final String? stepStyle;

  @override
  State<ChecklistPageWidget> createState() => _ChecklistPageWidgetState();
}

class _ChecklistPageWidgetState extends State<ChecklistPageWidget> {
  late ChecklistPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ChecklistPageModel());

    _model.switchValue = false;
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
              SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.start,
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
                            padding: EdgeInsetsDirectional.fromSTEB(
                                16.0, 0.0, 0.0, 0.0),
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
                    Padding(
                      padding: EdgeInsets.all(16.0),
                      child: Container(
                        width: MediaQuery.sizeOf(context).width * 1.0,
                        height: 60.0,
                        decoration: BoxDecoration(
                          color: Color(0xFF1A1A2E),
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  16.0, 0.0, 0.0, 0.0),
                              child: Switch.adaptive(
                                value: _model.switchValue!,
                                onChanged: (newValue) async {
                                  safeSetState(
                                      () => _model.switchValue = newValue!);
                                  if (newValue!) {
                                    _model.listName = [];
                                    _model.listScore = [];
                                    _model.listURL = [];
                                    safeSetState(() {});
                                    if (_model.dropDownValue == 'Lv. 10') {
                                      _model.listName = (getJsonField(
                                        (_model.loadData?.jsonBody ?? ''),
                                        r'''$.data.level_10.double[:].name''',
                                        true,
                                      ) as List)
                                          .map<String>((s) => s.toString())
                                          .toList()!
                                          .toList()
                                          .cast<String>();
                                      _model.listScore = getJsonField(
                                        (_model.loadData?.jsonBody ?? ''),
                                        r'''$.data.level_10.double[:].score''',
                                        true,
                                      )!
                                          .toList()
                                          .cast<double>();
                                      _model.listURL = getJsonField(
                                        (_model.loadData?.jsonBody ?? ''),
                                        r'''$.data.level_10.double[:].image_url''',
                                        true,
                                      )!
                                          .toList()
                                          .cast<String>();
                                    } else if (_model.dropDownValue ==
                                        'Lv. 11') {
                                      _model.listName = (getJsonField(
                                        (_model.loadData?.jsonBody ?? ''),
                                        r'''$.data.level_11.double[:].name''',
                                        true,
                                      ) as List)
                                          .map<String>((s) => s.toString())
                                          .toList()!
                                          .toList()
                                          .cast<String>();
                                      _model.listScore = getJsonField(
                                        (_model.loadData?.jsonBody ?? ''),
                                        r'''$.data.level_11.double[:].score''',
                                        true,
                                      )!
                                          .toList()
                                          .cast<double>();
                                      _model.listURL = getJsonField(
                                        (_model.loadData?.jsonBody ?? ''),
                                        r'''$.data.level_11.double[:].image_url''',
                                        true,
                                      )!
                                          .toList()
                                          .cast<String>();
                                    } else if (_model.dropDownValue ==
                                        'Lv. 12') {
                                      _model.listName = (getJsonField(
                                        (_model.loadData?.jsonBody ?? ''),
                                        r'''$.data.level_12.double[:].name''',
                                        true,
                                      ) as List)
                                          .map<String>((s) => s.toString())
                                          .toList()!
                                          .toList()
                                          .cast<String>();
                                      _model.listScore = getJsonField(
                                        (_model.loadData?.jsonBody ?? ''),
                                        r'''$.data.level_12.double[:].score''',
                                        true,
                                      )!
                                          .toList()
                                          .cast<double>();
                                      _model.listURL = getJsonField(
                                        (_model.loadData?.jsonBody ?? ''),
                                        r'''$.data.level_12.double[:].image_url''',
                                        true,
                                      )!
                                          .toList()
                                          .cast<String>();
                                    } else if (_model.dropDownValue ==
                                        'Lv. 13') {
                                      _model.listName = (getJsonField(
                                        (_model.loadData?.jsonBody ?? ''),
                                        r'''$.data.level_13.double[:].name''',
                                        true,
                                      ) as List)
                                          .map<String>((s) => s.toString())
                                          .toList()!
                                          .toList()
                                          .cast<String>();
                                      _model.listScore = getJsonField(
                                        (_model.loadData?.jsonBody ?? ''),
                                        r'''$.data.level_13.double[:].score''',
                                        true,
                                      )!
                                          .toList()
                                          .cast<double>();
                                      _model.listURL = getJsonField(
                                        (_model.loadData?.jsonBody ?? ''),
                                        r'''$.data.level_13.double[:].image_url''',
                                        true,
                                      )!
                                          .toList()
                                          .cast<String>();
                                    } else if (_model.dropDownValue ==
                                        'Lv. 14') {
                                      _model.listName = (getJsonField(
                                        (_model.loadData?.jsonBody ?? ''),
                                        r'''$.data.level_14.double[:].name''',
                                        true,
                                      ) as List)
                                          .map<String>((s) => s.toString())
                                          .toList()!
                                          .toList()
                                          .cast<String>();
                                      _model.listScore = getJsonField(
                                        (_model.loadData?.jsonBody ?? ''),
                                        r'''$.data.level_14.double[:].score''',
                                        true,
                                      )!
                                          .toList()
                                          .cast<double>();
                                      _model.listURL = getJsonField(
                                        (_model.loadData?.jsonBody ?? ''),
                                        r'''$.data.level_14.double[:].image_url''',
                                        true,
                                      )!
                                          .toList()
                                          .cast<String>();
                                    } else if (_model.dropDownValue ==
                                        'Lv. 15') {
                                      _model.listName = (getJsonField(
                                        (_model.loadData?.jsonBody ?? ''),
                                        r'''$.data.level_15.double[:].name''',
                                        true,
                                      ) as List)
                                          .map<String>((s) => s.toString())
                                          .toList()!
                                          .toList()
                                          .cast<String>();
                                      _model.listScore = getJsonField(
                                        (_model.loadData?.jsonBody ?? ''),
                                        r'''$.data.level_15.double[:].score''',
                                        true,
                                      )!
                                          .toList()
                                          .cast<double>();
                                      _model.listURL = getJsonField(
                                        (_model.loadData?.jsonBody ?? ''),
                                        r'''$.data.level_15.double[:].image_url''',
                                        true,
                                      )!
                                          .toList()
                                          .cast<String>();
                                    } else if (_model.dropDownValue ==
                                        'Lv. 16') {
                                      _model.listName = (getJsonField(
                                        (_model.loadData?.jsonBody ?? ''),
                                        r'''$.data.level_16.double[:].name''',
                                        true,
                                      ) as List)
                                          .map<String>((s) => s.toString())
                                          .toList()!
                                          .toList()
                                          .cast<String>();
                                      _model.listScore = getJsonField(
                                        (_model.loadData?.jsonBody ?? ''),
                                        r'''$.data.level_16.double[:].score''',
                                        true,
                                      )!
                                          .toList()
                                          .cast<double>();
                                      _model.listURL = getJsonField(
                                        (_model.loadData?.jsonBody ?? ''),
                                        r'''$.data.level_16.double[:].image_url''',
                                        true,
                                      )!
                                          .toList()
                                          .cast<String>();
                                    } else if (_model.dropDownValue ==
                                        'Lv. 17') {
                                      _model.listName = (getJsonField(
                                        (_model.loadData?.jsonBody ?? ''),
                                        r'''$.data.level_17.double[:].name''',
                                        true,
                                      ) as List)
                                          .map<String>((s) => s.toString())
                                          .toList()!
                                          .toList()
                                          .cast<String>();
                                      _model.listScore = getJsonField(
                                        (_model.loadData?.jsonBody ?? ''),
                                        r'''$.data.level_17.double[:].score''',
                                        true,
                                      )!
                                          .toList()
                                          .cast<double>();
                                      _model.listURL = getJsonField(
                                        (_model.loadData?.jsonBody ?? ''),
                                        r'''$.data.level_17.double[:].image_url''',
                                        true,
                                      )!
                                          .toList()
                                          .cast<String>();
                                    } else if (_model.dropDownValue ==
                                        'Lv. 18') {
                                      _model.listName = (getJsonField(
                                        (_model.loadData?.jsonBody ?? ''),
                                        r'''$.data.level_18.double[:].name''',
                                        true,
                                      ) as List)
                                          .map<String>((s) => s.toString())
                                          .toList()!
                                          .toList()
                                          .cast<String>();
                                      _model.listScore = getJsonField(
                                        (_model.loadData?.jsonBody ?? ''),
                                        r'''$.data.level_18.double[:].score''',
                                        true,
                                      )!
                                          .toList()
                                          .cast<double>();
                                      _model.listURL = getJsonField(
                                        (_model.loadData?.jsonBody ?? ''),
                                        r'''$.data.level_18.double[:].image_url''',
                                        true,
                                      )!
                                          .toList()
                                          .cast<String>();
                                    } else if (_model.dropDownValue ==
                                        'Lv. 19') {
                                      _model.listName = (getJsonField(
                                        (_model.loadData?.jsonBody ?? ''),
                                        r'''$.data.level_19.double[:].name''',
                                        true,
                                      ) as List)
                                          .map<String>((s) => s.toString())
                                          .toList()!
                                          .toList()
                                          .cast<String>();
                                      _model.listScore = getJsonField(
                                        (_model.loadData?.jsonBody ?? ''),
                                        r'''$.data.level_19.double[:].score''',
                                        true,
                                      )!
                                          .toList()
                                          .cast<double>();
                                      _model.listURL = getJsonField(
                                        (_model.loadData?.jsonBody ?? ''),
                                        r'''$.data.level_19.double[:].image_url''',
                                        true,
                                      )!
                                          .toList()
                                          .cast<String>();
                                    } else if (_model.dropDownValue ==
                                        'Lv. 20') {
                                      _model.listName = (getJsonField(
                                        (_model.loadData?.jsonBody ?? ''),
                                        r'''$.data.level_20.double[:].name''',
                                        true,
                                      ) as List)
                                          .map<String>((s) => s.toString())
                                          .toList()!
                                          .toList()
                                          .cast<String>();
                                      _model.listScore = getJsonField(
                                        (_model.loadData?.jsonBody ?? ''),
                                        r'''$.data.level_20.double[:].score''',
                                        true,
                                      )!
                                          .toList()
                                          .cast<double>();
                                      _model.listURL = getJsonField(
                                        (_model.loadData?.jsonBody ?? ''),
                                        r'''$.data.level_20.double[:].image_url''',
                                        true,
                                      )!
                                          .toList()
                                          .cast<String>();
                                    } else if (_model.dropDownValue ==
                                        'Lv. 21') {
                                      _model.listName = (getJsonField(
                                        (_model.loadData?.jsonBody ?? ''),
                                        r'''$.data.level_21.double[:].name''',
                                        true,
                                      ) as List)
                                          .map<String>((s) => s.toString())
                                          .toList()!
                                          .toList()
                                          .cast<String>();
                                      _model.listScore = getJsonField(
                                        (_model.loadData?.jsonBody ?? ''),
                                        r'''$.data.level_21.double[:].score''',
                                        true,
                                      )!
                                          .toList()
                                          .cast<double>();
                                      _model.listURL = getJsonField(
                                        (_model.loadData?.jsonBody ?? ''),
                                        r'''$.data.level_21.double[:].image_url''',
                                        true,
                                      )!
                                          .toList()
                                          .cast<String>();
                                    } else if (_model.dropDownValue ==
                                        'Lv. 22') {
                                      _model.listName = (getJsonField(
                                        (_model.loadData?.jsonBody ?? ''),
                                        r'''$.data.level_22.double[:].name''',
                                        true,
                                      ) as List)
                                          .map<String>((s) => s.toString())
                                          .toList()!
                                          .toList()
                                          .cast<String>();
                                      _model.listScore = getJsonField(
                                        (_model.loadData?.jsonBody ?? ''),
                                        r'''$.data.level_22.double[:].score''',
                                        true,
                                      )!
                                          .toList()
                                          .cast<double>();
                                      _model.listURL = getJsonField(
                                        (_model.loadData?.jsonBody ?? ''),
                                        r'''$.data.level_22.double[:].image_url''',
                                        true,
                                      )!
                                          .toList()
                                          .cast<String>();
                                    } else if (_model.dropDownValue ==
                                        'Lv. 23') {
                                      _model.listName = (getJsonField(
                                        (_model.loadData?.jsonBody ?? ''),
                                        r'''$.data.level_23.double[:].name''',
                                        true,
                                      ) as List)
                                          .map<String>((s) => s.toString())
                                          .toList()!
                                          .toList()
                                          .cast<String>();
                                      _model.listScore = getJsonField(
                                        (_model.loadData?.jsonBody ?? ''),
                                        r'''$.data.level_23.double[:].score''',
                                        true,
                                      )!
                                          .toList()
                                          .cast<double>();
                                      _model.listURL = getJsonField(
                                        (_model.loadData?.jsonBody ?? ''),
                                        r'''$.data.level_23.double[:].image_url''',
                                        true,
                                      )!
                                          .toList()
                                          .cast<String>();
                                    } else if (_model.dropDownValue ==
                                        'Lv. 24') {
                                      _model.listName = (getJsonField(
                                        (_model.loadData?.jsonBody ?? ''),
                                        r'''$.data.level_24.double[:].name''',
                                        true,
                                      ) as List)
                                          .map<String>((s) => s.toString())
                                          .toList()!
                                          .toList()
                                          .cast<String>();
                                      _model.listScore = getJsonField(
                                        (_model.loadData?.jsonBody ?? ''),
                                        r'''$.data.level_24.double[:].score''',
                                        true,
                                      )!
                                          .toList()
                                          .cast<double>();
                                      _model.listURL = getJsonField(
                                        (_model.loadData?.jsonBody ?? ''),
                                        r'''$.data.level_24.double[:].image_url''',
                                        true,
                                      )!
                                          .toList()
                                          .cast<String>();
                                    } else if (_model.dropDownValue ==
                                        'Lv. 25') {
                                      _model.listName = (getJsonField(
                                        (_model.loadData?.jsonBody ?? ''),
                                        r'''$.data.level_25.double[:].name''',
                                        true,
                                      ) as List)
                                          .map<String>((s) => s.toString())
                                          .toList()!
                                          .toList()
                                          .cast<String>();
                                      _model.listScore = getJsonField(
                                        (_model.loadData?.jsonBody ?? ''),
                                        r'''$.data.level_25.double[:].score''',
                                        true,
                                      )!
                                          .toList()
                                          .cast<double>();
                                      _model.listURL = getJsonField(
                                        (_model.loadData?.jsonBody ?? ''),
                                        r'''$.data.level_25.double[:].image_url''',
                                        true,
                                      )!
                                          .toList()
                                          .cast<String>();
                                    } else if (_model.dropDownValue ==
                                        'Lv. 26') {
                                      _model.listName = (getJsonField(
                                        (_model.loadData?.jsonBody ?? ''),
                                        r'''$.data.level_26.double[:].name''',
                                        true,
                                      ) as List)
                                          .map<String>((s) => s.toString())
                                          .toList()!
                                          .toList()
                                          .cast<String>();
                                      _model.listScore = getJsonField(
                                        (_model.loadData?.jsonBody ?? ''),
                                        r'''$.data.level_26.double[:].score''',
                                        true,
                                      )!
                                          .toList()
                                          .cast<double>();
                                      _model.listURL = getJsonField(
                                        (_model.loadData?.jsonBody ?? ''),
                                        r'''$.data.level_26.double[:].image_url''',
                                        true,
                                      )!
                                          .toList()
                                          .cast<String>();
                                    } else {
                                      _model.listName = (getJsonField(
                                        (_model.loadData?.jsonBody ?? ''),
                                        r'''$.data.level_27.double[:].name''',
                                        true,
                                      ) as List)
                                          .map<String>((s) => s.toString())
                                          .toList()!
                                          .toList()
                                          .cast<String>();
                                      _model.listScore = getJsonField(
                                        (_model.loadData?.jsonBody ?? ''),
                                        r'''$.data.level_27.double[:].score''',
                                        true,
                                      )!
                                          .toList()
                                          .cast<double>();
                                      _model.listURL = getJsonField(
                                        (_model.loadData?.jsonBody ?? ''),
                                        r'''$.data.level_27.double[:].image_url''',
                                        true,
                                      )!
                                          .toList()
                                          .cast<String>();
                                    }
                                  } else {
                                    _model.listName = [];
                                    _model.listScore = [];
                                    _model.listURL = [];
                                    safeSetState(() {});
                                    if (_model.dropDownValue == 'Lv. 10') {
                                      _model.listName = (getJsonField(
                                        (_model.loadData?.jsonBody ?? ''),
                                        r'''$.data.level_10.single[:].name''',
                                        true,
                                      ) as List)
                                          .map<String>((s) => s.toString())
                                          .toList()!
                                          .toList()
                                          .cast<String>();
                                      _model.listScore = getJsonField(
                                        (_model.loadData?.jsonBody ?? ''),
                                        r'''$.data.level_10.single[:].score''',
                                        true,
                                      )!
                                          .toList()
                                          .cast<double>();
                                      _model.listURL = getJsonField(
                                        (_model.loadData?.jsonBody ?? ''),
                                        r'''$.data.level_10.single[:].image_url''',
                                        true,
                                      )!
                                          .toList()
                                          .cast<String>();
                                    } else if (_model.dropDownValue ==
                                        'Lv. 11') {
                                      _model.listName = (getJsonField(
                                        (_model.loadData?.jsonBody ?? ''),
                                        r'''$.data.level_11.single[:].name''',
                                        true,
                                      ) as List)
                                          .map<String>((s) => s.toString())
                                          .toList()!
                                          .toList()
                                          .cast<String>();
                                      _model.listScore = getJsonField(
                                        (_model.loadData?.jsonBody ?? ''),
                                        r'''$.data.level_11.single[:].score''',
                                        true,
                                      )!
                                          .toList()
                                          .cast<double>();
                                      _model.listURL = getJsonField(
                                        (_model.loadData?.jsonBody ?? ''),
                                        r'''$.data.level_11.single[:].image_url''',
                                        true,
                                      )!
                                          .toList()
                                          .cast<String>();
                                    } else if (_model.dropDownValue ==
                                        'Lv. 12') {
                                      _model.listName = (getJsonField(
                                        (_model.loadData?.jsonBody ?? ''),
                                        r'''$.data.level_12.single[:].name''',
                                        true,
                                      ) as List)
                                          .map<String>((s) => s.toString())
                                          .toList()!
                                          .toList()
                                          .cast<String>();
                                      _model.listScore = getJsonField(
                                        (_model.loadData?.jsonBody ?? ''),
                                        r'''$.data.level_12.single[:].score''',
                                        true,
                                      )!
                                          .toList()
                                          .cast<double>();
                                      _model.listURL = getJsonField(
                                        (_model.loadData?.jsonBody ?? ''),
                                        r'''$.data.level_12.single[:].image_url''',
                                        true,
                                      )!
                                          .toList()
                                          .cast<String>();
                                    } else if (_model.dropDownValue ==
                                        'Lv. 13') {
                                      _model.listName = (getJsonField(
                                        (_model.loadData?.jsonBody ?? ''),
                                        r'''$.data.level_13.single[:].name''',
                                        true,
                                      ) as List)
                                          .map<String>((s) => s.toString())
                                          .toList()!
                                          .toList()
                                          .cast<String>();
                                      _model.listScore = getJsonField(
                                        (_model.loadData?.jsonBody ?? ''),
                                        r'''$.data.level_13.single[:].score''',
                                        true,
                                      )!
                                          .toList()
                                          .cast<double>();
                                      _model.listURL = getJsonField(
                                        (_model.loadData?.jsonBody ?? ''),
                                        r'''$.data.level_13.single[:].image_url''',
                                        true,
                                      )!
                                          .toList()
                                          .cast<String>();
                                    } else if (_model.dropDownValue ==
                                        'Lv. 14') {
                                      _model.listName = (getJsonField(
                                        (_model.loadData?.jsonBody ?? ''),
                                        r'''$.data.level_14.single[:].name''',
                                        true,
                                      ) as List)
                                          .map<String>((s) => s.toString())
                                          .toList()!
                                          .toList()
                                          .cast<String>();
                                      _model.listScore = getJsonField(
                                        (_model.loadData?.jsonBody ?? ''),
                                        r'''$.data.level_14.single[:].score''',
                                        true,
                                      )!
                                          .toList()
                                          .cast<double>();
                                      _model.listURL = getJsonField(
                                        (_model.loadData?.jsonBody ?? ''),
                                        r'''$.data.level_14.single[:].image_url''',
                                        true,
                                      )!
                                          .toList()
                                          .cast<String>();
                                    } else if (_model.dropDownValue ==
                                        'Lv. 15') {
                                      _model.listName = (getJsonField(
                                        (_model.loadData?.jsonBody ?? ''),
                                        r'''$.data.level_15.single[:].name''',
                                        true,
                                      ) as List)
                                          .map<String>((s) => s.toString())
                                          .toList()!
                                          .toList()
                                          .cast<String>();
                                      _model.listScore = getJsonField(
                                        (_model.loadData?.jsonBody ?? ''),
                                        r'''$.data.level_15.single[:].score''',
                                        true,
                                      )!
                                          .toList()
                                          .cast<double>();
                                      _model.listURL = getJsonField(
                                        (_model.loadData?.jsonBody ?? ''),
                                        r'''$.data.level_15.single[:].image_url''',
                                        true,
                                      )!
                                          .toList()
                                          .cast<String>();
                                    } else if (_model.dropDownValue ==
                                        'Lv. 16') {
                                      _model.listName = (getJsonField(
                                        (_model.loadData?.jsonBody ?? ''),
                                        r'''$.data.level_16.single[:].name''',
                                        true,
                                      ) as List)
                                          .map<String>((s) => s.toString())
                                          .toList()!
                                          .toList()
                                          .cast<String>();
                                      _model.listScore = getJsonField(
                                        (_model.loadData?.jsonBody ?? ''),
                                        r'''$.data.level_16.single[:].score''',
                                        true,
                                      )!
                                          .toList()
                                          .cast<double>();
                                      _model.listURL = getJsonField(
                                        (_model.loadData?.jsonBody ?? ''),
                                        r'''$.data.level_16.single[:].image_url''',
                                        true,
                                      )!
                                          .toList()
                                          .cast<String>();
                                    } else if (_model.dropDownValue ==
                                        'Lv. 17') {
                                      _model.listName = (getJsonField(
                                        (_model.loadData?.jsonBody ?? ''),
                                        r'''$.data.level_17.single[:].name''',
                                        true,
                                      ) as List)
                                          .map<String>((s) => s.toString())
                                          .toList()!
                                          .toList()
                                          .cast<String>();
                                      _model.listScore = getJsonField(
                                        (_model.loadData?.jsonBody ?? ''),
                                        r'''$.data.level_17.single[:].score''',
                                        true,
                                      )!
                                          .toList()
                                          .cast<double>();
                                      _model.listURL = getJsonField(
                                        (_model.loadData?.jsonBody ?? ''),
                                        r'''$.data.level_17.single[:].image_url''',
                                        true,
                                      )!
                                          .toList()
                                          .cast<String>();
                                    } else if (_model.dropDownValue ==
                                        'Lv. 18') {
                                      _model.listName = (getJsonField(
                                        (_model.loadData?.jsonBody ?? ''),
                                        r'''$.data.level_18.single[:].name''',
                                        true,
                                      ) as List)
                                          .map<String>((s) => s.toString())
                                          .toList()!
                                          .toList()
                                          .cast<String>();
                                      _model.listScore = getJsonField(
                                        (_model.loadData?.jsonBody ?? ''),
                                        r'''$.data.level_18.single[:].score''',
                                        true,
                                      )!
                                          .toList()
                                          .cast<double>();
                                      _model.listURL = getJsonField(
                                        (_model.loadData?.jsonBody ?? ''),
                                        r'''$.data.level_18.single[:].image_url''',
                                        true,
                                      )!
                                          .toList()
                                          .cast<String>();
                                    } else if (_model.dropDownValue ==
                                        'Lv. 19') {
                                      _model.listName = (getJsonField(
                                        (_model.loadData?.jsonBody ?? ''),
                                        r'''$.data.level_19.single[:].name''',
                                        true,
                                      ) as List)
                                          .map<String>((s) => s.toString())
                                          .toList()!
                                          .toList()
                                          .cast<String>();
                                      _model.listScore = getJsonField(
                                        (_model.loadData?.jsonBody ?? ''),
                                        r'''$.data.level_19.single[:].score''',
                                        true,
                                      )!
                                          .toList()
                                          .cast<double>();
                                      _model.listURL = getJsonField(
                                        (_model.loadData?.jsonBody ?? ''),
                                        r'''$.data.level_19.single[:].image_url''',
                                        true,
                                      )!
                                          .toList()
                                          .cast<String>();
                                    } else if (_model.dropDownValue ==
                                        'Lv. 20') {
                                      _model.listName = (getJsonField(
                                        (_model.loadData?.jsonBody ?? ''),
                                        r'''$.data.level_20.single[:].name''',
                                        true,
                                      ) as List)
                                          .map<String>((s) => s.toString())
                                          .toList()!
                                          .toList()
                                          .cast<String>();
                                      _model.listScore = getJsonField(
                                        (_model.loadData?.jsonBody ?? ''),
                                        r'''$.data.level_20.single[:].score''',
                                        true,
                                      )!
                                          .toList()
                                          .cast<double>();
                                      _model.listURL = getJsonField(
                                        (_model.loadData?.jsonBody ?? ''),
                                        r'''$.data.level_20.single[:].image_url''',
                                        true,
                                      )!
                                          .toList()
                                          .cast<String>();
                                    } else if (_model.dropDownValue ==
                                        'Lv. 21') {
                                      _model.listName = (getJsonField(
                                        (_model.loadData?.jsonBody ?? ''),
                                        r'''$.data.level_21.single[:].name''',
                                        true,
                                      ) as List)
                                          .map<String>((s) => s.toString())
                                          .toList()!
                                          .toList()
                                          .cast<String>();
                                      _model.listScore = getJsonField(
                                        (_model.loadData?.jsonBody ?? ''),
                                        r'''$.data.level_21.single[:].score''',
                                        true,
                                      )!
                                          .toList()
                                          .cast<double>();
                                      _model.listURL = getJsonField(
                                        (_model.loadData?.jsonBody ?? ''),
                                        r'''$.data.level_21.single[:].image_url''',
                                        true,
                                      )!
                                          .toList()
                                          .cast<String>();
                                    } else if (_model.dropDownValue ==
                                        'Lv. 22') {
                                      _model.listName = (getJsonField(
                                        (_model.loadData?.jsonBody ?? ''),
                                        r'''$.data.level_22.single[:].name''',
                                        true,
                                      ) as List)
                                          .map<String>((s) => s.toString())
                                          .toList()!
                                          .toList()
                                          .cast<String>();
                                      _model.listScore = getJsonField(
                                        (_model.loadData?.jsonBody ?? ''),
                                        r'''$.data.level_22.single[:].score''',
                                        true,
                                      )!
                                          .toList()
                                          .cast<double>();
                                      _model.listURL = getJsonField(
                                        (_model.loadData?.jsonBody ?? ''),
                                        r'''$.data.level_22.single[:].image_url''',
                                        true,
                                      )!
                                          .toList()
                                          .cast<String>();
                                    } else if (_model.dropDownValue ==
                                        'Lv. 23') {
                                      _model.listName = (getJsonField(
                                        (_model.loadData?.jsonBody ?? ''),
                                        r'''$.data.level_23.single[:].name''',
                                        true,
                                      ) as List)
                                          .map<String>((s) => s.toString())
                                          .toList()!
                                          .toList()
                                          .cast<String>();
                                      _model.listScore = getJsonField(
                                        (_model.loadData?.jsonBody ?? ''),
                                        r'''$.data.level_23.single[:].score''',
                                        true,
                                      )!
                                          .toList()
                                          .cast<double>();
                                      _model.listURL = getJsonField(
                                        (_model.loadData?.jsonBody ?? ''),
                                        r'''$.data.level_23.single[:].image_url''',
                                        true,
                                      )!
                                          .toList()
                                          .cast<String>();
                                    } else if (_model.dropDownValue ==
                                        'Lv. 24') {
                                      _model.listName = (getJsonField(
                                        (_model.loadData?.jsonBody ?? ''),
                                        r'''$.data.level_24.single[:].name''',
                                        true,
                                      ) as List)
                                          .map<String>((s) => s.toString())
                                          .toList()!
                                          .toList()
                                          .cast<String>();
                                      _model.listScore = getJsonField(
                                        (_model.loadData?.jsonBody ?? ''),
                                        r'''$.data.level_24.single[:].score''',
                                        true,
                                      )!
                                          .toList()
                                          .cast<double>();
                                      _model.listURL = getJsonField(
                                        (_model.loadData?.jsonBody ?? ''),
                                        r'''$.data.level_24.single[:].image_url''',
                                        true,
                                      )!
                                          .toList()
                                          .cast<String>();
                                    } else if (_model.dropDownValue ==
                                        'Lv. 25') {
                                      _model.listName = (getJsonField(
                                        (_model.loadData?.jsonBody ?? ''),
                                        r'''$.data.level_25.single[:].name''',
                                        true,
                                      ) as List)
                                          .map<String>((s) => s.toString())
                                          .toList()!
                                          .toList()
                                          .cast<String>();
                                      _model.listScore = getJsonField(
                                        (_model.loadData?.jsonBody ?? ''),
                                        r'''$.data.level_25.single[:].score''',
                                        true,
                                      )!
                                          .toList()
                                          .cast<double>();
                                      _model.listURL = getJsonField(
                                        (_model.loadData?.jsonBody ?? ''),
                                        r'''$.data.level_25.single[:].image_url''',
                                        true,
                                      )!
                                          .toList()
                                          .cast<String>();
                                    } else if (_model.dropDownValue ==
                                        'Lv. 26') {
                                      _model.listName = (getJsonField(
                                        (_model.loadData?.jsonBody ?? ''),
                                        r'''$.data.level_26.single[:].name''',
                                        true,
                                      ) as List)
                                          .map<String>((s) => s.toString())
                                          .toList()!
                                          .toList()
                                          .cast<String>();
                                      _model.listScore = getJsonField(
                                        (_model.loadData?.jsonBody ?? ''),
                                        r'''$.data.level_26.single[:].score''',
                                        true,
                                      )!
                                          .toList()
                                          .cast<double>();
                                      _model.listURL = getJsonField(
                                        (_model.loadData?.jsonBody ?? ''),
                                        r'''$.data.level_26.single[:].image_url''',
                                        true,
                                      )!
                                          .toList()
                                          .cast<String>();
                                    }
                                  }
                                },
                                activeColor: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                                activeTrackColor: Color(0xB133FF33),
                                inactiveTrackColor: Color(0xFFFF0000),
                                inactiveThumbColor: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.all(16.0),
                              child: Text(
                                valueOrDefault<String>(
                                  _model.switchValue! ? 'Double' : 'Single',
                                  '[PlayType]',
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Ubuntu',
                                      color: Colors.white,
                                      fontSize: 16.0,
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.w600,
                                    ),
                              ),
                            ),
                            Expanded(
                              child: Align(
                                alignment: AlignmentDirectional(1.0, 0.0),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      16.0, 0.0, 12.0, 0.0),
                                  child: FlutterFlowDropDown<String>(
                                    controller:
                                        _model.dropDownValueController ??=
                                            FormFieldController<String>(
                                      _model.dropDownValue ??= 'Lv. 10',
                                    ),
                                    options: [
                                      'Lv. 10',
                                      'Lv. 11',
                                      'Lv. 12',
                                      'Lv. 13',
                                      'Lv. 14',
                                      'Lv. 15',
                                      'Lv. 16',
                                      'Lv. 17',
                                      'Lv. 18',
                                      'Lv. 19',
                                      'Lv. 20',
                                      'Lv. 21',
                                      'Lv. 22',
                                      'Lv. 23',
                                      'Lv. 24',
                                      'Lv. 25',
                                      'Lv. 26',
                                      'Lv. 27 Over'
                                    ],
                                    onChanged: (val) async {
                                      safeSetState(
                                          () => _model.dropDownValue = val);
                                      if (_model.dropDownValue == 'Lv. 10') {
                                        _model.listName = [];
                                        _model.listScore = [];
                                        _model.listURL = [];
                                        safeSetState(() {});
                                        if (_model.switchValue == true) {
                                          _model.listName = (getJsonField(
                                            (_model.loadData?.jsonBody ?? ''),
                                            r'''$.data.level_10.double[:].name''',
                                            true,
                                          ) as List)
                                              .map<String>((s) => s.toString())
                                              .toList()!
                                              .toList()
                                              .cast<String>();
                                          _model.listScore = getJsonField(
                                            (_model.loadData?.jsonBody ?? ''),
                                            r'''$.data.level_10.double[:].score''',
                                            true,
                                          )!
                                              .toList()
                                              .cast<double>();
                                          _model.listURL = getJsonField(
                                            (_model.loadData?.jsonBody ?? ''),
                                            r'''$.data.level_10.double[:].image_url''',
                                            true,
                                          )!
                                              .toList()
                                              .cast<String>();
                                        } else {
                                          _model.listName = (getJsonField(
                                            (_model.loadData?.jsonBody ?? ''),
                                            r'''$.data.level_10.single[:].name''',
                                            true,
                                          ) as List)
                                              .map<String>((s) => s.toString())
                                              .toList()!
                                              .toList()
                                              .cast<String>();
                                          _model.listScore = getJsonField(
                                            (_model.loadData?.jsonBody ?? ''),
                                            r'''$.data.level_10.single[:].score''',
                                            true,
                                          )!
                                              .toList()
                                              .cast<double>();
                                          _model.listURL = getJsonField(
                                            (_model.loadData?.jsonBody ?? ''),
                                            r'''$.data.level_10.single[:].image_url''',
                                            true,
                                          )!
                                              .toList()
                                              .cast<String>();
                                        }
                                      } else if (_model.dropDownValue ==
                                          'Lv. 11') {
                                        _model.listName = [];
                                        _model.listScore = [];
                                        _model.listURL = [];
                                        safeSetState(() {});
                                        if (_model.switchValue == true) {
                                          _model.listName = (getJsonField(
                                            (_model.loadData?.jsonBody ?? ''),
                                            r'''$.data.level_11.double[:].name''',
                                            true,
                                          ) as List)
                                              .map<String>((s) => s.toString())
                                              .toList()!
                                              .toList()
                                              .cast<String>();
                                          _model.listScore = getJsonField(
                                            (_model.loadData?.jsonBody ?? ''),
                                            r'''$.data.level_11.double[:].score''',
                                            true,
                                          )!
                                              .toList()
                                              .cast<double>();
                                          _model.listURL = getJsonField(
                                            (_model.loadData?.jsonBody ?? ''),
                                            r'''$.data.level_11.double[:].image_url''',
                                            true,
                                          )!
                                              .toList()
                                              .cast<String>();
                                        } else {
                                          _model.listName = (getJsonField(
                                            (_model.loadData?.jsonBody ?? ''),
                                            r'''$.data.level_11.single[:].name''',
                                            true,
                                          ) as List)
                                              .map<String>((s) => s.toString())
                                              .toList()!
                                              .toList()
                                              .cast<String>();
                                          _model.listScore = getJsonField(
                                            (_model.loadData?.jsonBody ?? ''),
                                            r'''$.data.level_11.single[:].score''',
                                            true,
                                          )!
                                              .toList()
                                              .cast<double>();
                                          _model.listURL = getJsonField(
                                            (_model.loadData?.jsonBody ?? ''),
                                            r'''$.data.level_11.single[:].image_url''',
                                            true,
                                          )!
                                              .toList()
                                              .cast<String>();
                                        }
                                      } else if (_model.dropDownValue ==
                                          'Lv. 12') {
                                        _model.listName = [];
                                        _model.listScore = [];
                                        _model.listURL = [];
                                        safeSetState(() {});
                                        if (_model.switchValue == true) {
                                          _model.listName = (getJsonField(
                                            (_model.loadData?.jsonBody ?? ''),
                                            r'''$.data.level_12.double[:].name''',
                                            true,
                                          ) as List)
                                              .map<String>((s) => s.toString())
                                              .toList()!
                                              .toList()
                                              .cast<String>();
                                          _model.listScore = getJsonField(
                                            (_model.loadData?.jsonBody ?? ''),
                                            r'''$.data.level_12.double[:].score''',
                                            true,
                                          )!
                                              .toList()
                                              .cast<double>();
                                          _model.listURL = getJsonField(
                                            (_model.loadData?.jsonBody ?? ''),
                                            r'''$.data.level_12.double[:].image_url''',
                                            true,
                                          )!
                                              .toList()
                                              .cast<String>();
                                        } else {
                                          _model.listName = (getJsonField(
                                            (_model.loadData?.jsonBody ?? ''),
                                            r'''$.data.level_12.single[:].name''',
                                            true,
                                          ) as List)
                                              .map<String>((s) => s.toString())
                                              .toList()!
                                              .toList()
                                              .cast<String>();
                                          _model.listScore = getJsonField(
                                            (_model.loadData?.jsonBody ?? ''),
                                            r'''$.data.level_12.single[:].score''',
                                            true,
                                          )!
                                              .toList()
                                              .cast<double>();
                                          _model.listURL = getJsonField(
                                            (_model.loadData?.jsonBody ?? ''),
                                            r'''$.data.level_12.single[:].image_url''',
                                            true,
                                          )!
                                              .toList()
                                              .cast<String>();
                                        }
                                      } else if (_model.dropDownValue ==
                                          'Lv. 13') {
                                        _model.listName = [];
                                        _model.listScore = [];
                                        _model.listURL = [];
                                        safeSetState(() {});
                                        if (_model.switchValue == true) {
                                          _model.listName = (getJsonField(
                                            (_model.loadData?.jsonBody ?? ''),
                                            r'''$.data.level_13.double[:].name''',
                                            true,
                                          ) as List)
                                              .map<String>((s) => s.toString())
                                              .toList()!
                                              .toList()
                                              .cast<String>();
                                          _model.listScore = getJsonField(
                                            (_model.loadData?.jsonBody ?? ''),
                                            r'''$.data.level_13.double[:].score''',
                                            true,
                                          )!
                                              .toList()
                                              .cast<double>();
                                          _model.listURL = getJsonField(
                                            (_model.loadData?.jsonBody ?? ''),
                                            r'''$.data.level_13.double[:].image_url''',
                                            true,
                                          )!
                                              .toList()
                                              .cast<String>();
                                        } else {
                                          _model.listName = (getJsonField(
                                            (_model.loadData?.jsonBody ?? ''),
                                            r'''$.data.level_13.single[:].name''',
                                            true,
                                          ) as List)
                                              .map<String>((s) => s.toString())
                                              .toList()!
                                              .toList()
                                              .cast<String>();
                                          _model.listScore = getJsonField(
                                            (_model.loadData?.jsonBody ?? ''),
                                            r'''$.data.level_13.single[:].score''',
                                            true,
                                          )!
                                              .toList()
                                              .cast<double>();
                                          _model.listURL = getJsonField(
                                            (_model.loadData?.jsonBody ?? ''),
                                            r'''$.data.level_13.single[:].image_url''',
                                            true,
                                          )!
                                              .toList()
                                              .cast<String>();
                                        }
                                      } else if (_model.dropDownValue ==
                                          'Lv. 14') {
                                        _model.listName = [];
                                        _model.listScore = [];
                                        _model.listURL = [];
                                        safeSetState(() {});
                                        if (_model.switchValue == true) {
                                          _model.listName = (getJsonField(
                                            (_model.loadData?.jsonBody ?? ''),
                                            r'''$.data.level_14.double[:].name''',
                                            true,
                                          ) as List)
                                              .map<String>((s) => s.toString())
                                              .toList()!
                                              .toList()
                                              .cast<String>();
                                          _model.listScore = getJsonField(
                                            (_model.loadData?.jsonBody ?? ''),
                                            r'''$.data.level_14.double[:].score''',
                                            true,
                                          )!
                                              .toList()
                                              .cast<double>();
                                          _model.listURL = getJsonField(
                                            (_model.loadData?.jsonBody ?? ''),
                                            r'''$.data.level_14.double[:].image_url''',
                                            true,
                                          )!
                                              .toList()
                                              .cast<String>();
                                        } else {
                                          _model.listName = (getJsonField(
                                            (_model.loadData?.jsonBody ?? ''),
                                            r'''$.data.level_14.single[:].name''',
                                            true,
                                          ) as List)
                                              .map<String>((s) => s.toString())
                                              .toList()!
                                              .toList()
                                              .cast<String>();
                                          _model.listScore = getJsonField(
                                            (_model.loadData?.jsonBody ?? ''),
                                            r'''$.data.level_14.single[:].score''',
                                            true,
                                          )!
                                              .toList()
                                              .cast<double>();
                                          _model.listURL = getJsonField(
                                            (_model.loadData?.jsonBody ?? ''),
                                            r'''$.data.level_14.single[:].image_url''',
                                            true,
                                          )!
                                              .toList()
                                              .cast<String>();
                                        }
                                      } else if (_model.dropDownValue ==
                                          'Lv. 15') {
                                        _model.listName = [];
                                        _model.listScore = [];
                                        _model.listURL = [];
                                        safeSetState(() {});
                                        if (_model.switchValue == true) {
                                          _model.listName = (getJsonField(
                                            (_model.loadData?.jsonBody ?? ''),
                                            r'''$.data.level_15.double[:].name''',
                                            true,
                                          ) as List)
                                              .map<String>((s) => s.toString())
                                              .toList()!
                                              .toList()
                                              .cast<String>();
                                          _model.listScore = getJsonField(
                                            (_model.loadData?.jsonBody ?? ''),
                                            r'''$.data.level_15.double[:].score''',
                                            true,
                                          )!
                                              .toList()
                                              .cast<double>();
                                          _model.listURL = getJsonField(
                                            (_model.loadData?.jsonBody ?? ''),
                                            r'''$.data.level_15.double[:].image_url''',
                                            true,
                                          )!
                                              .toList()
                                              .cast<String>();
                                        } else {
                                          _model.listName = (getJsonField(
                                            (_model.loadData?.jsonBody ?? ''),
                                            r'''$.data.level_15.single[:].name''',
                                            true,
                                          ) as List)
                                              .map<String>((s) => s.toString())
                                              .toList()!
                                              .toList()
                                              .cast<String>();
                                          _model.listScore = getJsonField(
                                            (_model.loadData?.jsonBody ?? ''),
                                            r'''$.data.level_15.single[:].score''',
                                            true,
                                          )!
                                              .toList()
                                              .cast<double>();
                                          _model.listURL = getJsonField(
                                            (_model.loadData?.jsonBody ?? ''),
                                            r'''$.data.level_15.single[:].image_url''',
                                            true,
                                          )!
                                              .toList()
                                              .cast<String>();
                                        }
                                      } else if (_model.dropDownValue ==
                                          'Lv. 16') {
                                        _model.listName = [];
                                        _model.listScore = [];
                                        _model.listURL = [];
                                        safeSetState(() {});
                                        if (_model.switchValue == true) {
                                          _model.listName = (getJsonField(
                                            (_model.loadData?.jsonBody ?? ''),
                                            r'''$.data.level_16.double[:].name''',
                                            true,
                                          ) as List)
                                              .map<String>((s) => s.toString())
                                              .toList()!
                                              .toList()
                                              .cast<String>();
                                          _model.listScore = getJsonField(
                                            (_model.loadData?.jsonBody ?? ''),
                                            r'''$.data.level_16.double[:].score''',
                                            true,
                                          )!
                                              .toList()
                                              .cast<double>();
                                          _model.listURL = getJsonField(
                                            (_model.loadData?.jsonBody ?? ''),
                                            r'''$.data.level_16.double[:].image_url''',
                                            true,
                                          )!
                                              .toList()
                                              .cast<String>();
                                        } else {
                                          _model.listName = (getJsonField(
                                            (_model.loadData?.jsonBody ?? ''),
                                            r'''$.data.level_16.single[:].name''',
                                            true,
                                          ) as List)
                                              .map<String>((s) => s.toString())
                                              .toList()!
                                              .toList()
                                              .cast<String>();
                                          _model.listScore = getJsonField(
                                            (_model.loadData?.jsonBody ?? ''),
                                            r'''$.data.level_16.single[:].score''',
                                            true,
                                          )!
                                              .toList()
                                              .cast<double>();
                                          _model.listURL = getJsonField(
                                            (_model.loadData?.jsonBody ?? ''),
                                            r'''$.data.level_16.single[:].image_url''',
                                            true,
                                          )!
                                              .toList()
                                              .cast<String>();
                                        }
                                      } else if (_model.dropDownValue ==
                                          'Lv. 17') {
                                        _model.listName = [];
                                        _model.listScore = [];
                                        _model.listURL = [];
                                        safeSetState(() {});
                                        if (_model.switchValue == true) {
                                          _model.listName = (getJsonField(
                                            (_model.loadData?.jsonBody ?? ''),
                                            r'''$.data.level_17.double[:].name''',
                                            true,
                                          ) as List)
                                              .map<String>((s) => s.toString())
                                              .toList()!
                                              .toList()
                                              .cast<String>();
                                          _model.listScore = getJsonField(
                                            (_model.loadData?.jsonBody ?? ''),
                                            r'''$.data.level_17.double[:].score''',
                                            true,
                                          )!
                                              .toList()
                                              .cast<double>();
                                          _model.listURL = getJsonField(
                                            (_model.loadData?.jsonBody ?? ''),
                                            r'''$.data.level_17.double[:].image_url''',
                                            true,
                                          )!
                                              .toList()
                                              .cast<String>();
                                        } else {
                                          _model.listName = (getJsonField(
                                            (_model.loadData?.jsonBody ?? ''),
                                            r'''$.data.level_17.single[:].name''',
                                            true,
                                          ) as List)
                                              .map<String>((s) => s.toString())
                                              .toList()!
                                              .toList()
                                              .cast<String>();
                                          _model.listScore = getJsonField(
                                            (_model.loadData?.jsonBody ?? ''),
                                            r'''$.data.level_17.single[:].score''',
                                            true,
                                          )!
                                              .toList()
                                              .cast<double>();
                                          _model.listURL = getJsonField(
                                            (_model.loadData?.jsonBody ?? ''),
                                            r'''$.data.level_17.single[:].image_url''',
                                            true,
                                          )!
                                              .toList()
                                              .cast<String>();
                                        }
                                      } else if (_model.dropDownValue ==
                                          'Lv. 18') {
                                        _model.listName = [];
                                        _model.listScore = [];
                                        _model.listURL = [];
                                        safeSetState(() {});
                                        if (_model.switchValue == true) {
                                          _model.listName = (getJsonField(
                                            (_model.loadData?.jsonBody ?? ''),
                                            r'''$.data.level_18.double[:].name''',
                                            true,
                                          ) as List)
                                              .map<String>((s) => s.toString())
                                              .toList()!
                                              .toList()
                                              .cast<String>();
                                          _model.listScore = getJsonField(
                                            (_model.loadData?.jsonBody ?? ''),
                                            r'''$.data.level_18.double[:].score''',
                                            true,
                                          )!
                                              .toList()
                                              .cast<double>();
                                          _model.listURL = getJsonField(
                                            (_model.loadData?.jsonBody ?? ''),
                                            r'''$.data.level_18.double[:].image_url''',
                                            true,
                                          )!
                                              .toList()
                                              .cast<String>();
                                        } else {
                                          _model.listName = (getJsonField(
                                            (_model.loadData?.jsonBody ?? ''),
                                            r'''$.data.level_18.single[:].name''',
                                            true,
                                          ) as List)
                                              .map<String>((s) => s.toString())
                                              .toList()!
                                              .toList()
                                              .cast<String>();
                                          _model.listScore = getJsonField(
                                            (_model.loadData?.jsonBody ?? ''),
                                            r'''$.data.level_18.single[:].score''',
                                            true,
                                          )!
                                              .toList()
                                              .cast<double>();
                                          _model.listURL = getJsonField(
                                            (_model.loadData?.jsonBody ?? ''),
                                            r'''$.data.level_18.single[:].image_url''',
                                            true,
                                          )!
                                              .toList()
                                              .cast<String>();
                                        }
                                      } else if (_model.dropDownValue ==
                                          'Lv. 19') {
                                        _model.listName = [];
                                        _model.listScore = [];
                                        _model.listURL = [];
                                        safeSetState(() {});
                                        if (_model.switchValue == true) {
                                          _model.listName = (getJsonField(
                                            (_model.loadData?.jsonBody ?? ''),
                                            r'''$.data.level_19.double[:].name''',
                                            true,
                                          ) as List)
                                              .map<String>((s) => s.toString())
                                              .toList()!
                                              .toList()
                                              .cast<String>();
                                          _model.listScore = getJsonField(
                                            (_model.loadData?.jsonBody ?? ''),
                                            r'''$.data.level_19.double[:].score''',
                                            true,
                                          )!
                                              .toList()
                                              .cast<double>();
                                          _model.listURL = getJsonField(
                                            (_model.loadData?.jsonBody ?? ''),
                                            r'''$.data.level_19.double[:].image_url''',
                                            true,
                                          )!
                                              .toList()
                                              .cast<String>();
                                        } else {
                                          _model.listName = (getJsonField(
                                            (_model.loadData?.jsonBody ?? ''),
                                            r'''$.data.level_19.single[:].name''',
                                            true,
                                          ) as List)
                                              .map<String>((s) => s.toString())
                                              .toList()!
                                              .toList()
                                              .cast<String>();
                                          _model.listScore = getJsonField(
                                            (_model.loadData?.jsonBody ?? ''),
                                            r'''$.data.level_19.single[:].score''',
                                            true,
                                          )!
                                              .toList()
                                              .cast<double>();
                                          _model.listURL = getJsonField(
                                            (_model.loadData?.jsonBody ?? ''),
                                            r'''$.data.level_19.single[:].image_url''',
                                            true,
                                          )!
                                              .toList()
                                              .cast<String>();
                                        }
                                      } else if (_model.dropDownValue ==
                                          'Lv. 20') {
                                        _model.listName = [];
                                        _model.listScore = [];
                                        _model.listURL = [];
                                        safeSetState(() {});
                                        if (_model.switchValue == true) {
                                          _model.listName = (getJsonField(
                                            (_model.loadData?.jsonBody ?? ''),
                                            r'''$.data.level_20.double[:].name''',
                                            true,
                                          ) as List)
                                              .map<String>((s) => s.toString())
                                              .toList()!
                                              .toList()
                                              .cast<String>();
                                          _model.listScore = getJsonField(
                                            (_model.loadData?.jsonBody ?? ''),
                                            r'''$.data.level_20.double[:].score''',
                                            true,
                                          )!
                                              .toList()
                                              .cast<double>();
                                          _model.listURL = getJsonField(
                                            (_model.loadData?.jsonBody ?? ''),
                                            r'''$.data.level_20.double[:].image_url''',
                                            true,
                                          )!
                                              .toList()
                                              .cast<String>();
                                        } else {
                                          _model.listName = (getJsonField(
                                            (_model.loadData?.jsonBody ?? ''),
                                            r'''$.data.level_20.single[:].name''',
                                            true,
                                          ) as List)
                                              .map<String>((s) => s.toString())
                                              .toList()!
                                              .toList()
                                              .cast<String>();
                                          _model.listScore = getJsonField(
                                            (_model.loadData?.jsonBody ?? ''),
                                            r'''$.data.level_20.single[:].score''',
                                            true,
                                          )!
                                              .toList()
                                              .cast<double>();
                                          _model.listURL = getJsonField(
                                            (_model.loadData?.jsonBody ?? ''),
                                            r'''$.data.level_20.single[:].image_url''',
                                            true,
                                          )!
                                              .toList()
                                              .cast<String>();
                                        }
                                      } else if (_model.dropDownValue ==
                                          'Lv. 21') {
                                        _model.listName = [];
                                        _model.listScore = [];
                                        _model.listURL = [];
                                        safeSetState(() {});
                                        if (_model.switchValue == true) {
                                          _model.listName = (getJsonField(
                                            (_model.loadData?.jsonBody ?? ''),
                                            r'''$.data.level_21.double[:].name''',
                                            true,
                                          ) as List)
                                              .map<String>((s) => s.toString())
                                              .toList()!
                                              .toList()
                                              .cast<String>();
                                          _model.listScore = getJsonField(
                                            (_model.loadData?.jsonBody ?? ''),
                                            r'''$.data.level_21.double[:].score''',
                                            true,
                                          )!
                                              .toList()
                                              .cast<double>();
                                          _model.listURL = getJsonField(
                                            (_model.loadData?.jsonBody ?? ''),
                                            r'''$.data.level_21.double[:].image_url''',
                                            true,
                                          )!
                                              .toList()
                                              .cast<String>();
                                        } else {
                                          _model.listName = (getJsonField(
                                            (_model.loadData?.jsonBody ?? ''),
                                            r'''$.data.level_21.single[:].name''',
                                            true,
                                          ) as List)
                                              .map<String>((s) => s.toString())
                                              .toList()!
                                              .toList()
                                              .cast<String>();
                                          _model.listScore = getJsonField(
                                            (_model.loadData?.jsonBody ?? ''),
                                            r'''$.data.level_21.single[:].score''',
                                            true,
                                          )!
                                              .toList()
                                              .cast<double>();
                                          _model.listURL = getJsonField(
                                            (_model.loadData?.jsonBody ?? ''),
                                            r'''$.data.level_21.single[:].image_url''',
                                            true,
                                          )!
                                              .toList()
                                              .cast<String>();
                                        }
                                      } else if (_model.dropDownValue ==
                                          'Lv. 22') {
                                        _model.listName = [];
                                        _model.listScore = [];
                                        _model.listURL = [];
                                        safeSetState(() {});
                                        if (_model.switchValue == true) {
                                          _model.listName = (getJsonField(
                                            (_model.loadData?.jsonBody ?? ''),
                                            r'''$.data.level_22.double[:].name''',
                                            true,
                                          ) as List)
                                              .map<String>((s) => s.toString())
                                              .toList()!
                                              .toList()
                                              .cast<String>();
                                          _model.listScore = getJsonField(
                                            (_model.loadData?.jsonBody ?? ''),
                                            r'''$.data.level_22.double[:].score''',
                                            true,
                                          )!
                                              .toList()
                                              .cast<double>();
                                          _model.listURL = getJsonField(
                                            (_model.loadData?.jsonBody ?? ''),
                                            r'''$.data.level_22.double[:].image_url''',
                                            true,
                                          )!
                                              .toList()
                                              .cast<String>();
                                        } else {
                                          _model.listName = (getJsonField(
                                            (_model.loadData?.jsonBody ?? ''),
                                            r'''$.data.level_22.single[:].name''',
                                            true,
                                          ) as List)
                                              .map<String>((s) => s.toString())
                                              .toList()!
                                              .toList()
                                              .cast<String>();
                                          _model.listScore = getJsonField(
                                            (_model.loadData?.jsonBody ?? ''),
                                            r'''$.data.level_22.single[:].score''',
                                            true,
                                          )!
                                              .toList()
                                              .cast<double>();
                                          _model.listURL = getJsonField(
                                            (_model.loadData?.jsonBody ?? ''),
                                            r'''$.data.level_22.single[:].image_url''',
                                            true,
                                          )!
                                              .toList()
                                              .cast<String>();
                                        }
                                      } else if (_model.dropDownValue ==
                                          'Lv. 23') {
                                        _model.listName = [];
                                        _model.listScore = [];
                                        _model.listURL = [];
                                        safeSetState(() {});
                                        if (_model.switchValue == true) {
                                          _model.listName = (getJsonField(
                                            (_model.loadData?.jsonBody ?? ''),
                                            r'''$.data.level_23.double[:].name''',
                                            true,
                                          ) as List)
                                              .map<String>((s) => s.toString())
                                              .toList()!
                                              .toList()
                                              .cast<String>();
                                          _model.listScore = getJsonField(
                                            (_model.loadData?.jsonBody ?? ''),
                                            r'''$.data.level_23.double[:].score''',
                                            true,
                                          )!
                                              .toList()
                                              .cast<double>();
                                          _model.listURL = getJsonField(
                                            (_model.loadData?.jsonBody ?? ''),
                                            r'''$.data.level_23.double[:].image_url''',
                                            true,
                                          )!
                                              .toList()
                                              .cast<String>();
                                        } else {
                                          _model.listName = (getJsonField(
                                            (_model.loadData?.jsonBody ?? ''),
                                            r'''$.data.level_23.single[:].name''',
                                            true,
                                          ) as List)
                                              .map<String>((s) => s.toString())
                                              .toList()!
                                              .toList()
                                              .cast<String>();
                                          _model.listScore = getJsonField(
                                            (_model.loadData?.jsonBody ?? ''),
                                            r'''$.data.level_23.single[:].score''',
                                            true,
                                          )!
                                              .toList()
                                              .cast<double>();
                                          _model.listURL = getJsonField(
                                            (_model.loadData?.jsonBody ?? ''),
                                            r'''$.data.level_23.single[:].image_url''',
                                            true,
                                          )!
                                              .toList()
                                              .cast<String>();
                                        }
                                      } else if (_model.dropDownValue ==
                                          'Lv. 24') {
                                        _model.listName = [];
                                        _model.listScore = [];
                                        _model.listURL = [];
                                        safeSetState(() {});
                                        if (_model.switchValue == true) {
                                          _model.listName = (getJsonField(
                                            (_model.loadData?.jsonBody ?? ''),
                                            r'''$.data.level_24.double[:].name''',
                                            true,
                                          ) as List)
                                              .map<String>((s) => s.toString())
                                              .toList()!
                                              .toList()
                                              .cast<String>();
                                          _model.listScore = getJsonField(
                                            (_model.loadData?.jsonBody ?? ''),
                                            r'''$.data.level_24.double[:].score''',
                                            true,
                                          )!
                                              .toList()
                                              .cast<double>();
                                          _model.listURL = getJsonField(
                                            (_model.loadData?.jsonBody ?? ''),
                                            r'''$.data.level_24.double[:].image_url''',
                                            true,
                                          )!
                                              .toList()
                                              .cast<String>();
                                        } else {
                                          _model.listName = (getJsonField(
                                            (_model.loadData?.jsonBody ?? ''),
                                            r'''$.data.level_24.single[:].name''',
                                            true,
                                          ) as List)
                                              .map<String>((s) => s.toString())
                                              .toList()!
                                              .toList()
                                              .cast<String>();
                                          _model.listScore = getJsonField(
                                            (_model.loadData?.jsonBody ?? ''),
                                            r'''$.data.level_24.single[:].score''',
                                            true,
                                          )!
                                              .toList()
                                              .cast<double>();
                                          _model.listURL = getJsonField(
                                            (_model.loadData?.jsonBody ?? ''),
                                            r'''$.data.level_24.single[:].image_url''',
                                            true,
                                          )!
                                              .toList()
                                              .cast<String>();
                                        }
                                      } else if (_model.dropDownValue ==
                                          'Lv. 25') {
                                        _model.listName = [];
                                        _model.listScore = [];
                                        _model.listURL = [];
                                        safeSetState(() {});
                                        if (_model.switchValue == true) {
                                          _model.listName = (getJsonField(
                                            (_model.loadData?.jsonBody ?? ''),
                                            r'''$.data.level_25.double[:].name''',
                                            true,
                                          ) as List)
                                              .map<String>((s) => s.toString())
                                              .toList()!
                                              .toList()
                                              .cast<String>();
                                          _model.listScore = getJsonField(
                                            (_model.loadData?.jsonBody ?? ''),
                                            r'''$.data.level_25.double[:].score''',
                                            true,
                                          )!
                                              .toList()
                                              .cast<double>();
                                          _model.listURL = getJsonField(
                                            (_model.loadData?.jsonBody ?? ''),
                                            r'''$.data.level_25.double[:].image_url''',
                                            true,
                                          )!
                                              .toList()
                                              .cast<String>();
                                        } else {
                                          _model.listName = (getJsonField(
                                            (_model.loadData?.jsonBody ?? ''),
                                            r'''$.data.level_25.single[:].name''',
                                            true,
                                          ) as List)
                                              .map<String>((s) => s.toString())
                                              .toList()!
                                              .toList()
                                              .cast<String>();
                                          _model.listScore = getJsonField(
                                            (_model.loadData?.jsonBody ?? ''),
                                            r'''$.data.level_25.single[:].score''',
                                            true,
                                          )!
                                              .toList()
                                              .cast<double>();
                                          _model.listURL = getJsonField(
                                            (_model.loadData?.jsonBody ?? ''),
                                            r'''$.data.level_25.single[:].image_url''',
                                            true,
                                          )!
                                              .toList()
                                              .cast<String>();
                                        }
                                      } else if (_model.dropDownValue ==
                                          'Lv. 26') {
                                        _model.listName = [];
                                        _model.listScore = [];
                                        _model.listURL = [];
                                        safeSetState(() {});
                                        if (_model.switchValue == true) {
                                          _model.listName = (getJsonField(
                                            (_model.loadData?.jsonBody ?? ''),
                                            r'''$.data.level_26.double[:].name''',
                                            true,
                                          ) as List)
                                              .map<String>((s) => s.toString())
                                              .toList()!
                                              .toList()
                                              .cast<String>();
                                          _model.listScore = getJsonField(
                                            (_model.loadData?.jsonBody ?? ''),
                                            r'''$.data.level_26.double[:].score''',
                                            true,
                                          )!
                                              .toList()
                                              .cast<double>();
                                          _model.listURL = getJsonField(
                                            (_model.loadData?.jsonBody ?? ''),
                                            r'''$.data.level_26.double[:].image_url''',
                                            true,
                                          )!
                                              .toList()
                                              .cast<String>();
                                        } else {
                                          _model.listName = (getJsonField(
                                            (_model.loadData?.jsonBody ?? ''),
                                            r'''$.data.level_26.single[:].name''',
                                            true,
                                          ) as List)
                                              .map<String>((s) => s.toString())
                                              .toList()!
                                              .toList()
                                              .cast<String>();
                                          _model.listScore = getJsonField(
                                            (_model.loadData?.jsonBody ?? ''),
                                            r'''$.data.level_26.single[:].score''',
                                            true,
                                          )!
                                              .toList()
                                              .cast<double>();
                                          _model.listURL = getJsonField(
                                            (_model.loadData?.jsonBody ?? ''),
                                            r'''$.data.level_26.single[:].image_url''',
                                            true,
                                          )!
                                              .toList()
                                              .cast<String>();
                                        }
                                      } else {
                                        _model.listName = [];
                                        _model.listScore = [];
                                        _model.listURL = [];
                                        safeSetState(() {});
                                        _model.listName = (getJsonField(
                                          (_model.loadData?.jsonBody ?? ''),
                                          r'''$.data.level_27.double[:].name''',
                                          true,
                                        ) as List)
                                            .map<String>((s) => s.toString())
                                            .toList()!
                                            .toList()
                                            .cast<String>();
                                        _model.listScore = getJsonField(
                                          (_model.loadData?.jsonBody ?? ''),
                                          r'''$.data.level_27.double[:].score''',
                                          true,
                                        )!
                                            .toList()
                                            .cast<double>();
                                        _model.listURL = getJsonField(
                                          (_model.loadData?.jsonBody ?? ''),
                                          r'''$.data.level_27.double[:].image_url''',
                                          true,
                                        )!
                                            .toList()
                                            .cast<String>();
                                      }
                                    },
                                    width: 150.0,
                                    height: 35.0,
                                    maxHeight: 400.0,
                                    textStyle: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Ubuntu',
                                          color: Colors.white,
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.w600,
                                        ),
                                    hintText: 'Select...',
                                    icon: Icon(
                                      Icons.keyboard_arrow_down_rounded,
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryText,
                                      size: 24.0,
                                    ),
                                    fillColor: Color(0xFF1A1A2E),
                                    elevation: 2.0,
                                    borderColor: Colors.white,
                                    borderWidth: 2.0,
                                    borderRadius: 8.0,
                                    margin: EdgeInsetsDirectional.fromSTEB(
                                        12.0, 0.0, 12.0, 0.0),
                                    hidesUnderline: true,
                                    isOverButton: false,
                                    isSearchable: false,
                                    isMultiSelect: false,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(6.0, 0.0, 0.0, 12.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                24.0, 0.0, 0.0, 0.0),
                            child: Text(
                              valueOrDefault<String>(
                                _model.dropDownValue,
                                '[Level]',
                              ),
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Ubuntu',
                                    color: Colors.white,
                                    fontSize: 18.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.w600,
                                  ),
                            ),
                          ),
                          Text(
                            valueOrDefault<String>(
                              _model.switchValue! ? 'Double' : 'Single',
                              '[PlayType]',
                            ),
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Ubuntu',
                                  color: valueOrDefault<Color>(
                                    _model.switchValue!
                                        ? Color(0xB133FF33)
                                        : Color(0xFFFF0000),
                                    Colors.white,
                                  ),
                                  fontSize: 18.0,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.w600,
                                ),
                          ),
                          Align(
                            alignment: AlignmentDirectional(0.0, 0.0),
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  4.0, 0.0, 0.0, 0.0),
                              child: Text(
                                'ScoreList',
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Ubuntu',
                                      color: Colors.white,
                                      fontSize: 18.0,
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.w600,
                                    ),
                              ),
                            ),
                          ),
                        ].divide(SizedBox(width: 14.0)),
                      ),
                    ),
                    Divider(
                      thickness: 4.0,
                      indent: 16.0,
                      endIndent: 16.0,
                      color: FlutterFlowTheme.of(context).alternate,
                    ),
                    Align(
                      alignment: AlignmentDirectional(0.0, -1.0),
                      child: Builder(
                        builder: (context) {
                          final msd = _model.listName.toList();
                          if (msd.isEmpty) {
                            return Container(
                              width: 300.0,
                              height: 200.0,
                              child: NoResultWidget(),
                            );
                          }

                          return GridView.builder(
                            padding: EdgeInsets.zero,
                            gridDelegate:
                                SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 6,
                              childAspectRatio: 1.0,
                            ),
                            primary: false,
                            shrinkWrap: true,
                            scrollDirection: Axis.vertical,
                            itemCount: msd.length,
                            itemBuilder: (context, msdIndex) {
                              final msdItem = msd[msdIndex];
                              return Container(
                                width: MediaQuery.sizeOf(context).width * 0.2,
                                height: 60.0,
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context).tertiary,
                                  image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: CachedNetworkImageProvider(
                                      _model.listURL.elementAtOrNull(msdIndex)!,
                                    ),
                                  ),
                                ),
                                child: Align(
                                  alignment: AlignmentDirectional(0.0, 0.0),
                                  child: Text(
                                    valueOrDefault<String>(
                                      _model.listScore
                                          .elementAtOrNull(msdIndex)
                                          ?.toString(),
                                      '99.9',
                                    ),
                                    textAlign: TextAlign.center,
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                      fontFamily: 'Ubuntu',
                                      color: () {
                                        if (_model.listScore
                                                .elementAtOrNull(msdIndex)! >=
                                            99.0) {
                                          return Color(0xFF1460D4);
                                        } else if (_model.listScore
                                                .elementAtOrNull(msdIndex)! >=
                                            97.0) {
                                          return Color(0xFFFFD700);
                                        } else if (_model.listScore
                                                .elementAtOrNull(msdIndex)! >=
                                            90.0) {
                                          return Color(0xFF00E100);
                                        } else {
                                          return Color(0xFFD80000);
                                        }
                                      }(),
                                      fontSize: 22.0,
                                      letterSpacing: 1.0,
                                      fontWeight: FontWeight.w900,
                                      shadows: [
                                        Shadow(
                                          color: Colors.white,
                                          offset: Offset(2.0, 1.0),
                                          blurRadius: 2.0,
                                        ),
                                        Shadow(
                                          color: Colors.white,
                                          offset: Offset(1.0, 1.0),
                                          blurRadius: 2.0,
                                        ),
                                        Shadow(
                                          color: Colors.white,
                                          offset: Offset(2.0, 1.0),
                                          blurRadius: 2.0,
                                        ),
                                        Shadow(
                                          color: Colors.white,
                                          offset: Offset(-1.0, -1.0),
                                          blurRadius: 2.0,
                                        ),
                                        Shadow(
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryText,
                                          offset: Offset(-2.0, -1.0),
                                          blurRadius: 2.0,
                                        ),
                                        Shadow(
                                          color: Colors.white,
                                          offset: Offset(-2.0, -2.0),
                                          blurRadius: 2.0,
                                        ),
                                        Shadow(
                                          color: Colors.white,
                                          offset: Offset(-2.0, 1.0),
                                          blurRadius: 2.0,
                                        ),
                                        Shadow(
                                          color: Colors.white,
                                          offset: Offset(-1.0, 2.0),
                                          blurRadius: 2.0,
                                        ),
                                        Shadow(
                                          color: Colors.white,
                                          offset: Offset(-1.0, 1.0),
                                          blurRadius: 2.0,
                                        ),
                                        Shadow(
                                          color: Colors.white,
                                          offset: Offset(2.0, -1.0),
                                          blurRadius: 2.0,
                                        ),
                                        Shadow(
                                          color: Colors.white,
                                          offset: Offset(1.0, -2.0),
                                          blurRadius: 2.0,
                                        ),
                                        Shadow(
                                          color: Colors.white,
                                          offset: Offset(-1.0, -1.0),
                                          blurRadius: 2.0,
                                        )
                                      ],
                                    ),
                                  ),
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
              Align(
                alignment: AlignmentDirectional(1.0, 1.0),
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
                        _model.loadData = await FetchChecklistDataCall.call(
                          username: FFAppState().userEmail,
                          password: FFAppState().userPw,
                        );

                        if ((_model.loadData?.succeeded ?? true)) {
                          _model.listName = (getJsonField(
                            (_model.loadData?.jsonBody ?? ''),
                            r'''$.data.level_10.single[:].name''',
                            true,
                          ) as List)
                              .map<String>((s) => s.toString())
                              .toList()!
                              .toList()
                              .cast<String>();
                          _model.listScore = getJsonField(
                            (_model.loadData?.jsonBody ?? ''),
                            r'''$.data.level_10.single[:].score''',
                            true,
                          )!
                              .toList()
                              .cast<double>();
                          _model.listURL = getJsonField(
                            (_model.loadData?.jsonBody ?? ''),
                            r'''$.data.level_10.single[:].image_url''',
                            true,
                          )!
                              .toList()
                              .cast<String>();
                          safeSetState(() {});
                          safeSetState(() {
                            _model.switchValue = false;
                          });
                          safeSetState(() {
                            _model.dropDownValueController?.value = 'Lv. 10';
                          });
                        } else {
                          if ((_model.loadData?.statusCode ?? 200).toString() ==
                              '429') {
                            await showDialog(
                              context: context,
                              builder: (dialogContext) {
                                return Dialog(
                                  elevation: 0,
                                  insetPadding: EdgeInsets.zero,
                                  backgroundColor: Colors.transparent,
                                  alignment: AlignmentDirectional(0.0, 0.0)
                                      .resolve(Directionality.of(context)),
                                  child: GestureDetector(
                                    onTap: () {
                                      FocusScope.of(dialogContext).unfocus();
                                      FocusManager.instance.primaryFocus
                                          ?.unfocus();
                                    },
                                    child: Warning429Widget(),
                                  ),
                                );
                              },
                            );
                          } else {
                            await showDialog(
                              context: context,
                              builder: (dialogContext) {
                                return Dialog(
                                  elevation: 0,
                                  insetPadding: EdgeInsets.zero,
                                  backgroundColor: Colors.transparent,
                                  alignment: AlignmentDirectional(0.0, 0.0)
                                      .resolve(Directionality.of(context)),
                                  child: GestureDetector(
                                    onTap: () {
                                      FocusScope.of(dialogContext).unfocus();
                                      FocusManager.instance.primaryFocus
                                          ?.unfocus();
                                    },
                                    child: WarningMSGWidget(),
                                  ),
                                );
                              },
                            );
                          }
                        }

                        safeSetState(() {});
                      },
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
