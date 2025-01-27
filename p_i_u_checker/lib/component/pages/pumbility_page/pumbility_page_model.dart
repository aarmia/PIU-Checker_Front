import '/component/function/setting_bar/setting_bar_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'pumbility_page_widget.dart' show PumbilityPageWidget;
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class PumbilityPageModel extends FlutterFlowModel<PumbilityPageWidget> {
  ///  Local state fields for this page.

  List<int> scoreNumber = [
    1,
    2,
    3,
    4,
    5,
    6,
    7,
    8,
    9,
    10,
    11,
    12,
    13,
    14,
    15,
    16,
    17,
    18,
    19,
    20,
    21,
    22,
    23,
    24,
    25,
    26,
    27,
    28,
    29,
    30,
    31,
    32,
    33,
    34,
    35,
    36,
    37,
    38,
    39,
    40,
    41,
    42,
    43,
    44,
    45,
    46,
    47,
    48,
    49,
    50
  ];
  void addToScoreNumber(int item) => scoreNumber.add(item);
  void removeFromScoreNumber(int item) => scoreNumber.remove(item);
  void removeAtIndexFromScoreNumber(int index) => scoreNumber.removeAt(index);
  void insertAtIndexInScoreNumber(int index, int item) =>
      scoreNumber.insert(index, item);
  void updateScoreNumberAtIndex(int index, Function(int) updateFn) =>
      scoreNumber[index] = updateFn(scoreNumber[index]);

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
