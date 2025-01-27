import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'song_result_list_model.dart';
export 'song_result_list_model.dart';

class SongResultListWidget extends StatefulWidget {
  const SongResultListWidget({super.key});

  @override
  State<SongResultListWidget> createState() => _SongResultListWidgetState();
}

class _SongResultListWidgetState extends State<SongResultListWidget> {
  late SongResultListModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SongResultListModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(16.0),
      child: Container(
        width: 100.0,
        height: 50.0,
        decoration: BoxDecoration(
          color: FlutterFlowTheme.of(context).tertiary,
          borderRadius: BorderRadius.circular(22.0),
          border: Border.all(
            color: Colors.white,
            width: 2.0,
          ),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              '1',
              style: FlutterFlowTheme.of(context).bodyMedium.override(
                    fontFamily: 'Ubuntu',
                    color: Colors.white,
                    fontSize: 22.0,
                    letterSpacing: 0.0,
                    fontWeight: FontWeight.bold,
                  ),
            ),
            Text(
              '[Song Name 1]',
              style: FlutterFlowTheme.of(context).bodyMedium.override(
                    fontFamily: 'Ubuntu',
                    fontSize: 18.0,
                    letterSpacing: 0.0,
                    fontWeight: FontWeight.w500,
                  ),
            ),
            Text(
              '[Score]',
              style: FlutterFlowTheme.of(context).bodyMedium.override(
                    fontFamily: 'Ubuntu',
                    fontSize: 18.0,
                    letterSpacing: 0.0,
                    fontWeight: FontWeight.bold,
                  ),
            ),
          ].divide(SizedBox(width: 12.0)),
        ),
      ),
    );
  }
}
