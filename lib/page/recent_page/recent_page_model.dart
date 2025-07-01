import '/flutter_flow/flutter_flow_util.dart';
import '/sub_component/setting_bar/setting_bar_widget.dart';
import '/index.dart';
import 'recent_page_widget.dart' show RecentPageWidget;
import 'package:flutter/material.dart';

class RecentPageModel extends FlutterFlowModel<RecentPageWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for setting_bar component.
  late SettingBarModel settingBarModel;

  @override
  void initState(BuildContext context) {
    settingBarModel = createModel(context, () => SettingBarModel());
  }

  @override
  void dispose() {
    settingBarModel.dispose();
  }
}
