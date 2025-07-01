import '/backend/api_requests/api_calls.dart';
import '/component/img_list/no_result/no_result_widget.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/message_box/warning404/warning404_widget.dart';
import '/sub_component/setting_bar/setting_bar_widget.dart';
import '/index.dart';
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

  static String routeName = 'Checklist_Page';
  static String routePath = '/checklistPage';

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
                context.pushNamed(HomePageWidget.routeName);
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
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: MediaQuery.sizeOf(context).width * 1.0,
                  height: 50.0,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: Image.network(
                        '',
                      ).image,
                    ),
                  ),
                  child: Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 12.0, 0.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Align(
                          alignment: AlignmentDirectional(-1.0, 0.0),
                          child: Text(
                            FFAppState().PlayerName,
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  font: GoogleFonts.ubuntu(
                                    fontWeight: FontWeight.w800,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .fontStyle,
                                  ),
                                  color: Colors.white,
                                  fontSize: 18.0,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.w800,
                                  fontStyle: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .fontStyle,
                                ),
                          ),
                        ),
                        Align(
                          alignment: AlignmentDirectional(1.0, 0.0),
                          child: Text(
                            FFAppState().PlayerTitle,
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
                                  fontSize: 18.0,
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
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(16.0, 4.0, 16.0, 0.0),
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
                                  () => _model.switchValue = newValue);
                              if (newValue) {
                                _model.listName = [];
                                _model.listScore = [];
                                _model.listURL = [];
                                safeSetState(() {});
                                if (_model.dropDownValue == 'Lv. 10') {
                                  _model.listName =
                                      FetchChecklistByLevelCall.doubleName(
                                    (_model.checklistdata?.jsonBody ?? ''),
                                  )!
                                          .toList()
                                          .cast<String>();
                                  _model.listScore =
                                      FetchChecklistByLevelCall.doubleScore(
                                    (_model.checklistdata?.jsonBody ?? ''),
                                  )!
                                          .toList()
                                          .cast<double>();
                                  _model.listURL =
                                      FetchChecklistByLevelCall.doubleBG(
                                    (_model.checklistdata?.jsonBody ?? ''),
                                  )!
                                          .toList()
                                          .cast<String>();
                                } else if (_model.dropDownValue == 'Lv. 11') {
                                  _model.listName =
                                      FetchChecklistByLevelCall.doubleName(
                                    (_model.checklistdata?.jsonBody ?? ''),
                                  )!
                                          .toList()
                                          .cast<String>();
                                  _model.listScore =
                                      FetchChecklistByLevelCall.doubleScore(
                                    (_model.checklistdata?.jsonBody ?? ''),
                                  )!
                                          .toList()
                                          .cast<double>();
                                  _model.listURL =
                                      FetchChecklistByLevelCall.doubleBG(
                                    (_model.checklistdata?.jsonBody ?? ''),
                                  )!
                                          .toList()
                                          .cast<String>();
                                } else if (_model.dropDownValue == 'Lv. 12') {
                                  _model.listName =
                                      FetchChecklistByLevelCall.doubleName(
                                    (_model.checklistdata?.jsonBody ?? ''),
                                  )!
                                          .toList()
                                          .cast<String>();
                                  _model.listScore =
                                      FetchChecklistByLevelCall.doubleScore(
                                    (_model.checklistdata?.jsonBody ?? ''),
                                  )!
                                          .toList()
                                          .cast<double>();
                                  _model.listURL =
                                      FetchChecklistByLevelCall.doubleBG(
                                    (_model.checklistdata?.jsonBody ?? ''),
                                  )!
                                          .toList()
                                          .cast<String>();
                                } else if (_model.dropDownValue == 'Lv. 13') {
                                  _model.listName =
                                      FetchChecklistByLevelCall.doubleName(
                                    (_model.checklistdata?.jsonBody ?? ''),
                                  )!
                                          .toList()
                                          .cast<String>();
                                  _model.listScore =
                                      FetchChecklistByLevelCall.doubleScore(
                                    (_model.checklistdata?.jsonBody ?? ''),
                                  )!
                                          .toList()
                                          .cast<double>();
                                  _model.listURL =
                                      FetchChecklistByLevelCall.doubleBG(
                                    (_model.checklistdata?.jsonBody ?? ''),
                                  )!
                                          .toList()
                                          .cast<String>();
                                } else if (_model.dropDownValue == 'Lv. 14') {
                                  _model.listName =
                                      FetchChecklistByLevelCall.doubleName(
                                    (_model.checklistdata?.jsonBody ?? ''),
                                  )!
                                          .toList()
                                          .cast<String>();
                                  _model.listScore =
                                      FetchChecklistByLevelCall.doubleScore(
                                    (_model.checklistdata?.jsonBody ?? ''),
                                  )!
                                          .toList()
                                          .cast<double>();
                                  _model.listURL =
                                      FetchChecklistByLevelCall.doubleBG(
                                    (_model.checklistdata?.jsonBody ?? ''),
                                  )!
                                          .toList()
                                          .cast<String>();
                                } else if (_model.dropDownValue == 'Lv. 15') {
                                  _model.listName =
                                      FetchChecklistByLevelCall.doubleName(
                                    (_model.checklistdata?.jsonBody ?? ''),
                                  )!
                                          .toList()
                                          .cast<String>();
                                  _model.listScore =
                                      FetchChecklistByLevelCall.doubleScore(
                                    (_model.checklistdata?.jsonBody ?? ''),
                                  )!
                                          .toList()
                                          .cast<double>();
                                  _model.listURL =
                                      FetchChecklistByLevelCall.doubleBG(
                                    (_model.checklistdata?.jsonBody ?? ''),
                                  )!
                                          .toList()
                                          .cast<String>();
                                } else if (_model.dropDownValue == 'Lv. 16') {
                                  _model.listName =
                                      FetchChecklistByLevelCall.doubleName(
                                    (_model.checklistdata?.jsonBody ?? ''),
                                  )!
                                          .toList()
                                          .cast<String>();
                                  _model.listScore =
                                      FetchChecklistByLevelCall.doubleScore(
                                    (_model.checklistdata?.jsonBody ?? ''),
                                  )!
                                          .toList()
                                          .cast<double>();
                                  _model.listURL =
                                      FetchChecklistByLevelCall.doubleBG(
                                    (_model.checklistdata?.jsonBody ?? ''),
                                  )!
                                          .toList()
                                          .cast<String>();
                                } else if (_model.dropDownValue == 'Lv. 17') {
                                  _model.listName =
                                      FetchChecklistByLevelCall.doubleName(
                                    (_model.checklistdata?.jsonBody ?? ''),
                                  )!
                                          .toList()
                                          .cast<String>();
                                  _model.listScore =
                                      FetchChecklistByLevelCall.doubleScore(
                                    (_model.checklistdata?.jsonBody ?? ''),
                                  )!
                                          .toList()
                                          .cast<double>();
                                  _model.listURL =
                                      FetchChecklistByLevelCall.doubleBG(
                                    (_model.checklistdata?.jsonBody ?? ''),
                                  )!
                                          .toList()
                                          .cast<String>();
                                } else if (_model.dropDownValue == 'Lv. 18') {
                                  _model.listName =
                                      FetchChecklistByLevelCall.doubleName(
                                    (_model.checklistdata?.jsonBody ?? ''),
                                  )!
                                          .toList()
                                          .cast<String>();
                                  _model.listScore =
                                      FetchChecklistByLevelCall.doubleScore(
                                    (_model.checklistdata?.jsonBody ?? ''),
                                  )!
                                          .toList()
                                          .cast<double>();
                                  _model.listURL =
                                      FetchChecklistByLevelCall.doubleBG(
                                    (_model.checklistdata?.jsonBody ?? ''),
                                  )!
                                          .toList()
                                          .cast<String>();
                                } else if (_model.dropDownValue == 'Lv. 19') {
                                  _model.listName =
                                      FetchChecklistByLevelCall.doubleName(
                                    (_model.checklistdata?.jsonBody ?? ''),
                                  )!
                                          .toList()
                                          .cast<String>();
                                  _model.listScore =
                                      FetchChecklistByLevelCall.doubleScore(
                                    (_model.checklistdata?.jsonBody ?? ''),
                                  )!
                                          .toList()
                                          .cast<double>();
                                  _model.listURL =
                                      FetchChecklistByLevelCall.doubleBG(
                                    (_model.checklistdata?.jsonBody ?? ''),
                                  )!
                                          .toList()
                                          .cast<String>();
                                } else if (_model.dropDownValue == 'Lv. 20') {
                                  _model.listName =
                                      FetchChecklistByLevelCall.doubleName(
                                    (_model.checklistdata?.jsonBody ?? ''),
                                  )!
                                          .toList()
                                          .cast<String>();
                                  _model.listScore =
                                      FetchChecklistByLevelCall.doubleScore(
                                    (_model.checklistdata?.jsonBody ?? ''),
                                  )!
                                          .toList()
                                          .cast<double>();
                                  _model.listURL =
                                      FetchChecklistByLevelCall.doubleBG(
                                    (_model.checklistdata?.jsonBody ?? ''),
                                  )!
                                          .toList()
                                          .cast<String>();
                                } else if (_model.dropDownValue == 'Lv. 21') {
                                  _model.listName =
                                      FetchChecklistByLevelCall.doubleName(
                                    (_model.checklistdata?.jsonBody ?? ''),
                                  )!
                                          .toList()
                                          .cast<String>();
                                  _model.listScore =
                                      FetchChecklistByLevelCall.doubleScore(
                                    (_model.checklistdata?.jsonBody ?? ''),
                                  )!
                                          .toList()
                                          .cast<double>();
                                  _model.listURL =
                                      FetchChecklistByLevelCall.doubleBG(
                                    (_model.checklistdata?.jsonBody ?? ''),
                                  )!
                                          .toList()
                                          .cast<String>();
                                } else if (_model.dropDownValue == 'Lv. 22') {
                                  _model.listName =
                                      FetchChecklistByLevelCall.doubleName(
                                    (_model.checklistdata?.jsonBody ?? ''),
                                  )!
                                          .toList()
                                          .cast<String>();
                                  _model.listScore =
                                      FetchChecklistByLevelCall.doubleScore(
                                    (_model.checklistdata?.jsonBody ?? ''),
                                  )!
                                          .toList()
                                          .cast<double>();
                                  _model.listURL =
                                      FetchChecklistByLevelCall.doubleBG(
                                    (_model.checklistdata?.jsonBody ?? ''),
                                  )!
                                          .toList()
                                          .cast<String>();
                                } else if (_model.dropDownValue == 'Lv. 23') {
                                  _model.listName =
                                      FetchChecklistByLevelCall.doubleName(
                                    (_model.checklistdata?.jsonBody ?? ''),
                                  )!
                                          .toList()
                                          .cast<String>();
                                  _model.listScore =
                                      FetchChecklistByLevelCall.doubleScore(
                                    (_model.checklistdata?.jsonBody ?? ''),
                                  )!
                                          .toList()
                                          .cast<double>();
                                  _model.listURL =
                                      FetchChecklistByLevelCall.doubleBG(
                                    (_model.checklistdata?.jsonBody ?? ''),
                                  )!
                                          .toList()
                                          .cast<String>();
                                } else if (_model.dropDownValue == 'Lv. 24') {
                                  _model.listName =
                                      FetchChecklistByLevelCall.doubleName(
                                    (_model.checklistdata?.jsonBody ?? ''),
                                  )!
                                          .toList()
                                          .cast<String>();
                                  _model.listScore =
                                      FetchChecklistByLevelCall.doubleScore(
                                    (_model.checklistdata?.jsonBody ?? ''),
                                  )!
                                          .toList()
                                          .cast<double>();
                                  _model.listURL =
                                      FetchChecklistByLevelCall.doubleBG(
                                    (_model.checklistdata?.jsonBody ?? ''),
                                  )!
                                          .toList()
                                          .cast<String>();
                                } else if (_model.dropDownValue == 'Lv. 25') {
                                  _model.listName =
                                      FetchChecklistByLevelCall.doubleName(
                                    (_model.checklistdata?.jsonBody ?? ''),
                                  )!
                                          .toList()
                                          .cast<String>();
                                  _model.listScore =
                                      FetchChecklistByLevelCall.doubleScore(
                                    (_model.checklistdata?.jsonBody ?? ''),
                                  )!
                                          .toList()
                                          .cast<double>();
                                  _model.listURL =
                                      FetchChecklistByLevelCall.doubleBG(
                                    (_model.checklistdata?.jsonBody ?? ''),
                                  )!
                                          .toList()
                                          .cast<String>();
                                } else if (_model.dropDownValue == 'Lv. 26') {
                                  _model.listName =
                                      FetchChecklistByLevelCall.doubleName(
                                    (_model.checklistdata?.jsonBody ?? ''),
                                  )!
                                          .toList()
                                          .cast<String>();
                                  _model.listScore =
                                      FetchChecklistByLevelCall.doubleScore(
                                    (_model.checklistdata?.jsonBody ?? ''),
                                  )!
                                          .toList()
                                          .cast<double>();
                                  _model.listURL =
                                      FetchChecklistByLevelCall.doubleBG(
                                    (_model.checklistdata?.jsonBody ?? ''),
                                  )!
                                          .toList()
                                          .cast<String>();
                                } else {
                                  _model.listName =
                                      FetchChecklistByLevelCall.doubleName(
                                    (_model.checklistdata?.jsonBody ?? ''),
                                  )!
                                          .toList()
                                          .cast<String>();
                                  _model.listScore =
                                      FetchChecklistByLevelCall.doubleScore(
                                    (_model.checklistdata?.jsonBody ?? ''),
                                  )!
                                          .toList()
                                          .cast<double>();
                                  _model.listURL =
                                      FetchChecklistByLevelCall.doubleBG(
                                    (_model.checklistdata?.jsonBody ?? ''),
                                  )!
                                          .toList()
                                          .cast<String>();
                                }
                              } else {
                                _model.listName = [];
                                _model.listScore = [];
                                _model.listURL = [];
                                safeSetState(() {});
                                if (_model.dropDownValue == '10') {
                                  _model.listName =
                                      FetchChecklistByLevelCall.singleName(
                                    (_model.checklistdata?.jsonBody ?? ''),
                                  )!
                                          .toList()
                                          .cast<String>();
                                  _model.listScore =
                                      FetchChecklistByLevelCall.singleScore(
                                    (_model.checklistdata?.jsonBody ?? ''),
                                  )!
                                          .toList()
                                          .cast<double>();
                                  _model.listURL =
                                      FetchChecklistByLevelCall.singleBG(
                                    (_model.checklistdata?.jsonBody ?? ''),
                                  )!
                                          .toList()
                                          .cast<String>();
                                  safeSetState(() {});
                                } else if (_model.dropDownValue == '11') {
                                  _model.listName =
                                      FetchChecklistByLevelCall.singleName(
                                    (_model.checklistdata?.jsonBody ?? ''),
                                  )!
                                          .toList()
                                          .cast<String>();
                                  _model.listScore =
                                      FetchChecklistByLevelCall.singleScore(
                                    (_model.checklistdata?.jsonBody ?? ''),
                                  )!
                                          .toList()
                                          .cast<double>();
                                  _model.listURL =
                                      FetchChecklistByLevelCall.singleBG(
                                    (_model.checklistdata?.jsonBody ?? ''),
                                  )!
                                          .toList()
                                          .cast<String>();
                                  safeSetState(() {});
                                } else if (_model.dropDownValue == '12') {
                                  _model.listName =
                                      FetchChecklistByLevelCall.singleName(
                                    (_model.checklistdata?.jsonBody ?? ''),
                                  )!
                                          .toList()
                                          .cast<String>();
                                  _model.listScore =
                                      FetchChecklistByLevelCall.singleScore(
                                    (_model.checklistdata?.jsonBody ?? ''),
                                  )!
                                          .toList()
                                          .cast<double>();
                                  _model.listURL =
                                      FetchChecklistByLevelCall.singleBG(
                                    (_model.checklistdata?.jsonBody ?? ''),
                                  )!
                                          .toList()
                                          .cast<String>();
                                  safeSetState(() {});
                                } else if (_model.dropDownValue == '13') {
                                  _model.listName =
                                      FetchChecklistByLevelCall.singleName(
                                    (_model.checklistdata?.jsonBody ?? ''),
                                  )!
                                          .toList()
                                          .cast<String>();
                                  _model.listScore =
                                      FetchChecklistByLevelCall.singleScore(
                                    (_model.checklistdata?.jsonBody ?? ''),
                                  )!
                                          .toList()
                                          .cast<double>();
                                  _model.listURL =
                                      FetchChecklistByLevelCall.singleBG(
                                    (_model.checklistdata?.jsonBody ?? ''),
                                  )!
                                          .toList()
                                          .cast<String>();
                                  safeSetState(() {});
                                } else if (_model.dropDownValue == '14') {
                                  _model.listName =
                                      FetchChecklistByLevelCall.singleName(
                                    (_model.checklistdata?.jsonBody ?? ''),
                                  )!
                                          .toList()
                                          .cast<String>();
                                  _model.listScore =
                                      FetchChecklistByLevelCall.singleScore(
                                    (_model.checklistdata?.jsonBody ?? ''),
                                  )!
                                          .toList()
                                          .cast<double>();
                                  _model.listURL =
                                      FetchChecklistByLevelCall.singleBG(
                                    (_model.checklistdata?.jsonBody ?? ''),
                                  )!
                                          .toList()
                                          .cast<String>();
                                  safeSetState(() {});
                                } else if (_model.dropDownValue == '15') {
                                  _model.listName =
                                      FetchChecklistByLevelCall.singleName(
                                    (_model.checklistdata?.jsonBody ?? ''),
                                  )!
                                          .toList()
                                          .cast<String>();
                                  _model.listScore =
                                      FetchChecklistByLevelCall.singleScore(
                                    (_model.checklistdata?.jsonBody ?? ''),
                                  )!
                                          .toList()
                                          .cast<double>();
                                  _model.listURL =
                                      FetchChecklistByLevelCall.singleBG(
                                    (_model.checklistdata?.jsonBody ?? ''),
                                  )!
                                          .toList()
                                          .cast<String>();
                                  safeSetState(() {});
                                } else if (_model.dropDownValue == '16') {
                                  _model.listName =
                                      FetchChecklistByLevelCall.singleName(
                                    (_model.checklistdata?.jsonBody ?? ''),
                                  )!
                                          .toList()
                                          .cast<String>();
                                  _model.listScore =
                                      FetchChecklistByLevelCall.singleScore(
                                    (_model.checklistdata?.jsonBody ?? ''),
                                  )!
                                          .toList()
                                          .cast<double>();
                                  _model.listURL =
                                      FetchChecklistByLevelCall.singleBG(
                                    (_model.checklistdata?.jsonBody ?? ''),
                                  )!
                                          .toList()
                                          .cast<String>();
                                  safeSetState(() {});
                                } else if (_model.dropDownValue == '17') {
                                  _model.listName =
                                      FetchChecklistByLevelCall.singleName(
                                    (_model.checklistdata?.jsonBody ?? ''),
                                  )!
                                          .toList()
                                          .cast<String>();
                                  _model.listScore =
                                      FetchChecklistByLevelCall.singleScore(
                                    (_model.checklistdata?.jsonBody ?? ''),
                                  )!
                                          .toList()
                                          .cast<double>();
                                  _model.listURL =
                                      FetchChecklistByLevelCall.singleBG(
                                    (_model.checklistdata?.jsonBody ?? ''),
                                  )!
                                          .toList()
                                          .cast<String>();
                                  safeSetState(() {});
                                } else if (_model.dropDownValue == '18') {
                                  _model.listName =
                                      FetchChecklistByLevelCall.singleName(
                                    (_model.checklistdata?.jsonBody ?? ''),
                                  )!
                                          .toList()
                                          .cast<String>();
                                  _model.listScore =
                                      FetchChecklistByLevelCall.singleScore(
                                    (_model.checklistdata?.jsonBody ?? ''),
                                  )!
                                          .toList()
                                          .cast<double>();
                                  _model.listURL =
                                      FetchChecklistByLevelCall.singleBG(
                                    (_model.checklistdata?.jsonBody ?? ''),
                                  )!
                                          .toList()
                                          .cast<String>();
                                  safeSetState(() {});
                                } else if (_model.dropDownValue == '19') {
                                  _model.listName =
                                      FetchChecklistByLevelCall.singleName(
                                    (_model.checklistdata?.jsonBody ?? ''),
                                  )!
                                          .toList()
                                          .cast<String>();
                                  _model.listScore =
                                      FetchChecklistByLevelCall.singleScore(
                                    (_model.checklistdata?.jsonBody ?? ''),
                                  )!
                                          .toList()
                                          .cast<double>();
                                  _model.listURL =
                                      FetchChecklistByLevelCall.singleBG(
                                    (_model.checklistdata?.jsonBody ?? ''),
                                  )!
                                          .toList()
                                          .cast<String>();
                                  safeSetState(() {});
                                } else if (_model.dropDownValue == '20') {
                                  _model.listName =
                                      FetchChecklistByLevelCall.singleName(
                                    (_model.checklistdata?.jsonBody ?? ''),
                                  )!
                                          .toList()
                                          .cast<String>();
                                  _model.listScore =
                                      FetchChecklistByLevelCall.singleScore(
                                    (_model.checklistdata?.jsonBody ?? ''),
                                  )!
                                          .toList()
                                          .cast<double>();
                                  _model.listURL =
                                      FetchChecklistByLevelCall.singleBG(
                                    (_model.checklistdata?.jsonBody ?? ''),
                                  )!
                                          .toList()
                                          .cast<String>();
                                  safeSetState(() {});
                                } else if (_model.dropDownValue == '21') {
                                  _model.listName =
                                      FetchChecklistByLevelCall.singleName(
                                    (_model.checklistdata?.jsonBody ?? ''),
                                  )!
                                          .toList()
                                          .cast<String>();
                                  _model.listScore =
                                      FetchChecklistByLevelCall.singleScore(
                                    (_model.checklistdata?.jsonBody ?? ''),
                                  )!
                                          .toList()
                                          .cast<double>();
                                  _model.listURL =
                                      FetchChecklistByLevelCall.singleBG(
                                    (_model.checklistdata?.jsonBody ?? ''),
                                  )!
                                          .toList()
                                          .cast<String>();
                                  safeSetState(() {});
                                } else if (_model.dropDownValue == '22') {
                                  _model.listName =
                                      FetchChecklistByLevelCall.singleName(
                                    (_model.checklistdata?.jsonBody ?? ''),
                                  )!
                                          .toList()
                                          .cast<String>();
                                  _model.listScore =
                                      FetchChecklistByLevelCall.singleScore(
                                    (_model.checklistdata?.jsonBody ?? ''),
                                  )!
                                          .toList()
                                          .cast<double>();
                                  _model.listURL =
                                      FetchChecklistByLevelCall.singleBG(
                                    (_model.checklistdata?.jsonBody ?? ''),
                                  )!
                                          .toList()
                                          .cast<String>();
                                  safeSetState(() {});
                                } else if (_model.dropDownValue == '23') {
                                  _model.listName =
                                      FetchChecklistByLevelCall.singleName(
                                    (_model.checklistdata?.jsonBody ?? ''),
                                  )!
                                          .toList()
                                          .cast<String>();
                                  _model.listScore =
                                      FetchChecklistByLevelCall.singleScore(
                                    (_model.checklistdata?.jsonBody ?? ''),
                                  )!
                                          .toList()
                                          .cast<double>();
                                  _model.listURL =
                                      FetchChecklistByLevelCall.singleBG(
                                    (_model.checklistdata?.jsonBody ?? ''),
                                  )!
                                          .toList()
                                          .cast<String>();
                                  safeSetState(() {});
                                } else if (_model.dropDownValue == '24') {
                                  _model.listName =
                                      FetchChecklistByLevelCall.singleName(
                                    (_model.checklistdata?.jsonBody ?? ''),
                                  )!
                                          .toList()
                                          .cast<String>();
                                  _model.listScore =
                                      FetchChecklistByLevelCall.singleScore(
                                    (_model.checklistdata?.jsonBody ?? ''),
                                  )!
                                          .toList()
                                          .cast<double>();
                                  _model.listURL =
                                      FetchChecklistByLevelCall.singleBG(
                                    (_model.checklistdata?.jsonBody ?? ''),
                                  )!
                                          .toList()
                                          .cast<String>();
                                  safeSetState(() {});
                                } else if (_model.dropDownValue == '25') {
                                  _model.listName =
                                      FetchChecklistByLevelCall.singleName(
                                    (_model.checklistdata?.jsonBody ?? ''),
                                  )!
                                          .toList()
                                          .cast<String>();
                                  _model.listScore =
                                      FetchChecklistByLevelCall.singleScore(
                                    (_model.checklistdata?.jsonBody ?? ''),
                                  )!
                                          .toList()
                                          .cast<double>();
                                  _model.listURL =
                                      FetchChecklistByLevelCall.singleBG(
                                    (_model.checklistdata?.jsonBody ?? ''),
                                  )!
                                          .toList()
                                          .cast<String>();
                                  safeSetState(() {});
                                } else if (_model.dropDownValue == '26') {
                                  _model.listName =
                                      FetchChecklistByLevelCall.singleName(
                                    (_model.checklistdata?.jsonBody ?? ''),
                                  )!
                                          .toList()
                                          .cast<String>();
                                  _model.listScore =
                                      FetchChecklistByLevelCall.singleScore(
                                    (_model.checklistdata?.jsonBody ?? ''),
                                  )!
                                          .toList()
                                          .cast<double>();
                                  _model.listURL =
                                      FetchChecklistByLevelCall.singleBG(
                                    (_model.checklistdata?.jsonBody ?? ''),
                                  )!
                                          .toList()
                                          .cast<String>();
                                  safeSetState(() {});
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
                                  font: GoogleFonts.ubuntu(
                                    fontWeight: FontWeight.w600,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .fontStyle,
                                  ),
                                  color: Colors.white,
                                  fontSize: 16.0,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.w600,
                                  fontStyle: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .fontStyle,
                                ),
                          ),
                        ),
                        Expanded(
                          child: Align(
                            alignment: AlignmentDirectional(1.0, 0.0),
                            child: Builder(
                              builder: (context) => Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    16.0, 0.0, 12.0, 0.0),
                                child: FlutterFlowDropDown<String>(
                                  controller: _model.dropDownValueController ??=
                                      FormFieldController<String>(
                                    _model.dropDownValue ??= '',
                                  ),
                                  options: List<String>.from([
                                    '10',
                                    '11',
                                    '12',
                                    '13',
                                    '14',
                                    '15',
                                    '16',
                                    '17',
                                    '18',
                                    '19',
                                    '20',
                                    '21',
                                    '22',
                                    '23',
                                    '24',
                                    '25',
                                    '26',
                                    '27'
                                  ]),
                                  optionLabels: [
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
                                    _model.listName = [];
                                    _model.listScore = [];
                                    _model.listURL = [];
                                    _model.checklistdata =
                                        await FetchChecklistByLevelCall.call(
                                      username: FFAppState().userEmail,
                                      password: FFAppState().userPw,
                                      level: _model.dropDownValue,
                                    );

                                    if ((_model.checklistdata?.succeeded ??
                                        true)) {
                                      if (_model.switchValue == true) {
                                        _model.listName =
                                            FetchChecklistByLevelCall
                                                    .doubleName(
                                          (_model.checklistdata?.jsonBody ??
                                              ''),
                                        )!
                                                .toList()
                                                .cast<String>();
                                        _model.listScore =
                                            FetchChecklistByLevelCall
                                                    .doubleScore(
                                          (_model.checklistdata?.jsonBody ??
                                              ''),
                                        )!
                                                .toList()
                                                .cast<double>();
                                        _model.listURL =
                                            FetchChecklistByLevelCall.doubleBG(
                                          (_model.checklistdata?.jsonBody ??
                                              ''),
                                        )!
                                                .toList()
                                                .cast<String>();
                                        safeSetState(() {});
                                      } else {
                                        _model.listName =
                                            FetchChecklistByLevelCall
                                                    .singleName(
                                          (_model.checklistdata?.jsonBody ??
                                              ''),
                                        )!
                                                .toList()
                                                .cast<String>();
                                        _model.listScore =
                                            FetchChecklistByLevelCall
                                                    .singleScore(
                                          (_model.checklistdata?.jsonBody ??
                                              ''),
                                        )!
                                                .toList()
                                                .cast<double>();
                                        _model.listURL =
                                            FetchChecklistByLevelCall.singleBG(
                                          (_model.checklistdata?.jsonBody ??
                                              ''),
                                        )!
                                                .toList()
                                                .cast<String>();
                                        safeSetState(() {});
                                      }
                                    } else {
                                      await showDialog(
                                        context: context,
                                        builder: (dialogContext) {
                                          return Dialog(
                                            elevation: 0,
                                            insetPadding: EdgeInsets.zero,
                                            backgroundColor: Colors.transparent,
                                            alignment: AlignmentDirectional(
                                                    0.0, 0.0)
                                                .resolve(
                                                    Directionality.of(context)),
                                            child: GestureDetector(
                                              onTap: () {
                                                FocusScope.of(dialogContext)
                                                    .unfocus();
                                                FocusManager
                                                    .instance.primaryFocus
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
                                    }

                                    safeSetState(() {});
                                  },
                                  width: 150.0,
                                  height: 35.0,
                                  maxHeight: 400.0,
                                  textStyle: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        font: GoogleFonts.ubuntu(
                                          fontWeight: FontWeight.w600,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMedium
                                                  .fontStyle,
                                        ),
                                        color: Colors.white,
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.w600,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .fontStyle,
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
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(6.0, 16.0, 0.0, 12.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 0.0, 0.0),
                        child: Text(
                          'Lv.',
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    font: GoogleFonts.ubuntu(
                                      fontWeight: FontWeight.w600,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontStyle,
                                    ),
                                    fontSize: 18.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.w600,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .fontStyle,
                                  ),
                        ),
                      ),
                      Text(
                        valueOrDefault<String>(
                          _model.dropDownValue,
                          '- -',
                        ),
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              font: GoogleFonts.ubuntu(
                                fontWeight: FontWeight.w600,
                                fontStyle: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .fontStyle,
                              ),
                              color: Colors.white,
                              fontSize: 18.0,
                              letterSpacing: 0.0,
                              fontWeight: FontWeight.w600,
                              fontStyle: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .fontStyle,
                            ),
                      ),
                      Text(
                        valueOrDefault<String>(
                          _model.switchValue! ? 'Double' : 'Single',
                          '[PlayType]',
                        ),
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              font: GoogleFonts.ubuntu(
                                fontWeight: FontWeight.w600,
                                fontStyle: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .fontStyle,
                              ),
                              color: valueOrDefault<Color>(
                                _model.switchValue!
                                    ? Color(0xB133FF33)
                                    : Color(0xFFFF0000),
                                Colors.white,
                              ),
                              fontSize: 18.0,
                              letterSpacing: 0.0,
                              fontWeight: FontWeight.w600,
                              fontStyle: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .fontStyle,
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
                                  font: GoogleFonts.ubuntu(
                                    fontWeight: FontWeight.w600,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .fontStyle,
                                  ),
                                  color: Colors.white,
                                  fontSize: 18.0,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.w600,
                                  fontStyle: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .fontStyle,
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
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 6,
                          childAspectRatio: 1.3,
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
                              child: Stack(
                                children: [
                                  if (_model.listScore
                                          .elementAtOrNull(msdIndex) !=
                                      0.0)
                                    Align(
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
                                          font: GoogleFonts.ubuntu(
                                            fontWeight: FontWeight.w900,
                                            fontStyle:
                                                FlutterFlowTheme.of(context)
                                                    .bodyMedium
                                                    .fontStyle,
                                          ),
                                          color: () {
                                            if (_model.listScore
                                                    .elementAtOrNull(
                                                        msdIndex)! >=
                                                99.0) {
                                              return Color(0xFF1460D4);
                                            } else if (_model.listScore
                                                    .elementAtOrNull(
                                                        msdIndex)! >=
                                                97.0) {
                                              return Color(0xFFFFD700);
                                            } else if (_model.listScore
                                                    .elementAtOrNull(
                                                        msdIndex)! >=
                                                95.0) {
                                              return Color(0xFF88939F);
                                            } else if (_model.listScore
                                                    .elementAtOrNull(
                                                        msdIndex)! >=
                                                90.0) {
                                              return Color(0xFF00E100);
                                            } else {
                                              return Color(0xFFD80000);
                                            }
                                          }(),
                                          fontSize: 22.0,
                                          letterSpacing: 1.0,
                                          fontWeight: FontWeight.w900,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMedium
                                                  .fontStyle,
                                          shadows: [
                                            Shadow(
                                              color: Colors.white,
                                              offset: Offset(1.5, 1.5),
                                              blurRadius: 1.5,
                                            ),
                                            Shadow(
                                              color: Colors.white,
                                              offset: Offset(-1.5, -1.5),
                                              blurRadius: 1.5,
                                            ),
                                            Shadow(
                                              color: Colors.white,
                                              offset: Offset(1.5, -1.5),
                                              blurRadius: 1.5,
                                            ),
                                            Shadow(
                                              color: Colors.white,
                                              offset: Offset(-1.5, 1.5),
                                              blurRadius: 1.5,
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                ],
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
        ),
      ),
    );
  }
}
