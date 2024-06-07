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

import 'create_exercise_model.dart';
export 'create_exercise_model.dart';

class CreateExerciseWidget extends StatefulWidget {
  const CreateExerciseWidget({super.key});

  @override
  State<CreateExerciseWidget> createState() => _CreateExerciseWidgetState();
}

class _CreateExerciseWidgetState extends State<CreateExerciseWidget> {
  late CreateExerciseModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CreateExerciseModel());

    _model.exerciseNameTextController ??= TextEditingController();
    _model.exerciseNameFocusNode ??= FocusNode();

    _model.numSetsTextController ??= TextEditingController();
    _model.numSetsFocusNode ??= FocusNode();

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
      height: 450,
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
                  Container(
                    width: double.infinity,
                    height: 148,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                    ),
                    child: Container(
                      width: 100,
                      height: 146,
                      decoration: BoxDecoration(),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                            child: Container(
                              width: 70,
                              height: 60,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(16),
                              ),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Lottie.asset(
                                    'assets/lottie_animations/Viking_DB_Press_(2).json',
                                    width: 60,
                                    height: 48,
                                    fit: BoxFit.cover,
                                    animate: true,
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(0, 12, 0, 12),
                            child: Text(
                              'Create Exercise',
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
                  Align(
                    alignment: AlignmentDirectional(0, 0),
                    child: Form(
                      key: _model.formKey,
                      autovalidateMode: AutovalidateMode.disabled,
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(16, 20, 16, 16),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(0, 0, 0, 16),
                              child: Container(
                                width: double.infinity,
                                child: TextFormField(
                                  controller: _model.exerciseNameTextController,
                                  focusNode: _model.exerciseNameFocusNode,
                                  autofocus: true,
                                  autofillHints: [AutofillHints.name],
                                  obscureText: false,
                                  decoration: InputDecoration(
                                    labelText: 'Exercise Name',
                                    labelStyle: FlutterFlowTheme.of(context)
                                        .labelMedium
                                        .override(
                                          fontFamily: 'Lato',
                                          letterSpacing: 0,
                                        ),
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: FlutterFlowTheme.of(context)
                                            .alternate,
                                        width: 2,
                                      ),
                                      borderRadius: BorderRadius.circular(12),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: FlutterFlowTheme.of(context)
                                            .primary,
                                        width: 2,
                                      ),
                                      borderRadius: BorderRadius.circular(12),
                                    ),
                                    errorBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color:
                                            FlutterFlowTheme.of(context).error,
                                        width: 2,
                                      ),
                                      borderRadius: BorderRadius.circular(12),
                                    ),
                                    focusedErrorBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color:
                                            FlutterFlowTheme.of(context).error,
                                        width: 2,
                                      ),
                                      borderRadius: BorderRadius.circular(12),
                                    ),
                                    filled: true,
                                    fillColor: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                    contentPadding: EdgeInsets.all(24),
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Lato',
                                        letterSpacing: 0,
                                      ),
                                  validator: _model
                                      .exerciseNameTextControllerValidator
                                      .asValidator(context),
                                ),
                              ),
                            ),
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(0, 0, 0, 16),
                              child: Container(
                                width: double.infinity,
                                child: TextFormField(
                                  controller: _model.numSetsTextController,
                                  focusNode: _model.numSetsFocusNode,
                                  autofocus: true,
                                  autofillHints: [AutofillHints.name],
                                  obscureText: false,
                                  decoration: InputDecoration(
                                    labelText: 'Number of Sets',
                                    labelStyle: FlutterFlowTheme.of(context)
                                        .labelMedium
                                        .override(
                                          fontFamily: 'Lato',
                                          letterSpacing: 0,
                                        ),
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: FlutterFlowTheme.of(context)
                                            .alternate,
                                        width: 2,
                                      ),
                                      borderRadius: BorderRadius.circular(12),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: FlutterFlowTheme.of(context)
                                            .primary,
                                        width: 2,
                                      ),
                                      borderRadius: BorderRadius.circular(12),
                                    ),
                                    errorBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color:
                                            FlutterFlowTheme.of(context).error,
                                        width: 2,
                                      ),
                                      borderRadius: BorderRadius.circular(12),
                                    ),
                                    focusedErrorBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color:
                                            FlutterFlowTheme.of(context).error,
                                        width: 2,
                                      ),
                                      borderRadius: BorderRadius.circular(12),
                                    ),
                                    filled: true,
                                    fillColor: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                    contentPadding: EdgeInsets.all(24),
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Lato',
                                        letterSpacing: 0,
                                      ),
                                  keyboardType: TextInputType.number,
                                  validator: _model
                                      .numSetsTextControllerValidator
                                      .asValidator(context),
                                ),
                              ),
                            ),
                            Align(
                              alignment: AlignmentDirectional(0, 0),
                              child: Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(0, 8, 0, 8),
                                child: FutureBuilder<List<UsersRow>>(
                                  future: UsersTable().querySingleRow(
                                    queryFn: (q) => q.eq(
                                      'user_id',
                                      currentUserUid,
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
                                    List<UsersRow> buttonUsersRowList =
                                        snapshot.data!;
                                    final buttonUsersRow =
                                        buttonUsersRowList.isNotEmpty
                                            ? buttonUsersRowList.first
                                            : null;
                                    return FFButtonWidget(
                                      onPressed: () async {
                                        if (_model.formKey.currentState ==
                                                null ||
                                            !_model.formKey.currentState!
                                                .validate()) {
                                          return;
                                        }
                                        await ExercisesTable().insert({
                                          'created_at': supaSerialize<DateTime>(
                                              dateTimeFromSecondsSinceEpoch(
                                                  getCurrentTimestamp
                                                      .secondsSinceEpoch)),
                                          'num_sets': int.tryParse(_model
                                              .numSetsTextController.text),
                                          'user_id': currentUserUid,
                                          'name': _model
                                              .exerciseNameTextController.text,
                                          'num_done': 0,
                                        });
                                        _model.row =
                                            await ExercisesTable().queryRows(
                                          queryFn: (q) => q.order('created_at'),
                                        );
                                        FFAppState().time =
                                            dateTimeFromSecondsSinceEpoch(
                                                getCurrentTimestamp
                                                    .secondsSinceEpoch);
                                        setState(() {});
                                        while (FFAppState().counter <
                                            valueOrDefault<int>(
                                              _model.row?.first?.numSets,
                                              0,
                                            )) {
                                          await SetsTable().insert({
                                            'exercise_id': valueOrDefault<int>(
                                              _model.row?.first?.id,
                                              0,
                                            ),
                                            'weight': 0,
                                            'reps': 0,
                                            'user_id': currentUserUid,
                                            'created_at':
                                                supaSerialize<DateTime>(
                                                    FFAppState().time),
                                            'index': FFAppState().counter + 1,
                                          });
                                          FFAppState().counter =
                                              FFAppState().counter + 1;
                                          setState(() {});
                                        }
                                        FFAppState().counter = 0;
                                        setState(() {});
                                        await UsersTable().update(
                                          data: {
                                            'exercises_active': (buttonUsersRow!
                                                    .exercisesActive!) +
                                                1,
                                          },
                                          matchingRows: (rows) => rows.eq(
                                            'user_id',
                                            currentUserUid,
                                          ),
                                        );
                                        Navigator.pop(context);

                                        setState(() {});
                                      },
                                      text: 'Create  Exercise',
                                      options: FFButtonOptions(
                                        width: 230,
                                        height: 52,
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0, 0, 0, 0),
                                        iconPadding:
                                            EdgeInsetsDirectional.fromSTEB(
                                                0, 0, 0, 0),
                                        color: FlutterFlowTheme.of(context)
                                            .primary,
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
                                        borderRadius: BorderRadius.circular(16),
                                      ),
                                    );
                                  },
                                ),
                              ),
                            ),
                            Align(
                              alignment: AlignmentDirectional(0, 0),
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    10, 15, 10, 0),
                                child: Text(
                                  'Have fun doing this exercise!',
                                  textAlign: TextAlign.center,
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Lato',
                                        fontSize: 12,
                                        letterSpacing: 0,
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
        ],
      ),
    );
  }
}
