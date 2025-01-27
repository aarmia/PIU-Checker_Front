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
import 'checklist_page_widget.dart' show ChecklistPageWidget;
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ChecklistPageModel extends FlutterFlowModel<ChecklistPageWidget> {
  ///  Local state fields for this page.

  List<String> listName = [];
  void addToListName(String item) => listName.add(item);
  void removeFromListName(String item) => listName.remove(item);
  void removeAtIndexFromListName(int index) => listName.removeAt(index);
  void insertAtIndexInListName(int index, String item) =>
      listName.insert(index, item);
  void updateListNameAtIndex(int index, Function(String) updateFn) =>
      listName[index] = updateFn(listName[index]);

  List<double> listScore = [];
  void addToListScore(double item) => listScore.add(item);
  void removeFromListScore(double item) => listScore.remove(item);
  void removeAtIndexFromListScore(int index) => listScore.removeAt(index);
  void insertAtIndexInListScore(int index, double item) =>
      listScore.insert(index, item);
  void updateListScoreAtIndex(int index, Function(double) updateFn) =>
      listScore[index] = updateFn(listScore[index]);

  List<String> listURL = [];
  void addToListURL(String item) => listURL.add(item);
  void removeFromListURL(String item) => listURL.remove(item);
  void removeAtIndexFromListURL(int index) => listURL.removeAt(index);
  void insertAtIndexInListURL(int index, String item) =>
      listURL.insert(index, item);
  void updateListURLAtIndex(int index, Function(String) updateFn) =>
      listURL[index] = updateFn(listURL[index]);

  ///  State fields for stateful widgets in this page.

  // Model for setting_bar component.
  late SettingBarModel settingBarModel;
  // State field(s) for Switch widget.
  bool? switchValue;
  // State field(s) for DropDown widget.
  String? dropDownValue;
  FormFieldController<String>? dropDownValueController;
  // Stores action output result for [Backend Call - API (FetchChecklistData)] action in IconButton widget.
  ApiCallResponse? loadData;

  @override
  void initState(BuildContext context) {
    settingBarModel = createModel(context, () => SettingBarModel());
  }

  @override
  void dispose() {
    settingBarModel.dispose();
  }
}
