import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'grid_component_model.dart';
export 'grid_component_model.dart';

class GridComponentWidget extends StatefulWidget {
  const GridComponentWidget({super.key});

  @override
  State<GridComponentWidget> createState() => _GridComponentWidgetState();
}

class _GridComponentWidgetState extends State<GridComponentWidget> {
  late GridComponentModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => GridComponentModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100.0,
      height: 100.0,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).tertiary,
        image: DecorationImage(
          fit: BoxFit.cover,
          image: Image.network(
            'https://www.piugame.com/data/song_img/eb729c74a7b424a6598e6a18b5025346.png?v=20241128114126',
          ).image,
        ),
      ),
      child: Align(
        alignment: AlignmentDirectional(0.0, 0.0),
        child: Text(
          '99.8',
          textAlign: TextAlign.center,
          style: FlutterFlowTheme.of(context).bodyMedium.override(
            font: GoogleFonts.ubuntu(
              fontWeight: FontWeight.w900,
              fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
            ),
            color: Color(0xFFFFBA1D),
            fontSize: 24.0,
            letterSpacing: 1.0,
            fontWeight: FontWeight.w900,
            fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
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
    );
  }
}
