import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/sub_component/setting_bar/setting_bar_widget.dart';
import 'home_page_widget.dart' show HomePageWidget;
import 'package:flutter/material.dart';

class HomePageModel extends FlutterFlowModel<HomePageWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for setting_bar component.
  late SettingBarModel settingBarModel;
  // State field(s) for DropDown widget.
  String? dropDownValue;
  FormFieldController<String>? dropDownValueController;

  @override
  void initState(BuildContext context) {
    settingBarModel = createModel(context, () => SettingBarModel());
  }

  @override
  void dispose() {
    settingBarModel.dispose();
  }

  /// Action blocks.
  Future fetchdata(BuildContext context) async {}
}
