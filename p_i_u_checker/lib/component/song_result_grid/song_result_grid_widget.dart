import '/component/grid_component/grid_component_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'song_result_grid_model.dart';
export 'song_result_grid_model.dart';

class SongResultGridWidget extends StatefulWidget {
  const SongResultGridWidget({super.key});

  @override
  State<SongResultGridWidget> createState() => _SongResultGridWidgetState();
}

class _SongResultGridWidgetState extends State<SongResultGridWidget> {
  late SongResultGridModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SongResultGridModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GridView(
      padding: EdgeInsets.zero,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 5,
        childAspectRatio: 1.0,
      ),
      scrollDirection: Axis.vertical,
      children: [
        wrapWithModel(
          model: _model.gridComponentModel,
          updateCallback: () => safeSetState(() {}),
          child: GridComponentWidget(),
        ),
        Container(
          width: 100.0,
          height: 70.0,
          decoration: BoxDecoration(
            color: FlutterFlowTheme.of(context).tertiary,
            image: DecorationImage(
              fit: BoxFit.cover,
              image: Image.network(
                'https://www.piugame.com/data/song_img/09c5d38e13221437e549c596fcaac4c6.png?v=20241128114126',
              ).image,
            ),
          ),
          child: Align(
            alignment: AlignmentDirectional(0.0, 0.0),
            child: Text(
              '99.8',
              textAlign: TextAlign.center,
              style: FlutterFlowTheme.of(context).bodyMedium.override(
                fontFamily: 'Ubuntu',
                color: Color(0xFFFF0000),
                fontSize: 24.0,
                letterSpacing: 1.0,
                fontWeight: FontWeight.w900,
                shadows: [
                  Shadow(
                    color: Colors.white,
                    offset: Offset(2.0, 1.0),
                    blurRadius: 2.0,
                  ),
                  Shadow(
                    color: Colors.white,
                    offset: Offset(1.0, 1.0),
                    blurRadius: 2.0,
                  ),
                  Shadow(
                    color: Colors.white,
                    offset: Offset(2.0, 1.0),
                    blurRadius: 2.0,
                  ),
                  Shadow(
                    color: Colors.white,
                    offset: Offset(-1.0, -1.0),
                    blurRadius: 2.0,
                  ),
                  Shadow(
                    color: FlutterFlowTheme.of(context).secondaryText,
                    offset: Offset(-2.0, -1.0),
                    blurRadius: 2.0,
                  ),
                  Shadow(
                    color: Colors.white,
                    offset: Offset(-2.0, -2.0),
                    blurRadius: 2.0,
                  ),
                  Shadow(
                    color: Colors.white,
                    offset: Offset(-2.0, 1.0),
                    blurRadius: 2.0,
                  ),
                  Shadow(
                    color: Colors.white,
                    offset: Offset(-1.0, 2.0),
                    blurRadius: 2.0,
                  ),
                  Shadow(
                    color: Colors.white,
                    offset: Offset(-1.0, 1.0),
                    blurRadius: 2.0,
                  ),
                  Shadow(
                    color: Colors.white,
                    offset: Offset(2.0, -1.0),
                    blurRadius: 2.0,
                  ),
                  Shadow(
                    color: Colors.white,
                    offset: Offset(1.0, -2.0),
                    blurRadius: 2.0,
                  ),
                  Shadow(
                    color: Colors.white,
                    offset: Offset(-1.0, -1.0),
                    blurRadius: 2.0,
                  )
                ],
              ),
            ),
          ),
        ),
        Container(
          width: 100.0,
          height: 100.0,
          decoration: BoxDecoration(
            color: FlutterFlowTheme.of(context).tertiary,
            image: DecorationImage(
              fit: BoxFit.cover,
              image: Image.network(
                'https://www.piugame.com/data/song_img/eb5af940defb17449259e75e16926870.png?v=20241128114126',
              ).image,
            ),
          ),
          child: Align(
            alignment: AlignmentDirectional(0.0, 0.0),
            child: Text(
              '99.8',
              textAlign: TextAlign.center,
              style: FlutterFlowTheme.of(context).bodyMedium.override(
                fontFamily: 'Ubuntu',
                color: FlutterFlowTheme.of(context).primary,
                fontSize: 24.0,
                letterSpacing: 1.0,
                fontWeight: FontWeight.w900,
                shadows: [
                  Shadow(
                    color: Colors.white,
                    offset: Offset(2.0, 1.0),
                    blurRadius: 2.0,
                  ),
                  Shadow(
                    color: Colors.white,
                    offset: Offset(1.0, 1.0),
                    blurRadius: 2.0,
                  ),
                  Shadow(
                    color: Colors.white,
                    offset: Offset(2.0, 1.0),
                    blurRadius: 2.0,
                  ),
                  Shadow(
                    color: Colors.white,
                    offset: Offset(-1.0, -1.0),
                    blurRadius: 2.0,
                  ),
                  Shadow(
                    color: FlutterFlowTheme.of(context).secondaryText,
                    offset: Offset(-2.0, -1.0),
                    blurRadius: 2.0,
                  ),
                  Shadow(
                    color: Colors.white,
                    offset: Offset(-2.0, -2.0),
                    blurRadius: 2.0,
                  ),
                  Shadow(
                    color: Colors.white,
                    offset: Offset(-2.0, 1.0),
                    blurRadius: 2.0,
                  ),
                  Shadow(
                    color: Colors.white,
                    offset: Offset(-1.0, 2.0),
                    blurRadius: 2.0,
                  ),
                  Shadow(
                    color: Colors.white,
                    offset: Offset(-1.0, 1.0),
                    blurRadius: 2.0,
                  ),
                  Shadow(
                    color: Colors.white,
                    offset: Offset(2.0, -1.0),
                    blurRadius: 2.0,
                  ),
                  Shadow(
                    color: Colors.white,
                    offset: Offset(1.0, -2.0),
                    blurRadius: 2.0,
                  ),
                  Shadow(
                    color: Colors.white,
                    offset: Offset(-1.0, -1.0),
                    blurRadius: 2.0,
                  )
                ],
              ),
            ),
          ),
        ),
        Container(
          width: 100.0,
          height: 100.0,
          decoration: BoxDecoration(
            color: FlutterFlowTheme.of(context).tertiary,
          ),
          child: Align(
            alignment: AlignmentDirectional(0.0, 0.0),
            child: Text(
              '99.8',
              textAlign: TextAlign.center,
              style: FlutterFlowTheme.of(context).bodyMedium.override(
                fontFamily: 'Ubuntu',
                color: FlutterFlowTheme.of(context).primary,
                fontSize: 24.0,
                letterSpacing: 1.0,
                fontWeight: FontWeight.w900,
                shadows: [
                  Shadow(
                    color: Colors.white,
                    offset: Offset(2.0, 1.0),
                    blurRadius: 2.0,
                  ),
                  Shadow(
                    color: Colors.white,
                    offset: Offset(1.0, 1.0),
                    blurRadius: 2.0,
                  ),
                  Shadow(
                    color: Colors.white,
                    offset: Offset(2.0, 1.0),
                    blurRadius: 2.0,
                  ),
                  Shadow(
                    color: Colors.white,
                    offset: Offset(-1.0, -1.0),
                    blurRadius: 2.0,
                  ),
                  Shadow(
                    color: FlutterFlowTheme.of(context).secondaryText,
                    offset: Offset(-2.0, -1.0),
                    blurRadius: 2.0,
                  ),
                  Shadow(
                    color: Colors.white,
                    offset: Offset(-2.0, -2.0),
                    blurRadius: 2.0,
                  ),
                  Shadow(
                    color: Colors.white,
                    offset: Offset(-2.0, 1.0),
                    blurRadius: 2.0,
                  ),
                  Shadow(
                    color: Colors.white,
                    offset: Offset(-1.0, 2.0),
                    blurRadius: 2.0,
                  ),
                  Shadow(
                    color: Colors.white,
                    offset: Offset(-1.0, 1.0),
                    blurRadius: 2.0,
                  ),
                  Shadow(
                    color: Colors.white,
                    offset: Offset(2.0, -1.0),
                    blurRadius: 2.0,
                  ),
                  Shadow(
                    color: Colors.white,
                    offset: Offset(1.0, -2.0),
                    blurRadius: 2.0,
                  ),
                  Shadow(
                    color: Colors.white,
                    offset: Offset(-1.0, -1.0),
                    blurRadius: 2.0,
                  )
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
