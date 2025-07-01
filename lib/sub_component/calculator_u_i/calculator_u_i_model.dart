import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'calculator_u_i_widget.dart' show CalculatorUIWidget;
import 'package:flutter/material.dart';

class CalculatorUIModel extends FlutterFlowModel<CalculatorUIWidget> {
  ///  Local state fields for this component.

  int? rating;

  ///  State fields for stateful widgets in this component.

  // State field(s) for LevelDropDown widget.
  double? levelDropDownValue;
  FormFieldController<double>? levelDropDownValueController;
  // State field(s) for PlateDropDown widget.
  double? plateDropDownValue;
  FormFieldController<double>? plateDropDownValueController;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
