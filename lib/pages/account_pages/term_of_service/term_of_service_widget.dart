import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'term_of_service_model.dart';
export 'term_of_service_model.dart';

class TermOfServiceWidget extends StatefulWidget {
  const TermOfServiceWidget({Key? key}) : super(key: key);

  @override
  _TermOfServiceWidgetState createState() => _TermOfServiceWidgetState();
}

class _TermOfServiceWidgetState extends State<TermOfServiceWidget>
    with TickerProviderStateMixin {
  late TermOfServiceModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = {
    'columnOnPageLoadAnimation': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 600.ms,
          begin: Offset(10.0, 0.0),
          end: Offset(0.0, 0.0),
        ),
      ],
    ),
  };

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => TermOfServiceModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return GestureDetector(
      onTap: () => FocusScope.of(context).requestFocus(_model.unfocusNode),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        appBar: AppBar(
          backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
          automaticallyImplyLeading: false,
          leading: FlutterFlowIconButton(
            borderColor: Colors.transparent,
            borderRadius: 30.0,
            borderWidth: 1.0,
            buttonSize: 60.0,
            icon: Icon(
              Icons.arrow_back_rounded,
              color: FlutterFlowTheme.of(context).secondaryBackground,
              size: 30.0,
            ),
            onPressed: () async {
              context.pop();
            },
          ),
          title: Text(
            'Term of Service',
            style: FlutterFlowTheme.of(context).headlineMedium.override(
                  fontFamily: FlutterFlowTheme.of(context).headlineMediumFamily,
                  color: FlutterFlowTheme.of(context).secondaryBackground,
                  fontSize: 22.0,
                  useGoogleFonts: GoogleFonts.asMap().containsKey(
                      FlutterFlowTheme.of(context).headlineMediumFamily),
                ),
          ),
          actions: [],
          centerTitle: true,
          elevation: 2.0,
        ),
        body: SafeArea(
          top: true,
          child: Align(
            alignment: AlignmentDirectional(0.0, -1.0),
            child: Padding(
              padding: EdgeInsetsDirectional.fromSTEB(20.0, 20.0, 20.0, 20.0),
              child: Container(
                width: MediaQuery.sizeOf(context).width * 1.0,
                height: MediaQuery.sizeOf(context).height * 1.0,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).primaryBackground,
                ),
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 20.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Terms of Service',
                              style: FlutterFlowTheme.of(context).titleLarge,
                            ),
                          ],
                        ),
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            child: Text(
                              'Lorem ipsum dolor sit amet, mei quidam pertinax an, nec ex oportere omittantur, his et aliquid fabulas scriptorem. Cu munere deleniti ullamcorper sed. Consul fastidii torquatos mei in! Nam no populo tincidunt voluptatum, ea pro noster legendos! An postulant deterruisset mediocritatem usu, et pri alii novum voluptaria. Te duo aeque platonem signiferumque!\n\nAn vis delenit dolorem? Audiam instructior sea ut, harum adipisci intellegebat quo no? Dictas hendrerit eos no. Agam graece facilisi sit no. Vitae graeci facilis mei et, tantas complectitur est id, consulatu mnesarchum at nam!\n\nVix porro mollis tamquam an. Mel magna illum constituam ei. An porro erroribus honestatis sit, sed putant inermis eloquentiam ex! Sed et euismod detracto. Ius te noster graeco conceptam, everti legimus sensibus sed at!\n\nIn mel consequuntur definitiones, no probatus mnesarchum definitiones has. Assum copiosae te eam, mei ei rebum error incorrupte. No mea tacimates erroribus reprehendunt! Qui vidit denique voluptatibus ea, ei tota verterem pericula pro. Eos dicat alterum reformidans at, diceret adipisci dignissim at mel, no ius fugit debet vitae? In erat aliquam quo, mea doming maiorum eu?\n\nMei cibo omnis inermis ex. Id usu stet dicat putant. Eius facete mea ea, idque probatus usu ei! Et legimus inimicus vix, errem principes vim an.\n\nNe mei iriure perpetua gloriatur. Nec et cetero labores principes, impedit consulatu eam eu? Vis ne tritani detracto omnesque, ut quo habemus voluptatum? Nonumy delectus eu pri, adipiscing repudiandae nam ad. Porro nullam offendit duo an, an odio delectus mel.\n\nEt vel insolens sadipscing. Autem eripuit volumus ne nam, est fabulas lobortis nominati an. An illud honestatis quo, ea hinc vitae interesset vis! Mel adipisci repudiandae ex, nec mentitum rationibus an, id soleat doctus antiopam cum.\n\nVel eu tantas fabulas veritus, quas reque expetenda mel in. Quando conceptam inciderint pri cu. Vix ut porro omnesque temporibus, esse congue adipisci pri eu? Sumo platonem cum an, at possim definitionem pro, no vim veri nullam aperiam. Ei fabellas quaerendum pri, ei his rationibus adipiscing ullamcorper, eum ut mutat decore suavitate?\n\nCu mei illud nonumy scribentur, eu alia oratio aliquam sed, soleat tibique senserit in mei. Qui elit solet eleifend ne, no sed natum dicam. Est te propriae perfecto disputando, eu simul maiorum molestiae sit. Pro velit nihil molestie te, ut ceteros fastidii verterem per!\n\nReque fuisset elaboraret eos ea. Et epicurei disputando eam? Enim feugait mandamus cu nec, appareat placerat no pri. Per nulla scriptorem ut?\n\nVim clita commune vulputate cu, usu labore melius insolens ei. His et eros choro salutandi. Has quod epicuri evertitur ex, vim tamquam consequat constituam ea! Option virtute te pri. Ei tibique probatus contentiones duo. Vim ei aliquip meliore appareat, quod aperiri incorrupte ex pri.\n\nVel ad exerci labore percipit. Eam ea suas assum eligendi, mel ne persius accusata, duo essent iracundia reformidans an. At vel iisque salutandi, case persius antiopam ei eum? No novum tacimates philosophia qui. Fierent ponderum eleifend ut quo. Pri postea semper id, at ullum ceteros molestie sed.\n\nVerear perfecto singulis vim in, usu ei erat senserit tincidunt! Illum qualisque te eam! Adhuc saepe eleifend eam no, ex case quidam mel, an qui dolore scripserit! No regione consequat sit, an sonet delenit nam?\n\nAgam graeco oportere ex ius, vim voluptua epicurei ocurreret id, in eos vidit recteque. Omnis indoctum mei at, ad sea tollit tacimates, mundi veniam ne est! Per id duis consequuntur, ne velit novum tollit nec, has tale copiosae inciderint id! Sea cu commodo delectus, quo no laudem delenit urbanitas, eu copiosae oporteat sit.\n\nEst an prima reprimique, eum oporteat recteque in! Eu consul sapientem eos, vel ne autem legendos! Ei munere impetus tacimates est, ius ei populo repudiandae? Mel ad partem aperiri diceret. Commodo eripuit electram at cum, appareat consectetuer ne quo.\n\nCu eam dicant ceteros, mundi inermis rationibus et eum. Eam stet vocibus efficiendi id, his voluptua consetetur ea, nec natum deterruisset at! Falli labores te sit, cu veniam postulant erroribus qui. Ne vis altera nostrud, possit conceptam appellantur ex mea, at augue legimus intellegat sea. Everti denique cu eam, eos incorrupte argumentum intellegam et.\n\nEa per graece dictas iriure! Cum soluta dissentiet eu. Lorem recusabo est ad. Ne mollis fastidii oportere cum, periculis adversarium no pri. At has quidam salutatus, cum no dicunt scribentur.\n\nSea in diam ubique phaedrum? Brute movet meliore ut mel! Eu eos stet dictas dolorum, id dicit offendit sea. Duis nostro recteque vix an. Alia reformidans an mei, quem facilisis eos at.\n\nElectram suscipiantur an vim? Rebum laboramus usu cu? Odio exerci moderatius at pri, error deterruisset ex duo. Ei nec qualisque sententiae. Et suas alia evertitur quo, quo partem impetus ut, usu omittam tacimates persequeris at? Eu per brute utroque voluptatibus? Eius persecuti pri at.\n\nAccumsan volutpat patrioque vel ei. Mea no eleifend conclusionemque, vel quaeque docendi mandamus et. At soluta graeco mea! Commodo percipit atomorum ei ius. Fabulas ancillae senserit at vis, ex has oratio suscipiantur!',
                              style: FlutterFlowTheme.of(context)
                                  .bodySmall
                                  .override(
                                    fontFamily: FlutterFlowTheme.of(context)
                                        .bodySmallFamily,
                                    useGoogleFonts: GoogleFonts.asMap()
                                        .containsKey(
                                            FlutterFlowTheme.of(context)
                                                .bodySmallFamily),
                                    lineHeight: 1.11,
                                  ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ).animateOnPageLoad(
                    animationsMap['columnOnPageLoadAnimation']!),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
