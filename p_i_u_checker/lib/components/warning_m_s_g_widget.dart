import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'warning_m_s_g_model.dart';
export 'warning_m_s_g_model.dart';

class WarningMSGWidget extends StatefulWidget {
  const WarningMSGWidget({super.key});

  @override
  State<WarningMSGWidget> createState() => _WarningMSGWidgetState();
}

class _WarningMSGWidgetState extends State<WarningMSGWidget> {
  late WarningMSGModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => WarningMSGModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300.0,
      height: 100.0,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).tertiary,
        borderRadius: BorderRadius.circular(24.0),
        border: Border.all(
          color: Colors.white,
          width: 4.0,
        ),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            'Oops...',
            style: FlutterFlowTheme.of(context).bodyMedium.override(
                  fontFamily: 'Ubuntu',
                  color: FlutterFlowTheme.of(context).error,
                  fontSize: 18.0,
                  letterSpacing: 0.0,
                  fontWeight: FontWeight.bold,
                ),
          ),
          Text(
            'There is something wrong... Try Again',
            style: FlutterFlowTheme.of(context).bodyMedium.override(
                  fontFamily: 'Ubuntu',
                  color: Colors.white,
                  fontSize: 15.0,
                  letterSpacing: 0.0,
                  fontWeight: FontWeight.bold,
                ),
          ),
        ],
      ),
    );
  }
}
