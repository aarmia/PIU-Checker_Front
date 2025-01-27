import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'no_result_model.dart';
export 'no_result_model.dart';

class NoResultWidget extends StatefulWidget {
  const NoResultWidget({super.key});

  @override
  State<NoResultWidget> createState() => _NoResultWidgetState();
}

class _NoResultWidgetState extends State<NoResultWidget> {
  late NoResultModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => NoResultModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.sizeOf(context).width * 1.0,
      height: MediaQuery.sizeOf(context).height * 1.0,
      decoration: BoxDecoration(),
      child: Align(
        alignment: AlignmentDirectional(0.0, 0.0),
        child: Text(
          'No Results Found',
          style: FlutterFlowTheme.of(context).bodyMedium.override(
                fontFamily: 'Ubuntu',
                fontSize: 24.0,
                letterSpacing: 0.0,
                fontWeight: FontWeight.w800,
              ),
        ),
      ),
    );
  }
}
