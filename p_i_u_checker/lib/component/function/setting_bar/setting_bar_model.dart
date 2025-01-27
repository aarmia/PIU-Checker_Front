import '/backend/api_requests/api_calls.dart';
import '/components/warning404_widget.dart';
import '/components/warning429_widget.dart';
import '/components/warning500_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:ui';
import 'setting_bar_widget.dart' show SettingBarWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class SettingBarModel extends FlutterFlowModel<SettingBarWidget> {
  ///  State fields for stateful widgets in this component.

  // Stores action output result for [Backend Call - API (FetchUserData)] action in IconButton widget.
  ApiCallResponse? refreshDATA;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
