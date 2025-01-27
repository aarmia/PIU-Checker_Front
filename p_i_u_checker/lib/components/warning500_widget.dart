import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'warning500_model.dart';
export 'warning500_model.dart';

class Warning500Widget extends StatefulWidget {
  const Warning500Widget({super.key});

  @override
  State<Warning500Widget> createState() => _Warning500WidgetState();
}

class _Warning500WidgetState extends State<Warning500Widget> {
  late Warning500Model _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => Warning500Model());
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
            'Log In Failed!',
            style: FlutterFlowTheme.of(context).bodyMedium.override(
                  fontFamily: 'Ubuntu',
                  color: FlutterFlowTheme.of(context).error,
                  fontSize: 18.0,
                  letterSpacing: 0.0,
                  fontWeight: FontWeight.bold,
                ),
          ),
          Text(
            'Wrong ID or PW: Check your Account',
            style: FlutterFlowTheme.of(context).bodyMedium.override(
                  fontFamily: 'Ubuntu',
                  color: Colors.white,
                  fontSize: 16.0,
                  letterSpacing: 0.0,
                  fontWeight: FontWeight.bold,
                ),
          ),
        ],
      ),
    );
  }
}
