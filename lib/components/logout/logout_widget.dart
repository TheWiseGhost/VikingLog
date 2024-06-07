import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:provider/provider.dart';

import 'logout_model.dart';
export 'logout_model.dart';

class LogoutWidget extends StatefulWidget {
  const LogoutWidget({super.key});

  @override
  State<LogoutWidget> createState() => _LogoutWidgetState();
}

class _LogoutWidgetState extends State<LogoutWidget> {
  late LogoutModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => LogoutModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 390,
      height: 400,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).secondaryBackground,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 5),
            child: Container(
              width: 50,
              height: 2,
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).secondaryText,
              ),
            ),
          ),
          Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                    child: Container(
                      width: double.infinity,
                      height: 142,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                      ),
                      child: Container(
                        width: 100,
                        height: 136,
                        decoration: BoxDecoration(),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(0, 10, 0, 20),
                              child: Container(
                                width: 70,
                                height: 50,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(16),
                                ),
                                child: Lottie.asset(
                                  'assets/lottie_animations/Viking_DB_Press_(2).json',
                                  width: 60,
                                  height: 48,
                                  fit: BoxFit.cover,
                                  animate: true,
                                ),
                              ),
                            ),
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(0, 12, 0, 12),
                              child: Text(
                                'Logout?',
                                style: FlutterFlowTheme.of(context)
                                    .headlineSmall
                                    .override(
                                      fontFamily: 'Josefin Sans',
                                      fontSize: 28,
                                      letterSpacing: 0,
                                    ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: AlignmentDirectional(0, 0),
                    child: Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(20, 15, 20, 0),
                      child: Text(
                        'Are you sure you want to log out of Viking Log?',
                        textAlign: TextAlign.center,
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Lato',
                              fontSize: 14,
                              letterSpacing: 0,
                            ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: AlignmentDirectional(0, 0),
                    child: Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                      child: Form(
                        key: _model.formKey,
                        autovalidateMode: AutovalidateMode.disabled,
                        child: Padding(
                          padding:
                              EdgeInsetsDirectional.fromSTEB(16, 20, 16, 16),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Align(
                                      alignment: AlignmentDirectional(0, 0),
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0, 8, 0, 8),
                                        child: FFButtonWidget(
                                          onPressed: () async {
                                            Navigator.pop(context);
                                          },
                                          text: 'No',
                                          options: FFButtonOptions(
                                            width: 124,
                                            height: 52,
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0, 0, 0, 0),
                                            iconPadding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0, 0, 0, 0),
                                            color: FlutterFlowTheme.of(context)
                                                .primary,
                                            textStyle:
                                                FlutterFlowTheme.of(context)
                                                    .titleSmall
                                                    .override(
                                                      fontFamily:
                                                          'Reem Kufi Fun',
                                                      color: Colors.white,
                                                      letterSpacing: 0,
                                                    ),
                                            elevation: 3,
                                            borderSide: BorderSide(
                                              color: Colors.transparent,
                                              width: 1,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(16),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Align(
                                      alignment: AlignmentDirectional(0, 0),
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0, 8, 0, 8),
                                        child: FFButtonWidget(
                                          onPressed: () async {
                                            context.pushNamed('login');
                                          },
                                          text: 'Logout',
                                          options: FFButtonOptions(
                                            width: 124,
                                            height: 52,
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0, 0, 0, 0),
                                            iconPadding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0, 0, 0, 0),
                                            color: Color(0xC7FF050A),
                                            textStyle:
                                                FlutterFlowTheme.of(context)
                                                    .titleSmall
                                                    .override(
                                                      fontFamily:
                                                          'Reem Kufi Fun',
                                                      color: Colors.white,
                                                      letterSpacing: 0,
                                                    ),
                                            elevation: 3,
                                            borderSide: BorderSide(
                                              color: Colors.transparent,
                                              width: 1,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(16),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
