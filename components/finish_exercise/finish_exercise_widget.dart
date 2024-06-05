import '/auth/supabase_auth/auth_util.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:provider/provider.dart';

import 'finish_exercise_model.dart';
export 'finish_exercise_model.dart';

class FinishExerciseWidget extends StatefulWidget {
  const FinishExerciseWidget({
    super.key,
    required this.exerciseId,
  });

  final int? exerciseId;

  @override
  State<FinishExerciseWidget> createState() => _FinishExerciseWidgetState();
}

class _FinishExerciseWidgetState extends State<FinishExerciseWidget> {
  late FinishExerciseModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => FinishExerciseModel());

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
                                'Finish Exercise?',
                                style: FlutterFlowTheme.of(context)
                                    .headlineSmall
                                    .override(
                                      fontFamily: 'Josefin Sans',
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
                      padding: EdgeInsetsDirectional.fromSTEB(20, 15, 20, 15),
                      child: Text(
                        'Make sure all the exercises you want to be marked as completed have the green check',
                        textAlign: TextAlign.center,
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Lato',
                              fontSize: 12,
                              letterSpacing: 0,
                            ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(30, 0, 30, 0),
                    child: Container(
                      height: 50,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                      ),
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(16, 0, 16, 0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(15, 0, 0, 0),
                              child: Container(
                                width: 131,
                                height: 50,
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                ),
                                child: Align(
                                  alignment: AlignmentDirectional(1, 0),
                                  child: Text(
                                    'Sets Complete =  ${FFAppState().currSetsComplete.toString()}',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Lato',
                                          color: FlutterFlowTheme.of(context)
                                              .primaryText,
                                          letterSpacing: 0,
                                        ),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 20,
                              child: VerticalDivider(
                                thickness: 1,
                                color: FlutterFlowTheme.of(context).primaryText,
                              ),
                            ),
                            Align(
                              alignment: AlignmentDirectional(-1, 0),
                              child: Container(
                                width: 54,
                                height: 50,
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                ),
                                child: Align(
                                  alignment: AlignmentDirectional(-1, 0),
                                  child: FutureBuilder<List<ExercisesRow>>(
                                    future: ExercisesTable().querySingleRow(
                                      queryFn: (q) => q.eq(
                                        'id',
                                        widget.exerciseId,
                                      ),
                                    ),
                                    builder: (context, snapshot) {
                                      // Customize what your widget looks like when it's loading.
                                      if (!snapshot.hasData) {
                                        return Center(
                                          child: SizedBox(
                                            width: 20,
                                            height: 20,
                                            child: SpinKitRing(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primary,
                                              size: 20,
                                            ),
                                          ),
                                        );
                                      }
                                      List<ExercisesRow> textExercisesRowList =
                                          snapshot.data!;
                                      final textExercisesRow =
                                          textExercisesRowList.isNotEmpty
                                              ? textExercisesRowList.first
                                              : null;
                                      return Text(
                                        valueOrDefault<String>(
                                          textExercisesRow?.numSets?.toString(),
                                          '0',
                                        ),
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Lato',
                                              letterSpacing: 0,
                                            ),
                                      );
                                    },
                                  ),
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
                              Align(
                                alignment: AlignmentDirectional(0, 0),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0, 8, 0, 8),
                                  child: FutureBuilder<List<ExercisesRow>>(
                                    future: ExercisesTable().querySingleRow(
                                      queryFn: (q) => q.eq(
                                        'id',
                                        widget.exerciseId,
                                      ),
                                    ),
                                    builder: (context, snapshot) {
                                      // Customize what your widget looks like when it's loading.
                                      if (!snapshot.hasData) {
                                        return Center(
                                          child: SizedBox(
                                            width: 20,
                                            height: 20,
                                            child: SpinKitRing(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primary,
                                              size: 20,
                                            ),
                                          ),
                                        );
                                      }
                                      List<ExercisesRow>
                                          buttonExercisesRowList =
                                          snapshot.data!;
                                      final buttonExercisesRow =
                                          buttonExercisesRowList.isNotEmpty
                                              ? buttonExercisesRowList.first
                                              : null;
                                      return FFButtonWidget(
                                        onPressed: () async {
                                          FFAppState().time =
                                              dateTimeFromSecondsSinceEpoch(
                                                  getCurrentTimestamp
                                                      .secondsSinceEpoch);
                                          FFAppState().counter = 0;
                                          setState(() {});
                                          if (FFAppState().currSetsComplete >
                                              0) {
                                            while (FFAppState().counter <
                                                buttonExercisesRow!.numSets!) {
                                              await SetsTable().insert({
                                                'weight': FFAppState().weights[
                                                    FFAppState().counter],
                                                'reps': FFAppState()
                                                    .reps[FFAppState().counter],
                                                'exercise_id':
                                                    widget.exerciseId,
                                                'created_at':
                                                    supaSerialize<DateTime>(
                                                        FFAppState().time),
                                                'user_id': currentUserUid,
                                                'index':
                                                    FFAppState().counter + 1,
                                                'volume': FFAppState().weights[
                                                        FFAppState().counter] *
                                                    FFAppState().reps[
                                                        FFAppState().counter],
                                                'e_index':
                                                    buttonExercisesRow?.numDone,
                                              });
                                              FFAppState().counter =
                                                  FFAppState().counter + 1;
                                              setState(() {});
                                            }
                                          }

                                          context.pushNamed(
                                            'HomePage',
                                            extra: <String, dynamic>{
                                              kTransitionInfoKey:
                                                  TransitionInfo(
                                                hasTransition: true,
                                                transitionType:
                                                    PageTransitionType
                                                        .rightToLeft,
                                                duration:
                                                    Duration(milliseconds: 200),
                                              ),
                                            },
                                          );

                                          FFAppState().currSetsComplete = 0;
                                          FFAppState().numExercises = 0;
                                          FFAppState().counter = 0;
                                          FFAppState().counter2 = 0;
                                          FFAppState().weights = [];
                                          FFAppState().reps = [];
                                          setState(() {});
                                        },
                                        text: 'Finish Exercise',
                                        options: FFButtonOptions(
                                          width: 230,
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
                                                    fontFamily: 'Reem Kufi Fun',
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
                                      );
                                    },
                                  ),
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
