import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'amount_button_model.dart';
export 'amount_button_model.dart';

class AmountButtonWidget extends StatefulWidget {
  const AmountButtonWidget({
    Key? key,
    int? amountIndex,
  })  : this.amountIndex = amountIndex ?? 0,
        super(key: key);

  final int amountIndex;

  @override
  _AmountButtonWidgetState createState() => _AmountButtonWidgetState();
}

class _AmountButtonWidgetState extends State<AmountButtonWidget>
    with TickerProviderStateMixin {
  late AmountButtonModel _model;

  final animationsMap = {
    'containerOnPageLoadAnimation': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        ScaleEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 600.ms,
          begin: Offset(1.0, 1.0),
          end: Offset(1.0, 1.0),
        ),
      ],
    ),
    'buttonOnActionTriggerAnimation': AnimationInfo(
      trigger: AnimationTrigger.onActionTrigger,
      applyInitialState: true,
      effects: [
        RotateEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 600.ms,
          begin: 0.0,
          end: 1.0,
        ),
      ],
    ),
  };

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AmountButtonModel());

    setupAnimations(
      animationsMap.values.where((anim) =>
          anim.trigger == AnimationTrigger.onActionTrigger ||
          !anim.applyInitialState),
      this,
    );

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Container(
      width: 100.0,
      height: 100.0,
      decoration: BoxDecoration(
        shape: BoxShape.rectangle,
      ),
      child: FFButtonWidget(
        onPressed: () async {
          // Set the donationAmount
          _model.updatePage(() {
            FFAppState().donationAmount =
                FFAppState().donationAmounts[widget.amountIndex];
            FFAppState().isCustomAmount = false;
          });
          // Spin the Button
          if (animationsMap['buttonOnActionTriggerAnimation'] != null) {
            await animationsMap['buttonOnActionTriggerAnimation']!
                .controller
                .forward(from: 0.0);
          }
        },
        text: formatNumber(
          FFAppState().donationAmounts[widget.amountIndex],
          formatType: FormatType.decimal,
          decimalType: DecimalType.periodDecimal,
          currency: '',
        ),
        options: FFButtonOptions(
          width: 100.0,
          height: 100.0,
          padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
          iconPadding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
          color: !FFAppState().isCustomAmount &&
                  (FFAppState().donationAmounts[widget.amountIndex] ==
                      FFAppState().donationAmount)
              ? FlutterFlowTheme.of(context).tertiary
              : Color(0xFFA4BDED),
          textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                fontFamily: FlutterFlowTheme.of(context).titleSmallFamily,
                color: Colors.white,
                fontSize: 25.0,
                useGoogleFonts: GoogleFonts.asMap()
                    .containsKey(FlutterFlowTheme.of(context).titleSmallFamily),
              ),
          elevation: 0.0,
          borderSide: BorderSide(
            color: Colors.transparent,
            width: 1.0,
          ),
          borderRadius: BorderRadius.circular(8.0),
        ),
      ).animateOnActionTrigger(
        animationsMap['buttonOnActionTriggerAnimation']!,
      ),
    ).animateOnPageLoad(animationsMap['containerOnPageLoadAnimation']!);
  }
}
