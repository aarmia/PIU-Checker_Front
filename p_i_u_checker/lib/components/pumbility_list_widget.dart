import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'pumbility_list_model.dart';
export 'pumbility_list_model.dart';

class PumbilityListWidget extends StatefulWidget {
  const PumbilityListWidget({super.key});

  @override
  State<PumbilityListWidget> createState() => _PumbilityListWidgetState();
}

class _PumbilityListWidgetState extends State<PumbilityListWidget> {
  late PumbilityListModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PumbilityListModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      elevation: 1.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12.0),
      ),
      child: Container(
        width: MediaQuery.sizeOf(context).width * 1.0,
        decoration: BoxDecoration(
          color: Color(0xFF1A1A2E),
          borderRadius: BorderRadius.circular(12.0),
          border: Border.all(
            color: Colors.white,
          ),
        ),
        child: Padding(
          padding: EdgeInsetsDirectional.fromSTEB(16.0, 16.0, 16.0, 16.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Beethoven Virus',
                    style: FlutterFlowTheme.of(context).titleMedium.override(
                          fontFamily: 'Ubuntu',
                          color: Colors.white,
                          fontSize: 18.0,
                          letterSpacing: 0.0,
                          fontWeight: FontWeight.w600,
                        ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(4.0, 8.0, 4.0, 8.0),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Color(0x4D18AA99),
                        borderRadius: BorderRadius.circular(12.0),
                      ),
                      child: Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(
                          'SSS',
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Inter',
                                    color: Colors.white,
                                    fontSize: 14.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.normal,
                                  ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '1,267',
                    style: FlutterFlowTheme.of(context).bodySmall.override(
                          fontFamily: 'Ubuntu',
                          color: Colors.white,
                          fontSize: 15.0,
                          letterSpacing: 0.0,
                          fontWeight: FontWeight.normal,
                        ),
                  ),
                  Text(
                    'YYYY-MM-NN hh:mm:ss',
                    style: FlutterFlowTheme.of(context).bodySmall.override(
                          fontFamily: 'Inter',
                          color: Color(0xFF57636C),
                          fontSize: 12.0,
                          letterSpacing: 0.0,
                          fontWeight: FontWeight.normal,
                        ),
                  ),
                ],
              ),
            ].divide(SizedBox(height: 8.0)),
          ),
        ),
      ),
    );
  }
}
