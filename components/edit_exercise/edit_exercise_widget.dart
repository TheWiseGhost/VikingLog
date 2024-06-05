import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import 'edit_exercise_model.dart';
export 'edit_exercise_model.dart';

class EditExerciseWidget extends StatefulWidget {
  const EditExerciseWidget({
    super.key,
    required this.exerciseId,
  });

  final int? exerciseId;

  @override
  State<EditExerciseWidget> createState() => _EditExerciseWidgetState();
}

class _EditExerciseWidgetState extends State<EditExerciseWidget> {
  late EditExerciseModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => EditExerciseModel());

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
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).primaryBackground,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          FutureBuilder<List<ExercisesRow>>(
            future: ExercisesTable().queryRows(
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
                      color: FlutterFlowTheme.of(context).primary,
                      size: 20,
                    ),
                  ),
                );
              }
              List<ExercisesRow> mainContainerExercisesRowList = snapshot.data!;
              return Container(
                width: 390,
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
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0, 10, 0, 0),
                                  child: Container(
                                    width: double.infinity,
                                    height: 110,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .primaryBackground,
                                    ),
                                    child: Container(
                                      width: 100,
                                      height: 100,
                                      decoration: BoxDecoration(),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        children: [
                                          Container(
                                            width: 60,
                                            height: 60,
                                            decoration: BoxDecoration(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .accent4,
                                              borderRadius:
                                                  BorderRadius.circular(16),
                                            ),
                                            child: Align(
                                              alignment:
                                                  AlignmentDirectional(0, 0),
                                              child: FaIcon(
                                                FontAwesomeIcons.dumbbell,
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primary,
                                                size: 24,
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0, 12, 0, 0),
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
                                                  valueOrDefault<String>(
                                                    textExercisesRow?.name,
                                                    'null',
                                                  ),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .headlineSmall
                                                      .override(
                                                        fontFamily:
                                                            'Josefin Sans',
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
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0, 20, 0, 10),
                                  child: Container(
                                    decoration: BoxDecoration(),
                                    child: Container(
                                      height: 60,
                                      decoration: BoxDecoration(
                                        color: FlutterFlowTheme.of(context)
                                            .primaryBackground,
                                      ),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    30, 0, 30, 0),
                                            child: Container(
                                              height: 50,
                                              decoration: BoxDecoration(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryBackground,
                                                borderRadius:
                                                    BorderRadius.circular(16),
                                              ),
                                              child: Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(16, 0, 16, 0),
                                                child: Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: [
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  24, 0, 0, 0),
                                                      child: Container(
                                                        width: 248,
                                                        height: 50,
                                                        decoration:
                                                            BoxDecoration(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .secondaryBackground,
                                                        ),
                                                        child: Align(
                                                          alignment:
                                                              AlignmentDirectional(
                                                                  0, 0),
                                                          child: FutureBuilder<
                                                              List<
                                                                  ExercisesRow>>(
                                                            future: (_model
                                                                        .requestCompleter ??=
                                                                    Completer<
                                                                        List<
                                                                            ExercisesRow>>()
                                                                      ..complete(
                                                                          ExercisesTable()
                                                                              .querySingleRow(
                                                                        queryFn:
                                                                            (q) =>
                                                                                q.eq(
                                                                          'id',
                                                                          widget
                                                                              .exerciseId,
                                                                        ),
                                                                      )))
                                                                .future,
                                                            builder: (context,
                                                                snapshot) {
                                                              // Customize what your widget looks like when it's loading.
                                                              if (!snapshot
                                                                  .hasData) {
                                                                return Center(
                                                                  child:
                                                                      SizedBox(
                                                                    width: 20,
                                                                    height: 20,
                                                                    child:
                                                                        SpinKitRing(
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .primary,
                                                                      size: 20,
                                                                    ),
                                                                  ),
                                                                );
                                                              }
                                                              List<ExercisesRow>
                                                                  textExercisesRowList =
                                                                  snapshot
                                                                      .data!;
                                                              final textExercisesRow =
                                                                  textExercisesRowList
                                                                          .isNotEmpty
                                                                      ? textExercisesRowList
                                                                          .first
                                                                      : null;
                                                              return Text(
                                                                '${textExercisesRow?.numSets?.toString()} Sets',
                                                                textAlign:
                                                                    TextAlign
                                                                        .center,
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .override(
                                                                      fontFamily:
                                                                          'Lato',
                                                                      fontSize:
                                                                          16,
                                                                      letterSpacing:
                                                                          0,
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
                          child: Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(60, 0, 60, 0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                FutureBuilder<List<SetsRow>>(
                                  future: SetsTable().querySingleRow(
                                    queryFn: (q) => q
                                        .eq(
                                          'exercise_id',
                                          widget.exerciseId,
                                        )
                                        .order('created_at'),
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
                                    List<SetsRow> iconButtonSetsRowList =
                                        snapshot.data!;
                                    final iconButtonSetsRow =
                                        iconButtonSetsRowList.isNotEmpty
                                            ? iconButtonSetsRowList.first
                                            : null;
                                    return FlutterFlowIconButton(
                                      borderRadius: 10,
                                      borderWidth: 1,
                                      buttonSize: 40,
                                      fillColor: Color(0xFF99BFEA),
                                      icon: Icon(
                                        Icons.add,
                                        color: FlutterFlowTheme.of(context)
                                            .primaryText,
                                        size: 24,
                                      ),
                                      onPressed: () async {
                                        await ExercisesTable().update(
                                          data: {
                                            'num_sets':
                                                (mainContainerExercisesRowList
                                                        .first.numSets!) +
                                                    1,
                                          },
                                          matchingRows: (rows) => rows.eq(
                                            'id',
                                            widget.exerciseId,
                                          ),
                                        );
                                        setState(() =>
                                            _model.requestCompleter = null);
                                        await _model.waitForRequestCompleted();
                                      },
                                    );
                                  },
                                ),
                                FlutterFlowIconButton(
                                  borderRadius: 10,
                                  borderWidth: 1,
                                  buttonSize: 40,
                                  fillColor: Color(0xC7FF050A),
                                  icon: FaIcon(
                                    FontAwesomeIcons.minus,
                                    color: FlutterFlowTheme.of(context)
                                        .primaryText,
                                    size: 20,
                                  ),
                                  onPressed: () async {
                                    await ExercisesTable().update(
                                      data: {
                                        'num_sets':
                                            (mainContainerExercisesRowList
                                                    .first.numSets!) -
                                                1,
                                      },
                                      matchingRows: (rows) => rows.eq(
                                        'id',
                                        widget.exerciseId,
                                      ),
                                    );
                                    setState(
                                        () => _model.requestCompleter = null);
                                    await _model.waitForRequestCompleted();
                                  },
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                      child: Container(
                        decoration: BoxDecoration(),
                        child: Align(
                          alignment: AlignmentDirectional(0, 0),
                          child: Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(0, 8, 0, 18),
                            child: FFButtonWidget(
                              onPressed: () async {
                                FFAppState().counter = 0;
                                setState(() {});
                                while (FFAppState().counter < 15) {
                                  if ((FFAppState()
                                              .weights[FFAppState().counter] ==
                                          0) &&
                                      (FFAppState()
                                              .reps[FFAppState().counter] ==
                                          0)) {
                                    FFAppState().addToWeights(0);
                                    FFAppState().addToReps(0);
                                    setState(() {});
                                  }
                                  FFAppState().counter =
                                      FFAppState().counter + 1;
                                  setState(() {});
                                }
                                FFAppState().counter = 0;
                                setState(() {});

                                context.goNamed(
                                  'inExercisePage',
                                  queryParameters: {
                                    'exerciseId': serializeParam(
                                      widget.exerciseId,
                                      ParamType.int,
                                    ),
                                  }.withoutNulls,
                                );
                              },
                              text: 'Done',
                              options: FFButtonOptions(
                                width: 120,
                                height: 48,
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
                                iconPadding:
                                    EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
                                color: FlutterFlowTheme.of(context).primary,
                                textStyle: FlutterFlowTheme.of(context)
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
                                borderRadius: BorderRadius.circular(12),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
