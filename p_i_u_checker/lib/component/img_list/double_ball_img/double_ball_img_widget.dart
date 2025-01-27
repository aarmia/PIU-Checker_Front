import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'double_ball_img_model.dart';
export 'double_ball_img_model.dart';

class DoubleBallImgWidget extends StatefulWidget {
  const DoubleBallImgWidget({super.key});

  @override
  State<DoubleBallImgWidget> createState() => _DoubleBallImgWidgetState();
}

class _DoubleBallImgWidgetState extends State<DoubleBallImgWidget> {
  late DoubleBallImgModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => DoubleBallImgModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 80.0,
      height: 70.0,
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.contain,
          image: Image.network(
            'https://www.piugame.com/l_img/stepball/full/d_bg.png',
          ).image,
        ),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Align(
            alignment: AlignmentDirectional(0.0, 1.0),
            child: Container(
              width: 80.0,
              height: 20.0,
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.fitWidth,
                  alignment: AlignmentDirectional(0.0, 1.0),
                  image: Image.network(
                    'https://www.piugame.com/l_img/stepball/full/d_text.png',
                  ).image,
                ),
              ),
            ),
          ),
          Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              Container(
                width: 40.0,
                height: 40.0,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.contain,
                    image: Image.network(
                      'https://www.piugame.com/l_img/stepball/full/d_num_2.png',
                    ).image,
                  ),
                ),
              ),
              Container(
                width: 40.0,
                height: 40.0,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.contain,
                    image: Image.network(
                      'https://www.piugame.com/l_img/stepball/full/d_num_4.png',
                    ).image,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
