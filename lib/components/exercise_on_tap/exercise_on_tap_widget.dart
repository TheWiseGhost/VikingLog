import '/backend/supabase/supabase.dart';
import '/components/delete_exercise/delete_exercise_widget.dart';
import '/components/edit_exercise/edit_exercise_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import 'exercise_on_tap_model.dart';
export 'exercise_on_tap_model.dart';

class ExerciseOnTapWidget extends StatefulWidget {
  const ExerciseOnTapWidget({
    super.key,
    required this.exerciseId,
  });

  final int? exerciseId;

  @override
  State<ExerciseOnTapWidget> createState() => _ExerciseOnTapWidgetState();
}

class _ExerciseOnTapWidgetState extends State<ExerciseOnTapWidget> {
  late ExerciseOnTapModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ExerciseOnTapModel());

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
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).primaryBackground,
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
                      height: 110,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).primaryBackground,
                      ),
                      child: Container(
                        width: 100,
                        height: 100,
                        decoration: BoxDecoration(),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Container(
                              width: 60,
                              height: 60,
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context).accent4,
                                borderRadius: BorderRadius.circular(16),
                              ),
                              child: Align(
                                alignment: AlignmentDirectional(0, 0),
                                child: FaIcon(
                                  FontAwesomeIcons.dumbbell,
                                  color: FlutterFlowTheme.of(context).primary,
                                  size: 24,
                                ),
                              ),
                            ),
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(0, 12, 0, 0),
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
                                          color: FlutterFlowTheme.of(context)
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
                                      textExercisesRow?.name,
                                      'null',
                                    ),
                                    style: FlutterFlowTheme.of(context)
                                        .headlineSmall
                                        .override(
                                          fontFamily: 'Josefin Sans',
                                          letterSpacing: 0,
                                        ),
                                  );
                                },
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 10),
                    child: Container(
                      decoration: BoxDecoration(),
                      child: Container(
                        height: 126,
                        decoration: BoxDecoration(
                          color: FlutterFlowTheme.of(context).primaryBackground,
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      30, 0, 30, 10),
                                  child: Container(
                                    height: 50,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                      borderRadius: BorderRadius.circular(16),
                                    ),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          16, 0, 16, 0),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    24, 0, 0, 0),
                                            child: Container(
                                              width: 248,
                                              height: 50,
                                              decoration: BoxDecoration(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryBackground,
                                              ),
                                              child: Align(
                                                alignment:
                                                    AlignmentDirectional(0, 0),
                                                child: FutureBuilder<
                                                    List<ExercisesRow>>(
                                                  future: ExercisesTable()
                                                      .querySingleRow(
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
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .primary,
                                                            size: 20,
                                                          ),
                                                        ),
                                                      );
                                                    }
                                                    List<ExercisesRow>
                                                        textExercisesRowList =
                                                        snapshot.data!;
                                                    final textExercisesRow =
                                                        textExercisesRowList
                                                                .isNotEmpty
                                                            ? textExercisesRowList
                                                                .first
                                                            : null;
                                                    return Text(
                                                      '${textExercisesRow?.numSets?.toString()} Sets',
                                                      textAlign:
                                                          TextAlign.center,
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .bodyMedium
                                                          .override(
                                                            fontFamily: 'Lato',
                                                            fontSize: 16,
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
                              ],
                            ),
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(30, 0, 30, 0),
                              child: Container(
                                height: 50,
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                  borderRadius: BorderRadius.circular(16),
                                ),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      16, 0, 16, 0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            22, 0, 0, 0),
                                        child: Container(
                                          width: 256,
                                          height: 50,
                                          decoration: BoxDecoration(
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryBackground,
                                          ),
                                          alignment: AlignmentDirectional(0, 0),
                                          child: Align(
                                            alignment:
                                                AlignmentDirectional(0, 0),
                                            child: FutureBuilder<
                                                List<ExercisesRow>>(
                                              future: ExercisesTable()
                                                  .querySingleRow(
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
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primary,
                                                        size: 20,
                                                      ),
                                                    ),
                                                  );
                                                }
                                                List<ExercisesRow>
                                                    textExercisesRowList =
                                                    snapshot.data!;
                                                final textExercisesRow =
                                                    textExercisesRowList
                                                            .isNotEmpty
                                                        ? textExercisesRowList
                                                            .first
                                                        : null;
                                                return Text(
                                                  'Completed ${formatNumber(
                                                    (textExercisesRow!
                                                            .numDone!) -
                                                        1,
                                                    formatType:
                                                        FormatType.custom,
                                                    format: '',
                                                    locale: '',
                                                  )} times',
                                                  textAlign: TextAlign.center,
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Lato',
                                                        fontSize: 14,
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
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
          Container(
            decoration: BoxDecoration(),
            child: Align(
              alignment: AlignmentDirectional(0, 0),
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 8, 0, 18),
                child: FFButtonWidget(
                  onPressed: () async {
                    FFAppState().counter = 0;
                    FFAppState().weights = [];
                    FFAppState().reps = [];
                    FFAppState().currSetsComplete = 0;
                    FFAppState().numExercises = 0;
                    FFAppState().counter2 = 0;
                    setState(() {});
                    while (FFAppState().counter < 15) {
                      FFAppState().addToWeights(0);
                      FFAppState().addToReps(0);
                      setState(() {});
                      FFAppState().counter = FFAppState().counter + 1;
                      setState(() {});
                    }

                    context.pushNamed(
                      'inExercisePage',
                      queryParameters: {
                        'exerciseId': serializeParam(
                          widget.exerciseId,
                          ParamType.int,
                        ),
                      }.withoutNulls,
                    );

                    FFAppState().counter = 0;
                    setState(() {});
                  },
                  text: 'Start Exercise',
                  options: FFButtonOptions(
                    width: 150,
                    height: 52,
                    padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
                    iconPadding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
                    color: FlutterFlowTheme.of(context).primary,
                    textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                          fontFamily: 'Reem Kufi Fun',
                          color: Colors.white,
                          letterSpacing: 0,
                        ),
                    elevation: 3,
                    borderSide: BorderSide(
                      color: Colors.transparent,
                      width: 1,
                    ),
                    borderRadius: BorderRadius.circular(16),
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
            child: Container(
              decoration: BoxDecoration(),
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(20, 0, 20, 0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Align(
                      alignment: AlignmentDirectional(0, 0),
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 18, 0, 8),
                        child: FFButtonWidget(
                          onPressed: () async {
                            Navigator.pop(context);
                            await showModalBottomSheet(
                              isScrollControlled: true,
                              backgroundColor: Colors.transparent,
                              enableDrag: false,
                              context: context,
                              builder: (context) {
                                return Padding(
                                  padding: MediaQuery.viewInsetsOf(context),
                                  child: Container(
                                    height: 500,
                                    child: EditExerciseWidget(
                                      exerciseId: widget.exerciseId!,
                                    ),
                                  ),
                                );
                              },
                            ).then((value) => safeSetState(() {}));
                          },
                          text: 'Edit ',
                          options: FFButtonOptions(
                            width: 100,
                            height: 41,
                            padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
                            iconPadding:
                                EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
                            color: FlutterFlowTheme.of(context).secondary,
                            textStyle: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Reem Kufi Fun',
                                  fontSize: 14,
                                  letterSpacing: 0,
                                ),
                            elevation: 3,
                            borderSide: BorderSide(
                              color: Colors.transparent,
                              width: 1,
                            ),
                            borderRadius: BorderRadius.circular(12),
                          ),
                        ),
                      ),
                    ),
                    Align(
                      alignment: AlignmentDirectional(0, 0),
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 18, 0, 8),
                        child: FFButtonWidget(
                          onPressed: () async {
                            Navigator.pop(context);
                            await showModalBottomSheet(
                              isScrollControlled: true,
                              backgroundColor: Colors.transparent,
                              enableDrag: false,
                              context: context,
                              builder: (context) {
                                return Padding(
                                  padding: MediaQuery.viewInsetsOf(context),
                                  child: Container(
                                    height: 500,
                                    child: DeleteExerciseWidget(
                                      exerciseId: widget.exerciseId!,
                                    ),
                                  ),
                                );
                              },
                            ).then((value) => safeSetState(() {}));
                          },
                          text: 'Delete ',
                          options: FFButtonOptions(
                            width: 100,
                            height: 41,
                            padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
                            iconPadding:
                                EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
                            color: Color(0xC7FF050A),
                            textStyle: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Reem Kufi Fun',
                                  fontSize: 14,
                                  letterSpacing: 0,
                                ),
                            elevation: 3,
                            borderSide: BorderSide(
                              color: Colors.transparent,
                              width: 1,
                            ),
                            borderRadius: BorderRadius.circular(12),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
