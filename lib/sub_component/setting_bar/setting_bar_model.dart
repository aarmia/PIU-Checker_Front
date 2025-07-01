import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'setting_bar_widget.dart' show SettingBarWidget;
import 'package:flutter/material.dart';

class SettingBarModel extends FlutterFlowModel<SettingBarWidget> {
  ///  Local state fields for this component.

  bool isLoading = false;

  ///  State fields for stateful widgets in this component.

  // Stores action output result for [Backend Call - API (FetchUserData)] action in Container widget.
  ApiCallResponse? refreshDATA;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
