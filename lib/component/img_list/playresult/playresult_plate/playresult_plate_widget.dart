import '/component/img_list/double_ball_img/double_ball_img_widget.dart';
import '/component/img_list/playresult/play_result/play_result_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'playresult_plate_model.dart';
export 'playresult_plate_model.dart';

class PlayresultPlateWidget extends StatefulWidget {
  const PlayresultPlateWidget({super.key});

  @override
  State<PlayresultPlateWidget> createState() => _PlayresultPlateWidgetState();
}

class _PlayresultPlateWidgetState extends State<PlayresultPlateWidget> {
  late PlayresultPlateModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PlayresultPlateModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(12.0),
      child: Container(
        height: 150.0,
        decoration: BoxDecoration(
          color: Colors.black,
          image: DecorationImage(
            fit: BoxFit.contain,
            alignment: AlignmentDirectional(0.0, -0.5),
            image: Image.network(
              'https://www.piugame.com/data/song_img/1cdf3c4a70abd903f51f0f9e969830ee.png?v=20241128114126',
            ).image,
          ),
          borderRadius: BorderRadius.circular(20.0),
          shape: BoxShape.rectangle,
          border: Border.all(
            color: Colors.white,
            width: 4.0,
          ),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Padding(
              padding: EdgeInsets.all(10.0),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Text(
                    'DESTR0YER',
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          font: GoogleFonts.ubuntu(
                            fontWeight: FontWeight.bold,
                            fontStyle: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .fontStyle,
                          ),
                          color: Colors.white,
                          fontSize: 16.0,
                          letterSpacing: 0.0,
                          fontWeight: FontWeight.bold,
                          fontStyle:
                              FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                        ),
                  ),
                  Text(
                    '872,488',
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          font: GoogleFonts.ubuntu(
                            fontWeight: FontWeight.w500,
                            fontStyle: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .fontStyle,
                          ),
                          color: Colors.white,
                          letterSpacing: 0.0,
                          fontWeight: FontWeight.w500,
                          fontStyle:
                              FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                        ),
                  ),
                  wrapWithModel(
                    model: _model.doubleBallImgModel,
                    updateCallback: () => safeSetState(() {}),
                    child: DoubleBallImgWidget(),
                  ),
                ].divide(SizedBox(height: 8.0)),
              ),
            ),
            Align(
              alignment: AlignmentDirectional(1.0, 0.0),
              child: Padding(
                padding: EdgeInsets.all(8.0),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Padding(
                      padding: EdgeInsets.all(4.0),
                      child: Container(
                        width: 55.0,
                        height: 55.0,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            fit: BoxFit.contain,
                            image: Image.network(
                              'https://www.piugame.com/l_img/grade/x_a_p.png',
                            ).image,
                          ),
                        ),
                      ),
                    ),
                    Flexible(
                      child: wrapWithModel(
                        model: _model.playResultModel,
                        updateCallback: () => safeSetState(() {}),
                        child: PlayResultWidget(),
                      ),
                    ),
                  ].divide(SizedBox(height: 8.0)),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
