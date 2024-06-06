import '/backend/supabase/supabase.dart';
import '/components/app_title/app_title_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import 'history_page_model.dart';
export 'history_page_model.dart';

class HistoryPageWidget extends StatefulWidget {
  const HistoryPageWidget({super.key});

  @override
  State<HistoryPageWidget> createState() => _HistoryPageWidgetState();
}

class _HistoryPageWidgetState extends State<HistoryPageWidget>
    with TickerProviderStateMixin {
  late HistoryPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = <String, AnimationInfo>{};

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => HistoryPageModel());

    animationsMap.addAll({
      'appTitleOnPageLoadAnimation': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 400.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 400.0.ms,
            begin: Offset(0.0, -50.0),
            end: Offset(0.0, 0.0),
          ),
        ],
      ),
      'textOnPageLoadAnimation': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 400.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 400.0.ms,
            begin: Offset(-50.0, 0.0),
            end: Offset(0.0, 0.0),
          ),
        ],
      ),
      'dropDownOnPageLoadAnimation': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeIn,
            delay: 0.0.ms,
            duration: 300.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 300.0.ms,
            begin: Offset(0.0, -50.0),
            end: Offset(0.0, 0.0),
          ),
        ],
      ),
      'containerOnPageLoadAnimation': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 500.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 500.0.ms,
            begin: Offset(0.0, 100.0),
            end: Offset(0.0, 0.0),
          ),
        ],
      ),
    });

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => _model.unfocusNode.canRequestFocus
          ? FocusScope.of(context).requestFocus(_model.unfocusNode)
          : FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
        body: SafeArea(
          top: true,
          child: Container(
            width: double.infinity,
            height: double.infinity,
            decoration: BoxDecoration(
              color: FlutterFlowTheme.of(context).secondaryBackground,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Expanded(
                  child: Container(
                    width: double.infinity,
                    height: double.infinity,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).primaryBackground,
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Container(
                              width: double.infinity,
                              height: 80,
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                              ),
                              child: wrapWithModel(
                                model: _model.appTitleModel,
                                updateCallback: () => setState(() {}),
                                child: AppTitleWidget(),
                              ).animateOnPageLoad(animationsMap[
                                  'appTitleOnPageLoadAnimation']!),
                            ),
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                              child: Container(
                                width: double.infinity,
                                height: 62,
                                decoration: BoxDecoration(),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          45, 0, 0, 0),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Align(
                                            alignment:
                                                AlignmentDirectional(0, 0),
                                            child: Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(0, 5, 0, 0),
                                              child: Text(
                                                'History',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .headlineSmall
                                                        .override(
                                                          fontFamily:
                                                              'Josefin Sans',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .secondary,
                                                          fontSize: 28,
                                                          letterSpacing: 0,
                                                        ),
                                              ).animateOnPageLoad(animationsMap[
                                                  'textOnPageLoadAnimation']!),
                                            ),
                                          ),
                                          Container(
                                            decoration: BoxDecoration(),
                                            child: Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(40, 0, 0, 0),
                                              child: Row(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  Align(
                                                    alignment:
                                                        AlignmentDirectional(
                                                            -1, 0),
                                                    child: Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0, 5, 0, 0),
                                                      child: Container(
                                                        decoration:
                                                            BoxDecoration(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .secondaryBackground,
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(20),
                                                        ),
                                                        child: Align(
                                                          alignment:
                                                              AlignmentDirectional(
                                                                  0, 0),
                                                          child: FutureBuilder<
                                                              List<
                                                                  ExercisesRow>>(
                                                            future:
                                                                ExercisesTable()
                                                                    .queryRows(
                                                              queryFn: (q) =>
                                                                  q.order(
                                                                      'created_at'),
                                                            ),
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
                                                                  exerciseExercisesRowList =
                                                                  snapshot
                                                                      .data!;
                                                              return FlutterFlowDropDown<
                                                                  int>(
                                                                controller: _model
                                                                        .exerciseValueController ??=
                                                                    FormFieldController<
                                                                            int>(
                                                                        null),
                                                                options: List<
                                                                        int>.from(
                                                                    exerciseExercisesRowList
                                                                        .map((e) =>
                                                                            e.id)
                                                                        .toList()),
                                                                optionLabels: exerciseExercisesRowList
                                                                    .map((e) =>
                                                                        e.name)
                                                                    .withoutNulls
                                                                    .toList(),
                                                                onChanged: (val) =>
                                                                    setState(() =>
                                                                        _model.exerciseValue =
                                                                            val),
                                                                width: 176,
                                                                height: 50,
                                                                textStyle: FlutterFlowTheme.of(
                                                                        context)
                                                                    .titleSmall
                                                                    .override(
                                                                      fontFamily:
                                                                          'Lato',
                                                                      fontSize:
                                                                          12,
                                                                      letterSpacing:
                                                                          0,
                                                                    ),
                                                                hintText:
                                                                    'Exercise',
                                                                icon: Icon(
                                                                  Icons
                                                                      .keyboard_arrow_down_rounded,
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .primaryText,
                                                                  size: 24,
                                                                ),
                                                                elevation: 2,
                                                                borderColor: Colors
                                                                    .transparent,
                                                                borderWidth: 2,
                                                                borderRadius: 8,
                                                                margin:
                                                                    EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            16,
                                                                            0,
                                                                            16,
                                                                            0),
                                                                hidesUnderline:
                                                                    true,
                                                                isOverButton:
                                                                    true,
                                                                isSearchable:
                                                                    false,
                                                                isMultiSelect:
                                                                    false,
                                                              ).animateOnPageLoad(
                                                                  animationsMap[
                                                                      'dropDownOnPageLoadAnimation']!);
                                                            },
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ],
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
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(30, 15, 30, 0),
                              child: Container(
                                width: double.infinity,
                                height: 510,
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                ),
                                child: Container(
                                  height: 556,
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context)
                                        .primaryBackground,
                                  ),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Column(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Container(
                                            height: 505,
                                            decoration: BoxDecoration(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryBackground,
                                              borderRadius:
                                                  BorderRadius.circular(30),
                                            ),
                                            child: Column(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: [
                                                    Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                      children: [
                                                        Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      0,
                                                                      20,
                                                                      0,
                                                                      10),
                                                          child: Container(
                                                            width: 330,
                                                            height: 23,
                                                            decoration:
                                                                BoxDecoration(
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .secondaryBackground,
                                                            ),
                                                            child: FutureBuilder<
                                                                List<
                                                                    ExercisesRow>>(
                                                              future: ExercisesTable()
                                                                  .querySingleRow(
                                                                queryFn: (q) =>
                                                                    q.eq(
                                                                  'id',
                                                                  _model
                                                                      .exerciseValue,
                                                                ),
                                                              ),
                                                              builder: (context,
                                                                  snapshot) {
                                                                // Customize what your widget looks like when it's loading.
                                                                if (!snapshot
                                                                    .hasData) {
                                                                  return Center(
                                                                    child:
                                                                        SizedBox(
                                                                      width: 20,
                                                                      height:
                                                                          20,
                                                                      child:
                                                                          SpinKitRing(
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .primary,
                                                                        size:
                                                                            20,
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
                                                                  valueOrDefault<
                                                                      String>(
                                                                    textExercisesRow
                                                                        ?.name,
                                                                    'Choose an Exercise',
                                                                  ),
                                                                  textAlign:
                                                                      TextAlign
                                                                          .center,
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyLarge
                                                                      .override(
                                                                        fontFamily:
                                                                            'Lato',
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .primaryText,
                                                                        letterSpacing:
                                                                            0,
                                                                        fontWeight:
                                                                            FontWeight.w600,
                                                                      ),
                                                                );
                                                              },
                                                            ),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                    Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                      children: [
                                                        Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(15,
                                                                      0, 0, 6),
                                                          child: Container(
                                                            width: 303,
                                                            height: 30,
                                                            decoration:
                                                                BoxDecoration(
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .secondaryBackground,
                                                            ),
                                                            child: Row(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .spaceBetween,
                                                              children: [
                                                                Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          15,
                                                                          0,
                                                                          0,
                                                                          0),
                                                                  child: Text(
                                                                    'Set',
                                                                    textAlign:
                                                                        TextAlign
                                                                            .start,
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .labelSmall
                                                                        .override(
                                                                          fontFamily:
                                                                              'Lato',
                                                                          letterSpacing:
                                                                              0,
                                                                        ),
                                                                  ),
                                                                ),
                                                                Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          3,
                                                                          0,
                                                                          0,
                                                                          0),
                                                                  child: Text(
                                                                    'Weight',
                                                                    textAlign:
                                                                        TextAlign
                                                                            .center,
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .labelSmall
                                                                        .override(
                                                                          fontFamily:
                                                                              'Lato',
                                                                          letterSpacing:
                                                                              0,
                                                                        ),
                                                                  ),
                                                                ),
                                                                Text(
                                                                  'Reps',
                                                                  textAlign:
                                                                      TextAlign
                                                                          .center,
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .labelSmall
                                                                      .override(
                                                                        fontFamily:
                                                                            'Lato',
                                                                        letterSpacing:
                                                                            0,
                                                                      ),
                                                                ),
                                                                Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0,
                                                                          0,
                                                                          18,
                                                                          0),
                                                                  child: Text(
                                                                    'Date',
                                                                    textAlign:
                                                                        TextAlign
                                                                            .center,
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .labelSmall
                                                                        .override(
                                                                          fontFamily:
                                                                              'Lato',
                                                                          letterSpacing:
                                                                              0,
                                                                        ),
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                    Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      children: [
                                                        SingleChildScrollView(
                                                          child: Column(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            children: [
                                                              FutureBuilder<
                                                                  List<
                                                                      ExercisesRow>>(
                                                                future: ExercisesTable()
                                                                    .querySingleRow(
                                                                  queryFn:
                                                                      (q) =>
                                                                          q.eq(
                                                                    'id',
                                                                    _model
                                                                        .exerciseValue,
                                                                  ),
                                                                ),
                                                                builder: (context,
                                                                    snapshot) {
                                                                  // Customize what your widget looks like when it's loading.
                                                                  if (!snapshot
                                                                      .hasData) {
                                                                    return Center(
                                                                      child:
                                                                          SizedBox(
                                                                        width:
                                                                            20,
                                                                        height:
                                                                            20,
                                                                        child:
                                                                            SpinKitRing(
                                                                          color:
                                                                              FlutterFlowTheme.of(context).primary,
                                                                          size:
                                                                              20,
                                                                        ),
                                                                      ),
                                                                    );
                                                                  }
                                                                  List<ExercisesRow>
                                                                      containerExercisesRowList =
                                                                      snapshot
                                                                          .data!;
                                                                  final containerExercisesRow = containerExercisesRowList
                                                                          .isNotEmpty
                                                                      ? containerExercisesRowList
                                                                          .first
                                                                      : null;
                                                                  return Container(
                                                                    width: 328,
                                                                    height: 380,
                                                                    decoration:
                                                                        BoxDecoration(),
                                                                    child: FutureBuilder<
                                                                        List<
                                                                            SetsRow>>(
                                                                      future: SetsTable()
                                                                          .queryRows(
                                                                        queryFn: (q) => q
                                                                            .eq(
                                                                              'exercise_id',
                                                                              _model.exerciseValue,
                                                                            )
                                                                            .order('created_at')
                                                                            .order('index', ascending: true),
                                                                      ),
                                                                      builder:
                                                                          (context,
                                                                              snapshot) {
                                                                        // Customize what your widget looks like when it's loading.
                                                                        if (!snapshot
                                                                            .hasData) {
                                                                          return Center(
                                                                            child:
                                                                                SizedBox(
                                                                              width: 20,
                                                                              height: 20,
                                                                              child: SpinKitRing(
                                                                                color: FlutterFlowTheme.of(context).primary,
                                                                                size: 20,
                                                                              ),
                                                                            ),
                                                                          );
                                                                        }
                                                                        List<SetsRow>
                                                                            listViewSetsRowList =
                                                                            snapshot.data!;
                                                                        return ListView
                                                                            .builder(
                                                                          padding:
                                                                              EdgeInsets.zero,
                                                                          primary:
                                                                              false,
                                                                          scrollDirection:
                                                                              Axis.vertical,
                                                                          itemCount:
                                                                              listViewSetsRowList.length,
                                                                          itemBuilder:
                                                                              (context, listViewIndex) {
                                                                            final listViewSetsRow =
                                                                                listViewSetsRowList[listViewIndex];
                                                                            return Padding(
                                                                              padding: EdgeInsetsDirectional.fromSTEB(
                                                                                  0,
                                                                                  valueOrDefault<double>(
                                                                                    (listViewSetsRow.index == 1) && (listViewIndex != 0) ? 40.0 : 0.0,
                                                                                    0.0,
                                                                                  ),
                                                                                  0,
                                                                                  0),
                                                                              child: Container(
                                                                                decoration: BoxDecoration(),
                                                                                child: Column(
                                                                                  mainAxisSize: MainAxisSize.max,
                                                                                  children: [
                                                                                    Padding(
                                                                                      padding: EdgeInsetsDirectional.fromSTEB(15, 0, 15, 0),
                                                                                      child: Row(
                                                                                        mainAxisSize: MainAxisSize.max,
                                                                                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                                                                                        children: [
                                                                                          Padding(
                                                                                            padding: EdgeInsetsDirectional.fromSTEB(20, 0, 0, 0),
                                                                                            child: Text(
                                                                                              valueOrDefault<String>(
                                                                                                listViewSetsRow.index?.toString(),
                                                                                                '0',
                                                                                              ),
                                                                                              style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                    fontFamily: 'Lato',
                                                                                                    letterSpacing: 0,
                                                                                                  ),
                                                                                            ),
                                                                                          ),
                                                                                          Expanded(
                                                                                            child: Row(
                                                                                              mainAxisSize: MainAxisSize.max,
                                                                                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                                                                              children: [
                                                                                                Container(
                                                                                                  width: 150,
                                                                                                  height: 41,
                                                                                                  decoration: BoxDecoration(
                                                                                                    color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                                  ),
                                                                                                  child: Padding(
                                                                                                    padding: EdgeInsetsDirectional.fromSTEB(16, 0, 6, 0),
                                                                                                    child: Row(
                                                                                                      mainAxisSize: MainAxisSize.max,
                                                                                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                                      children: [
                                                                                                        Container(
                                                                                                          width: 40,
                                                                                                          height: 25,
                                                                                                          decoration: BoxDecoration(
                                                                                                            color: FlutterFlowTheme.of(context).alternate,
                                                                                                            borderRadius: BorderRadius.circular(10),
                                                                                                          ),
                                                                                                          alignment: AlignmentDirectional(0, 0),
                                                                                                          child: Align(
                                                                                                            alignment: AlignmentDirectional(0, 0),
                                                                                                            child: Text(
                                                                                                              valueOrDefault<String>(
                                                                                                                listViewSetsRow.weight?.toString(),
                                                                                                                '0',
                                                                                                              ),
                                                                                                              textAlign: TextAlign.center,
                                                                                                              style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                                    fontFamily: 'Lato',
                                                                                                                    letterSpacing: 0,
                                                                                                                  ),
                                                                                                            ),
                                                                                                          ),
                                                                                                        ),
                                                                                                        Text(
                                                                                                          'x',
                                                                                                          style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                                fontFamily: 'Lato',
                                                                                                                letterSpacing: 0,
                                                                                                              ),
                                                                                                        ),
                                                                                                        Container(
                                                                                                          width: 40,
                                                                                                          height: 25,
                                                                                                          decoration: BoxDecoration(
                                                                                                            color: FlutterFlowTheme.of(context).alternate,
                                                                                                            borderRadius: BorderRadius.circular(10),
                                                                                                          ),
                                                                                                          alignment: AlignmentDirectional(0, 0),
                                                                                                          child: Align(
                                                                                                            alignment: AlignmentDirectional(0, 0),
                                                                                                            child: Text(
                                                                                                              valueOrDefault<String>(
                                                                                                                listViewSetsRow.reps?.toString(),
                                                                                                                '0',
                                                                                                              ),
                                                                                                              textAlign: TextAlign.center,
                                                                                                              style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                                    fontFamily: 'Lato',
                                                                                                                    letterSpacing: 0,
                                                                                                                  ),
                                                                                                            ),
                                                                                                          ),
                                                                                                        ),
                                                                                                      ],
                                                                                                    ),
                                                                                                  ),
                                                                                                ),
                                                                                              ],
                                                                                            ),
                                                                                          ),
                                                                                          Container(
                                                                                            width: 37,
                                                                                            height: 38,
                                                                                            decoration: BoxDecoration(
                                                                                              color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                            ),
                                                                                            child: Align(
                                                                                              alignment: AlignmentDirectional(-1, 0),
                                                                                              child: Text(
                                                                                                dateTimeFormat(
                                                                                                  'Md',
                                                                                                  listViewSetsRow.createdAt,
                                                                                                  locale: FFLocalizations.of(context).languageCode,
                                                                                                ),
                                                                                                style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                      fontFamily: 'Lato',
                                                                                                      letterSpacing: 0,
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
                                                                            );
                                                                          },
                                                                        );
                                                                      },
                                                                    ),
                                                                  );
                                                                },
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ],
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ).animateOnPageLoad(animationsMap[
                                  'containerOnPageLoadAnimation']!),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
