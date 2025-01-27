import '/component/img_list/double_ball_img/double_ball_img_widget.dart';
import '/component/img_list/playresult/play_result/play_result_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:ui';
import 'playresult_plate_widget.dart' show PlayresultPlateWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class PlayresultPlateModel extends FlutterFlowModel<PlayresultPlateWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for double_ball_img component.
  late DoubleBallImgModel doubleBallImgModel;
  // Model for play_result component.
  late PlayResultModel playResultModel;

  @override
  void initState(BuildContext context) {
    doubleBallImgModel = createModel(context, () => DoubleBallImgModel());
    playResultModel = createModel(context, () => PlayResultModel());
  }

  @override
  void dispose() {
    doubleBallImgModel.dispose();
    playResultModel.dispose();
  }
}
