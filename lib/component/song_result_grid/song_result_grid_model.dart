import '/component/grid_component/grid_component_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'song_result_grid_widget.dart' show SongResultGridWidget;
import 'package:flutter/material.dart';

class SongResultGridModel extends FlutterFlowModel<SongResultGridWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for Grid_component component.
  late GridComponentModel gridComponentModel;

  @override
  void initState(BuildContext context) {
    gridComponentModel = createModel(context, () => GridComponentModel());
  }

  @override
  void dispose() {
    gridComponentModel.dispose();
  }
}
