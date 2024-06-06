import '/auth/supabase_auth/auth_util.dart';
import '/backend/supabase/supabase.dart';
import '/components/app_title/app_title_widget.dart';
import '/components/paid_plan_prompt/paid_plan_prompt_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_charts.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'dart:math';
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import 'chart_page_model.dart';
export 'chart_page_model.dart';

class ChartPageWidget extends StatefulWidget {
  const ChartPageWidget({super.key});

  @override
  State<ChartPageWidget> createState() => _ChartPageWidgetState();
}

class _ChartPageWidgetState extends State<ChartPageWidget>
    with TickerProviderStateMixin {
  late ChartPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = <String, AnimationInfo>{};

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ChartPageModel());

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
      'containerOnPageLoadAnimation1': AnimationInfo(
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
      'dropDownOnPageLoadAnimation1': AnimationInfo(
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
      'containerOnPageLoadAnimation2': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeIn,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
      'containerOnPageLoadAnimation3': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeIn,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
      'containerOnPageLoadAnimation4': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeIn,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
      'containerOnPageLoadAnimation5': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeIn,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
      'containerOnPageLoadAnimation6': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeIn,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: Offset(0.0, 50.0),
            end: Offset(0.0, 0.0),
          ),
        ],
      ),
      'dropDownOnPageLoadAnimation2': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeIn,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: Offset(0.0, 50.0),
            end: Offset(0.0, 0.0),
          ),
        ],
      ),
      'containerOnPageLoadAnimation7': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeIn,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: Offset(0.0, 50.0),
            end: Offset(0.0, 0.0),
          ),
        ],
      ),
      'containerOnPageLoadAnimation8': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeIn,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: Offset(0.0, 50.0),
            end: Offset(0.0, 0.0),
          ),
        ],
      ),
      'dropDownOnPageLoadAnimation3': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeIn,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: Offset(0.0, 50.0),
            end: Offset(0.0, 0.0),
          ),
        ],
      ),
      'containerOnPageLoadAnimation9': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeIn,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: Offset(0.0, 50.0),
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
    context.watch<FFAppState>();

    return FutureBuilder<List<ExercisesRow>>(
      future: ExercisesTable().queryRows(
        queryFn: (q) => q.order('created_at'),
      ),
      builder: (context, snapshot) {
        // Customize what your widget looks like when it's loading.
        if (!snapshot.hasData) {
          return Scaffold(
            backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
            body: Center(
              child: SizedBox(
                width: 20,
                height: 20,
                child: SpinKitRing(
                  color: FlutterFlowTheme.of(context).primary,
                  size: 20,
                ),
              ),
            ),
          );
        }
        List<ExercisesRow> chartPageExercisesRowList = snapshot.data!;
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
                  color: FlutterFlowTheme.of(context).primaryBackground,
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
                            Container(
                              width: double.infinity,
                              height: 70,
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
                                  EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                              child: Container(
                                width: double.infinity,
                                height: 62,
                                decoration: BoxDecoration(),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      45, 0, 0, 0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Align(
                                        alignment: AlignmentDirectional(-1, 0),
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0, 5, 0, 0),
                                          child: Text(
                                            'Charts',
                                            style: FlutterFlowTheme.of(context)
                                                .headlineSmall
                                                .override(
                                                  fontFamily: 'Josefin Sans',
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondary,
                                                  fontSize: 28,
                                                  letterSpacing: 0,
                                                ),
                                          ).animateOnPageLoad(animationsMap[
                                              'textOnPageLoadAnimation']!),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            30, 0, 0, 0),
                                        child: Container(
                                          decoration: BoxDecoration(),
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    50, 0, 10, 0),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Align(
                                                  alignment:
                                                      AlignmentDirectional(
                                                          0, 0),
                                                  child: Container(
                                                    decoration: BoxDecoration(
                                                      color: FlutterFlowTheme
                                                              .of(context)
                                                          .secondaryBackground,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              16),
                                                    ),
                                                    child: Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      children: [
                                                        FutureBuilder<
                                                            List<UsersRow>>(
                                                          future: UsersTable()
                                                              .querySingleRow(
                                                            queryFn: (q) =>
                                                                q.eq(
                                                              'user_id',
                                                              currentUserUid,
                                                            ),
                                                          ),
                                                          builder: (context,
                                                              snapshot) {
                                                            // Customize what your widget looks like when it's loading.
                                                            if (!snapshot
                                                                .hasData) {
                                                              return Center(
                                                                child: SizedBox(
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
                                                            List<UsersRow>
                                                                chartTypeUsersRowList =
                                                                snapshot.data!;
                                                            final chartTypeUsersRow =
                                                                chartTypeUsersRowList
                                                                        .isNotEmpty
                                                                    ? chartTypeUsersRowList
                                                                        .first
                                                                    : null;
                                                            return FlutterFlowDropDown<
                                                                String>(
                                                              controller: _model
                                                                      .chartTypeValueController ??=
                                                                  FormFieldController<
                                                                      String>(
                                                                _model.chartTypeValue ??=
                                                                    'Weight',
                                                              ),
                                                              options: List<
                                                                  String>.from([
                                                                'Weight',
                                                                'Reps',
                                                                'Volume'
                                                              ]),
                                                              optionLabels: [
                                                                'Weight',
                                                                'Reps',
                                                                'Volume'
                                                              ],
                                                              onChanged:
                                                                  (val) async {
                                                                setState(() =>
                                                                    _model.chartTypeValue =
                                                                        val);
                                                                setState(() =>
                                                                    _model.requestCompleter =
                                                                        null);
                                                                await _model
                                                                    .waitForRequestCompleted();
                                                              },
                                                              width: 140,
                                                              height: 50,
                                                              textStyle:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .titleSmall
                                                                      .override(
                                                                        fontFamily:
                                                                            'Lato',
                                                                        fontSize:
                                                                            16,
                                                                        letterSpacing:
                                                                            0,
                                                                      ),
                                                              hintText:
                                                                  'Chart Type',
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
                                                                          20,
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
                                                                    'dropDownOnPageLoadAnimation1']!);
                                                          },
                                                        ),
                                                      ],
                                                    ),
                                                  ).animateOnPageLoad(animationsMap[
                                                      'containerOnPageLoadAnimation1']!),
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
                            Builder(
                              builder: (context) {
                                if (FFAppState().advChart == false) {
                                  return Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0, 10, 0, 0),
                                    child: Container(
                                      width: double.infinity,
                                      height: 352,
                                      decoration: BoxDecoration(),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Align(
                                            alignment:
                                                AlignmentDirectional(0, 0),
                                            child: Container(
                                              width: 350,
                                              height: 379,
                                              decoration: BoxDecoration(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryBackground,
                                                borderRadius: BorderRadius.only(
                                                  bottomLeft:
                                                      Radius.circular(0),
                                                  bottomRight:
                                                      Radius.circular(0),
                                                  topLeft: Radius.circular(20),
                                                  topRight: Radius.circular(29),
                                                ),
                                              ),
                                              child: Column(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  if (_model.chartTypeValue !=
                                                      'Volume')
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(15, 25,
                                                                  25, 0),
                                                      child: FutureBuilder<
                                                          List<SetsRow>>(
                                                        future: (_model
                                                                    .requestCompleter ??=
                                                                Completer<
                                                                    List<
                                                                        SetsRow>>()
                                                                  ..complete(
                                                                      SetsTable()
                                                                          .queryRows(
                                                                    queryFn: (q) => q
                                                                        .eq(
                                                                          'exercise_id',
                                                                          _model
                                                                              .exercisesValue,
                                                                        )
                                                                        .eq(
                                                                          'index',
                                                                          _model
                                                                              .setsValue,
                                                                        )
                                                                        .neq(
                                                                          'weight',
                                                                          0,
                                                                        )
                                                                        .neq(
                                                                          'reps',
                                                                          0,
                                                                        )
                                                                        .order('created_at'),
                                                                    limit: 10,
                                                                  )))
                                                            .future,
                                                        builder: (context,
                                                            snapshot) {
                                                          // Customize what your widget looks like when it's loading.
                                                          if (!snapshot
                                                              .hasData) {
                                                            return Center(
                                                              child: SizedBox(
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
                                                          List<SetsRow>
                                                              chartSetsRowList =
                                                              snapshot.data!;
                                                          return Container(
                                                            width: 340,
                                                            height: 310,
                                                            child:
                                                                FlutterFlowLineChart(
                                                              data: [
                                                                FFLineChartData(
                                                                  xData: chartSetsRowList
                                                                      .map((e) =>
                                                                          e.eIndex)
                                                                      .withoutNulls
                                                                      .toList(),
                                                                  yData: () {
                                                                    if (_model
                                                                            .chartTypeValue ==
                                                                        'Reps') {
                                                                      return chartSetsRowList
                                                                          .map((e) =>
                                                                              e.reps)
                                                                          .withoutNulls
                                                                          .toList();
                                                                    } else if (_model
                                                                            .chartTypeValue ==
                                                                        'Volume') {
                                                                      return chartSetsRowList
                                                                          .map((e) =>
                                                                              e.volume)
                                                                          .withoutNulls
                                                                          .toList();
                                                                    } else {
                                                                      return chartSetsRowList
                                                                          .map((e) =>
                                                                              e.weight)
                                                                          .withoutNulls
                                                                          .toList();
                                                                    }
                                                                  }(),
                                                                  settings:
                                                                      LineChartBarData(
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .secondary,
                                                                    barWidth: 2,
                                                                  ),
                                                                )
                                                              ],
                                                              chartStylingInfo:
                                                                  ChartStylingInfo(
                                                                enableTooltip:
                                                                    true,
                                                                tooltipBackgroundColor:
                                                                    FlutterFlowTheme.of(
                                                                            context)
                                                                        .alternate,
                                                                backgroundColor:
                                                                    Colors
                                                                        .transparent,
                                                                showBorder:
                                                                    false,
                                                              ),
                                                              axisBounds:
                                                                  AxisBounds(),
                                                              xAxisLabelInfo:
                                                                  AxisLabelInfo(
                                                                reservedSize:
                                                                    32,
                                                              ),
                                                              yAxisLabelInfo:
                                                                  AxisLabelInfo(
                                                                showLabels:
                                                                    true,
                                                                labelTextStyle:
                                                                    FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodySmall
                                                                        .override(
                                                                          fontFamily:
                                                                              'Lato',
                                                                          fontSize:
                                                                              10,
                                                                          letterSpacing:
                                                                              0,
                                                                        ),
                                                                labelInterval:
                                                                    10,
                                                                reservedSize:
                                                                    32,
                                                              ),
                                                            ),
                                                          );
                                                        },
                                                      ),
                                                    ),
                                                  if (_model.chartTypeValue ==
                                                      'Volume')
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(15, 25,
                                                                  25, 0),
                                                      child: FutureBuilder<
                                                          List<SetsRow>>(
                                                        future: SetsTable()
                                                            .queryRows(
                                                          queryFn: (q) => q
                                                              .eq(
                                                                'exercise_id',
                                                                _model
                                                                    .exercisesValue,
                                                              )
                                                              .eq(
                                                                'index',
                                                                _model
                                                                    .setsValue,
                                                              )
                                                              .neq(
                                                                'weight',
                                                                0,
                                                              )
                                                              .neq(
                                                                'reps',
                                                                0,
                                                              )
                                                              .order(
                                                                  'created_at',
                                                                  ascending:
                                                                      true),
                                                          limit: 10,
                                                        ),
                                                        builder: (context,
                                                            snapshot) {
                                                          // Customize what your widget looks like when it's loading.
                                                          if (!snapshot
                                                              .hasData) {
                                                            return Center(
                                                              child: SizedBox(
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
                                                          List<SetsRow>
                                                              chartSetsRowList =
                                                              snapshot.data!;
                                                          return Container(
                                                            width: 340,
                                                            height: 310,
                                                            child:
                                                                FlutterFlowLineChart(
                                                              data: [
                                                                FFLineChartData(
                                                                  xData: chartSetsRowList
                                                                      .map((e) =>
                                                                          e.eIndex)
                                                                      .withoutNulls
                                                                      .toList(),
                                                                  yData: () {
                                                                    if (_model
                                                                            .chartTypeValue ==
                                                                        'Reps') {
                                                                      return chartSetsRowList
                                                                          .map((e) =>
                                                                              e.reps)
                                                                          .withoutNulls
                                                                          .toList();
                                                                    } else if (_model
                                                                            .chartTypeValue ==
                                                                        'Volume') {
                                                                      return chartSetsRowList
                                                                          .map((e) =>
                                                                              e.volume)
                                                                          .withoutNulls
                                                                          .toList();
                                                                    } else {
                                                                      return chartSetsRowList
                                                                          .map((e) =>
                                                                              e.weight)
                                                                          .withoutNulls
                                                                          .toList();
                                                                    }
                                                                  }(),
                                                                  settings:
                                                                      LineChartBarData(
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .secondary,
                                                                    barWidth: 2,
                                                                  ),
                                                                )
                                                              ],
                                                              chartStylingInfo:
                                                                  ChartStylingInfo(
                                                                enableTooltip:
                                                                    true,
                                                                tooltipBackgroundColor:
                                                                    FlutterFlowTheme.of(
                                                                            context)
                                                                        .alternate,
                                                                backgroundColor:
                                                                    Colors
                                                                        .transparent,
                                                                showBorder:
                                                                    false,
                                                              ),
                                                              axisBounds:
                                                                  AxisBounds(),
                                                              xAxisLabelInfo:
                                                                  AxisLabelInfo(
                                                                reservedSize:
                                                                    32,
                                                              ),
                                                              yAxisLabelInfo:
                                                                  AxisLabelInfo(
                                                                showLabels:
                                                                    true,
                                                                labelTextStyle:
                                                                    FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodySmall
                                                                        .override(
                                                                          fontFamily:
                                                                              'Lato',
                                                                          fontSize:
                                                                              10,
                                                                          letterSpacing:
                                                                              0,
                                                                        ),
                                                                labelInterval:
                                                                    100,
                                                                reservedSize:
                                                                    32,
                                                              ),
                                                            ),
                                                          );
                                                        },
                                                      ),
                                                    ),
                                                ],
                                              ),
                                            ).animateOnPageLoad(animationsMap[
                                                'containerOnPageLoadAnimation2']!),
                                          ),
                                        ],
                                      ),
                                    ),
                                  );
                                } else {
                                  return Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0, 10, 0, 0),
                                    child: Container(
                                      width: double.infinity,
                                      height: 352,
                                      decoration: BoxDecoration(),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Align(
                                            alignment:
                                                AlignmentDirectional(0, 0),
                                            child: FutureBuilder<
                                                List<ExercisesRow>>(
                                              future: ExercisesTable()
                                                  .querySingleRow(
                                                queryFn: (q) => q.eq(
                                                  'id',
                                                  _model.exercisesValue,
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
                                                    containerExercisesRowList =
                                                    snapshot.data!;
                                                final containerExercisesRow =
                                                    containerExercisesRowList
                                                            .isNotEmpty
                                                        ? containerExercisesRowList
                                                            .first
                                                        : null;
                                                return Container(
                                                  width: 350,
                                                  height: 379,
                                                  decoration: BoxDecoration(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .secondaryBackground,
                                                    borderRadius:
                                                        BorderRadius.only(
                                                      bottomLeft:
                                                          Radius.circular(0),
                                                      bottomRight:
                                                          Radius.circular(0),
                                                      topLeft:
                                                          Radius.circular(20),
                                                      topRight:
                                                          Radius.circular(29),
                                                    ),
                                                  ),
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      if (_model
                                                              .chartTypeValue !=
                                                          'Volume')
                                                        Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      15,
                                                                      25,
                                                                      25,
                                                                      0),
                                                          child: FutureBuilder<
                                                              List<SetsRow>>(
                                                            future: SetsTable()
                                                                .queryRows(
                                                              queryFn: (q) => q
                                                                  .eq(
                                                                    'exercise_id',
                                                                    _model
                                                                        .exercisesValue,
                                                                  )
                                                                  .neq(
                                                                    'weight',
                                                                    0,
                                                                  )
                                                                  .neq(
                                                                    'reps',
                                                                    0,
                                                                  )
                                                                  .gt(
                                                                    'e_index',
                                                                    (containerExercisesRow!
                                                                            .numDone!) -
                                                                        10,
                                                                  )
                                                                  .order(
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
                                                              List<SetsRow>
                                                                  chartSetsRowList =
                                                                  snapshot
                                                                      .data!;
                                                              return Container(
                                                                width: 340,
                                                                height: 315,
                                                                child: Stack(
                                                                  children: [
                                                                    FlutterFlowLineChart(
                                                                      data: [
                                                                        FFLineChartData(
                                                                          xData: chartSetsRowList
                                                                              .where((e) => e.index == 1)
                                                                              .toList()
                                                                              .map((e) => e.eIndex)
                                                                              .withoutNulls
                                                                              .toList(),
                                                                          yData: _model.chartTypeValue == 'Reps'
                                                                              ? chartSetsRowList.where((e) => e.index == 1).toList().map((e) => e.reps).withoutNulls.toList()
                                                                              : chartSetsRowList.where((e) => e.index == 1).toList().map((e) => e.weight).withoutNulls.toList(),
                                                                          settings:
                                                                              LineChartBarData(
                                                                            color:
                                                                                FlutterFlowTheme.of(context).primary,
                                                                            barWidth:
                                                                                2,
                                                                          ),
                                                                        ),
                                                                        FFLineChartData(
                                                                          xData: chartSetsRowList
                                                                              .where((e) => e.index == 2)
                                                                              .toList()
                                                                              .map((e) => e.eIndex)
                                                                              .withoutNulls
                                                                              .toList(),
                                                                          yData: _model.chartTypeValue == 'Reps'
                                                                              ? chartSetsRowList.where((e) => e.index == 2).toList().map((e) => e.reps).withoutNulls.toList()
                                                                              : chartSetsRowList.where((e) => e.index == 2).toList().map((e) => e.weight).withoutNulls.toList(),
                                                                          settings:
                                                                              LineChartBarData(
                                                                            color:
                                                                                FlutterFlowTheme.of(context).secondary,
                                                                            barWidth:
                                                                                2,
                                                                          ),
                                                                        ),
                                                                        FFLineChartData(
                                                                          xData: chartSetsRowList
                                                                              .where((e) => e.index == 3)
                                                                              .toList()
                                                                              .map((e) => e.eIndex)
                                                                              .withoutNulls
                                                                              .toList(),
                                                                          yData: _model.chartTypeValue == 'Reps'
                                                                              ? chartSetsRowList.where((e) => e.index == 3).toList().map((e) => e.reps).withoutNulls.toList()
                                                                              : chartSetsRowList.where((e) => e.index == 3).toList().map((e) => e.weight).withoutNulls.toList(),
                                                                          settings:
                                                                              LineChartBarData(
                                                                            color:
                                                                                FlutterFlowTheme.of(context).secondaryText,
                                                                            barWidth:
                                                                                2,
                                                                          ),
                                                                        )
                                                                      ],
                                                                      chartStylingInfo:
                                                                          ChartStylingInfo(
                                                                        enableTooltip:
                                                                            true,
                                                                        tooltipBackgroundColor:
                                                                            FlutterFlowTheme.of(context).alternate,
                                                                        backgroundColor:
                                                                            Colors.transparent,
                                                                        showBorder:
                                                                            false,
                                                                      ),
                                                                      axisBounds:
                                                                          AxisBounds(),
                                                                      xAxisLabelInfo:
                                                                          AxisLabelInfo(
                                                                        reservedSize:
                                                                            32,
                                                                      ),
                                                                      yAxisLabelInfo:
                                                                          AxisLabelInfo(
                                                                        showLabels:
                                                                            true,
                                                                        labelTextStyle: FlutterFlowTheme.of(context)
                                                                            .bodySmall
                                                                            .override(
                                                                              fontFamily: 'Lato',
                                                                              fontSize: 10,
                                                                              letterSpacing: 0,
                                                                            ),
                                                                        labelInterval:
                                                                            10,
                                                                        reservedSize:
                                                                            32,
                                                                      ),
                                                                    ),
                                                                    Align(
                                                                      alignment:
                                                                          AlignmentDirectional(
                                                                              1,
                                                                              1),
                                                                      child:
                                                                          FlutterFlowChartLegendWidget(
                                                                        entries: [
                                                                          LegendEntry(
                                                                              FlutterFlowTheme.of(context).primary,
                                                                              'Set 1'),
                                                                          LegendEntry(
                                                                              FlutterFlowTheme.of(context).secondary,
                                                                              'Set 2'),
                                                                          LegendEntry(
                                                                              FlutterFlowTheme.of(context).secondaryText,
                                                                              'Set 3'),
                                                                        ],
                                                                        width:
                                                                            100,
                                                                        height:
                                                                            70,
                                                                        textStyle: FlutterFlowTheme.of(context)
                                                                            .bodyMedium
                                                                            .override(
                                                                              fontFamily: 'Lato',
                                                                              letterSpacing: 0,
                                                                            ),
                                                                        textPadding: EdgeInsetsDirectional.fromSTEB(
                                                                            5,
                                                                            0,
                                                                            0,
                                                                            0),
                                                                        padding: EdgeInsetsDirectional.fromSTEB(
                                                                            5,
                                                                            0,
                                                                            5,
                                                                            0),
                                                                        backgroundColor:
                                                                            Colors.transparent,
                                                                        borderWidth:
                                                                            0,
                                                                        borderColor:
                                                                            Colors.transparent,
                                                                        indicatorSize:
                                                                            10,
                                                                      ),
                                                                    ),
                                                                  ],
                                                                ),
                                                              );
                                                            },
                                                          ),
                                                        ),
                                                      if (_model
                                                              .chartTypeValue ==
                                                          'Volume')
                                                        Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      15,
                                                                      25,
                                                                      25,
                                                                      0),
                                                          child: FutureBuilder<
                                                              List<SetsRow>>(
                                                            future: SetsTable()
                                                                .queryRows(
                                                              queryFn: (q) => q
                                                                  .eq(
                                                                    'exercise_id',
                                                                    _model
                                                                        .exercisesValue,
                                                                  )
                                                                  .neq(
                                                                    'weight',
                                                                    0,
                                                                  )
                                                                  .neq(
                                                                    'reps',
                                                                    0,
                                                                  )
                                                                  .gt(
                                                                    'e_index',
                                                                    (containerExercisesRow!
                                                                            .numDone!) -
                                                                        10,
                                                                  )
                                                                  .order(
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
                                                              List<SetsRow>
                                                                  chartSetsRowList =
                                                                  snapshot
                                                                      .data!;
                                                              return Container(
                                                                width: 340,
                                                                height: 315,
                                                                child: Stack(
                                                                  children: [
                                                                    FlutterFlowLineChart(
                                                                      data: [
                                                                        FFLineChartData(
                                                                          xData: chartSetsRowList
                                                                              .where((e) => e.index == 1)
                                                                              .toList()
                                                                              .map((e) => e.eIndex)
                                                                              .withoutNulls
                                                                              .toList(),
                                                                          yData: chartSetsRowList
                                                                              .where((e) => e.index == 1)
                                                                              .toList()
                                                                              .map((e) => e.volume)
                                                                              .withoutNulls
                                                                              .toList(),
                                                                          settings:
                                                                              LineChartBarData(
                                                                            color:
                                                                                FlutterFlowTheme.of(context).primary,
                                                                            barWidth:
                                                                                2,
                                                                          ),
                                                                        ),
                                                                        FFLineChartData(
                                                                          xData: chartSetsRowList
                                                                              .where((e) => e.index == 2)
                                                                              .toList()
                                                                              .map((e) => e.eIndex)
                                                                              .withoutNulls
                                                                              .toList(),
                                                                          yData: chartSetsRowList
                                                                              .where((e) => e.index == 2)
                                                                              .toList()
                                                                              .map((e) => e.volume)
                                                                              .withoutNulls
                                                                              .toList(),
                                                                          settings:
                                                                              LineChartBarData(
                                                                            color:
                                                                                FlutterFlowTheme.of(context).secondary,
                                                                            barWidth:
                                                                                2,
                                                                          ),
                                                                        ),
                                                                        FFLineChartData(
                                                                          xData: chartSetsRowList
                                                                              .where((e) => e.index == 3)
                                                                              .toList()
                                                                              .map((e) => e.eIndex)
                                                                              .withoutNulls
                                                                              .toList(),
                                                                          yData: chartSetsRowList
                                                                              .where((e) => e.index == 3)
                                                                              .toList()
                                                                              .map((e) => e.volume)
                                                                              .withoutNulls
                                                                              .toList(),
                                                                          settings:
                                                                              LineChartBarData(
                                                                            color:
                                                                                FlutterFlowTheme.of(context).secondaryText,
                                                                            barWidth:
                                                                                2,
                                                                          ),
                                                                        )
                                                                      ],
                                                                      chartStylingInfo:
                                                                          ChartStylingInfo(
                                                                        enableTooltip:
                                                                            true,
                                                                        tooltipBackgroundColor:
                                                                            FlutterFlowTheme.of(context).alternate,
                                                                        backgroundColor:
                                                                            Colors.transparent,
                                                                        showBorder:
                                                                            false,
                                                                      ),
                                                                      axisBounds:
                                                                          AxisBounds(),
                                                                      xAxisLabelInfo:
                                                                          AxisLabelInfo(
                                                                        reservedSize:
                                                                            32,
                                                                      ),
                                                                      yAxisLabelInfo:
                                                                          AxisLabelInfo(
                                                                        showLabels:
                                                                            true,
                                                                        labelTextStyle: FlutterFlowTheme.of(context)
                                                                            .bodySmall
                                                                            .override(
                                                                              fontFamily: 'Lato',
                                                                              fontSize: 10,
                                                                              letterSpacing: 0,
                                                                            ),
                                                                        labelInterval:
                                                                            100,
                                                                        reservedSize:
                                                                            32,
                                                                      ),
                                                                    ),
                                                                    Align(
                                                                      alignment:
                                                                          AlignmentDirectional(
                                                                              1,
                                                                              1),
                                                                      child:
                                                                          FlutterFlowChartLegendWidget(
                                                                        entries: [
                                                                          LegendEntry(
                                                                              FlutterFlowTheme.of(context).primary,
                                                                              'Set 1'),
                                                                          LegendEntry(
                                                                              FlutterFlowTheme.of(context).secondary,
                                                                              'Set 2'),
                                                                          LegendEntry(
                                                                              FlutterFlowTheme.of(context).secondaryText,
                                                                              'Set 3'),
                                                                        ],
                                                                        width:
                                                                            100,
                                                                        height:
                                                                            70,
                                                                        textStyle: FlutterFlowTheme.of(context)
                                                                            .bodyMedium
                                                                            .override(
                                                                              fontFamily: 'Lato',
                                                                              letterSpacing: 0,
                                                                            ),
                                                                        textPadding: EdgeInsetsDirectional.fromSTEB(
                                                                            5,
                                                                            0,
                                                                            0,
                                                                            0),
                                                                        padding: EdgeInsetsDirectional.fromSTEB(
                                                                            5,
                                                                            0,
                                                                            5,
                                                                            0),
                                                                        backgroundColor:
                                                                            Colors.transparent,
                                                                        borderWidth:
                                                                            0,
                                                                        borderColor:
                                                                            Colors.transparent,
                                                                        indicatorSize:
                                                                            10,
                                                                      ),
                                                                    ),
                                                                  ],
                                                                ),
                                                              );
                                                            },
                                                          ),
                                                        ),
                                                    ],
                                                  ),
                                                ).animateOnPageLoad(animationsMap[
                                                    'containerOnPageLoadAnimation3']!);
                                              },
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  );
                                }
                              },
                            ),
                            Builder(
                              builder: (context) {
                                if (FFAppState().advChart == false) {
                                  return Container(
                                    width: 350,
                                    height: 38,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                      borderRadius: BorderRadius.only(
                                        bottomLeft: Radius.circular(20),
                                        bottomRight: Radius.circular(20),
                                        topLeft: Radius.circular(0),
                                        topRight: Radius.circular(0),
                                      ),
                                    ),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Expanded(
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    27, 0, 10, 0),
                                            child: FutureBuilder<List<SetsRow>>(
                                              future: SetsTable().queryRows(
                                                queryFn: (q) => q
                                                    .eq(
                                                      'exercise_id',
                                                      _model.exercisesValue,
                                                    )
                                                    .eq(
                                                      'index',
                                                      _model.setsValue,
                                                    )
                                                    .neq(
                                                      'weight',
                                                      0,
                                                    )
                                                    .neq(
                                                      'reps',
                                                      0,
                                                    )
                                                    .order('created_at'),
                                                limit: 10,
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
                                                List<SetsRow>
                                                    listViewSetsRowList =
                                                    snapshot.data!;
                                                return ListView.separated(
                                                  padding: EdgeInsets.zero,
                                                  reverse: true,
                                                  scrollDirection:
                                                      Axis.horizontal,
                                                  itemCount: listViewSetsRowList
                                                      .length,
                                                  separatorBuilder: (_, __) =>
                                                      SizedBox(
                                                          width: (313 - 26) /
                                                                  (listViewSetsRowList
                                                                          .length -
                                                                      1) -
                                                              28),
                                                  itemBuilder:
                                                      (context, listViewIndex) {
                                                    final listViewSetsRow =
                                                        listViewSetsRowList[
                                                            listViewIndex];
                                                    return Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      children: [
                                                        Container(
                                                          width: 26,
                                                          height: 100,
                                                          decoration:
                                                              BoxDecoration(),
                                                          child: Text(
                                                            dateTimeFormat(
                                                              'Md',
                                                              listViewSetsRow
                                                                  .createdAt,
                                                              locale: FFLocalizations
                                                                      .of(context)
                                                                  .languageCode,
                                                            ),
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Lato',
                                                                  fontSize: 10,
                                                                  letterSpacing:
                                                                      0,
                                                                ),
                                                          ),
                                                        ),
                                                      ],
                                                    );
                                                  },
                                                );
                                              },
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ).animateOnPageLoad(animationsMap[
                                      'containerOnPageLoadAnimation4']!);
                                } else {
                                  return Container(
                                    width: 350,
                                    height: 38,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                      borderRadius: BorderRadius.only(
                                        bottomLeft: Radius.circular(20),
                                        bottomRight: Radius.circular(20),
                                        topLeft: Radius.circular(0),
                                        topRight: Radius.circular(0),
                                      ),
                                    ),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Expanded(
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    27, 0, 10, 0),
                                            child: FutureBuilder<List<SetsRow>>(
                                              future: SetsTable().queryRows(
                                                queryFn: (q) => q
                                                    .eq(
                                                      'exercise_id',
                                                      _model.exercisesValue,
                                                    )
                                                    .eq(
                                                      'index',
                                                      1,
                                                    )
                                                    .neq(
                                                      'weight',
                                                      0,
                                                    )
                                                    .neq(
                                                      'reps',
                                                      0,
                                                    )
                                                    .order('created_at'),
                                                limit: 10,
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
                                                List<SetsRow>
                                                    listViewSetsRowList =
                                                    snapshot.data!;
                                                return ListView.separated(
                                                  padding: EdgeInsets.zero,
                                                  reverse: true,
                                                  scrollDirection:
                                                      Axis.horizontal,
                                                  itemCount: listViewSetsRowList
                                                      .length,
                                                  separatorBuilder: (_, __) =>
                                                      SizedBox(
                                                          width: (313 - 26) /
                                                                  (listViewSetsRowList
                                                                          .length -
                                                                      1) -
                                                              28),
                                                  itemBuilder:
                                                      (context, listViewIndex) {
                                                    final listViewSetsRow =
                                                        listViewSetsRowList[
                                                            listViewIndex];
                                                    return Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      children: [
                                                        Container(
                                                          width: 26,
                                                          height: 100,
                                                          decoration:
                                                              BoxDecoration(),
                                                          child: Text(
                                                            dateTimeFormat(
                                                              'Md',
                                                              listViewSetsRow
                                                                  .createdAt,
                                                              locale: FFLocalizations
                                                                      .of(context)
                                                                  .languageCode,
                                                            ),
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Lato',
                                                                  fontSize: 10,
                                                                  letterSpacing:
                                                                      0,
                                                                ),
                                                          ),
                                                        ),
                                                      ],
                                                    );
                                                  },
                                                );
                                              },
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ).animateOnPageLoad(animationsMap[
                                      'containerOnPageLoadAnimation5']!);
                                }
                              },
                            ),
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                              child: Container(
                                width: 356,
                                height: 66,
                                decoration: BoxDecoration(),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      10, 0, 10, 0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Align(
                                        alignment: AlignmentDirectional(0, 0),
                                        child: Container(
                                          decoration: BoxDecoration(
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryBackground,
                                            borderRadius:
                                                BorderRadius.circular(20),
                                          ),
                                          child: FlutterFlowDropDown<int>(
                                            controller: _model
                                                    .exercisesValueController ??=
                                                FormFieldController<int>(null),
                                            options: List<int>.from(
                                                chartPageExercisesRowList
                                                    .map((e) => e.id)
                                                    .toList()),
                                            optionLabels:
                                                chartPageExercisesRowList
                                                    .map((e) => e.name)
                                                    .withoutNulls
                                                    .toList(),
                                            onChanged: (val) async {
                                              setState(() =>
                                                  _model.exercisesValue = val);
                                              setState(() => _model
                                                  .requestCompleter = null);
                                              await _model
                                                  .waitForRequestCompleted();
                                            },
                                            width: 215,
                                            height: 55,
                                            textStyle:
                                                FlutterFlowTheme.of(context)
                                                    .titleMedium
                                                    .override(
                                                      fontFamily: 'Lato',
                                                      letterSpacing: 0,
                                                    ),
                                            hintText: ' Exercise',
                                            icon: Icon(
                                              Icons.keyboard_arrow_down_rounded,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryText,
                                              size: 24,
                                            ),
                                            elevation: 2,
                                            borderColor: Colors.transparent,
                                            borderWidth: 2,
                                            borderRadius: 8,
                                            margin:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    26, 4, 16, 4),
                                            hidesUnderline: true,
                                            isOverButton: true,
                                            isSearchable: false,
                                            isMultiSelect: false,
                                          ).animateOnPageLoad(animationsMap[
                                              'dropDownOnPageLoadAnimation2']!),
                                        ).animateOnPageLoad(animationsMap[
                                            'containerOnPageLoadAnimation6']!),
                                      ),
                                      if (FFAppState().advChart == true)
                                        Align(
                                          alignment: AlignmentDirectional(0, 0),
                                          child: Container(
                                            width: 100,
                                            height: 55,
                                            decoration: BoxDecoration(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryBackground,
                                              borderRadius:
                                                  BorderRadius.circular(20),
                                            ),
                                            child: Align(
                                              alignment:
                                                  AlignmentDirectional(0, 0),
                                              child: Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(10, 0, 10, 0),
                                                child: Text(
                                                  'Adv Chart Selected',
                                                  textAlign: TextAlign.center,
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Lato',
                                                        fontSize: 14,
                                                        letterSpacing: 0,
                                                      ),
                                                ),
                                              ),
                                            ),
                                          ).animateOnPageLoad(animationsMap[
                                              'containerOnPageLoadAnimation7']!),
                                        ),
                                      if (FFAppState().advChart == false)
                                        Container(
                                          height: 55,
                                          decoration: BoxDecoration(
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryBackground,
                                            borderRadius:
                                                BorderRadius.circular(20),
                                          ),
                                          child:
                                              FutureBuilder<List<ExercisesRow>>(
                                            future:
                                                ExercisesTable().querySingleRow(
                                              queryFn: (q) => q.eq(
                                                'id',
                                                _model.exercisesValue,
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
                                                  setsExercisesRowList =
                                                  snapshot.data!;
                                              final setsExercisesRow =
                                                  setsExercisesRowList
                                                          .isNotEmpty
                                                      ? setsExercisesRowList
                                                          .first
                                                      : null;
                                              return FlutterFlowDropDown<int>(
                                                controller: _model
                                                        .setsValueController ??=
                                                    FormFieldController<int>(
                                                        null),
                                                options: List<int>.from(
                                                    [1, 2, 3, 4, 5]),
                                                optionLabels: [
                                                  '1',
                                                  '2',
                                                  '3',
                                                  '4',
                                                  '5'
                                                ],
                                                onChanged: (val) async {
                                                  setState(() =>
                                                      _model.setsValue = val);
                                                  setState(() => _model
                                                      .requestCompleter = null);
                                                  await _model
                                                      .waitForRequestCompleted();
                                                },
                                                width: 100,
                                                height: 55,
                                                textStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .titleMedium
                                                        .override(
                                                          fontFamily: 'Lato',
                                                          letterSpacing: 0,
                                                        ),
                                                hintText: 'Set',
                                                icon: Icon(
                                                  Icons
                                                      .keyboard_arrow_down_rounded,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primaryText,
                                                  size: 24,
                                                ),
                                                elevation: 2,
                                                borderColor: Colors.transparent,
                                                borderWidth: 2,
                                                borderRadius: 8,
                                                margin: EdgeInsetsDirectional
                                                    .fromSTEB(26, 4, 16, 4),
                                                hidesUnderline: true,
                                                isOverButton: true,
                                                isSearchable: false,
                                                isMultiSelect: false,
                                              ).animateOnPageLoad(animationsMap[
                                                  'dropDownOnPageLoadAnimation3']!);
                                            },
                                          ),
                                        ).animateOnPageLoad(animationsMap[
                                            'containerOnPageLoadAnimation8']!),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            Align(
                              alignment: AlignmentDirectional(0, 0),
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    20, 10, 20, 0),
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
                                    List<UsersRow> containerUsersRowList =
                                        snapshot.data!;
                                    final containerUsersRow =
                                        containerUsersRowList.isNotEmpty
                                            ? containerUsersRowList.first
                                            : null;
                                    return Container(
                                      width: 250,
                                      height: 55,
                                      decoration: BoxDecoration(
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryBackground,
                                        borderRadius: BorderRadius.circular(16),
                                      ),
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            20, 0, 20, 0),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Align(
                                              alignment:
                                                  AlignmentDirectional(0, 0),
                                              child: Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(0, 5, 0, 0),
                                                child: Container(
                                                  decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            20),
                                                  ),
                                                  child: Text(
                                                    'Advanced Chart',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .headlineSmall
                                                        .override(
                                                          fontFamily:
                                                              'Josefin Sans',
                                                          fontSize: 20,
                                                          letterSpacing: 0,
                                                        ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                            if ((containerUsersRow?.plan !=
                                                    'free') &&
                                                (FFAppState().advChart == true))
                                              Align(
                                                alignment:
                                                    AlignmentDirectional(1, 0),
                                                child: FlutterFlowIconButton(
                                                  borderRadius: 10,
                                                  borderWidth: 1,
                                                  buttonSize: 32,
                                                  fillColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .success,
                                                  icon: Icon(
                                                    Icons.check_sharp,
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primaryText,
                                                    size: 15,
                                                  ),
                                                  onPressed: () async {
                                                    FFAppState().advChart =
                                                        !FFAppState().advChart;
                                                    setState(() {});
                                                  },
                                                ),
                                              ),
                                            if ((containerUsersRow?.plan !=
                                                    'free') &&
                                                (FFAppState().advChart ==
                                                    false))
                                              FlutterFlowIconButton(
                                                borderRadius: 10,
                                                borderWidth: 1,
                                                buttonSize: 32,
                                                fillColor:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryText,
                                                icon: Icon(
                                                  Icons.check_sharp,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primaryText,
                                                  size: 15,
                                                ),
                                                onPressed: () async {
                                                  FFAppState().advChart =
                                                      !FFAppState().advChart;
                                                  setState(() {});
                                                },
                                              ),
                                            if (containerUsersRow?.plan ==
                                                'free')
                                              FlutterFlowIconButton(
                                                borderRadius: 10,
                                                borderWidth: 1,
                                                buttonSize: 32,
                                                fillColor:
                                                    FlutterFlowTheme.of(context)
                                                        .warning,
                                                icon: FaIcon(
                                                  FontAwesomeIcons.crown,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primaryText,
                                                  size: 15,
                                                ),
                                                onPressed: () async {
                                                  await showModalBottomSheet(
                                                    isScrollControlled: true,
                                                    backgroundColor:
                                                        Colors.transparent,
                                                    enableDrag: false,
                                                    context: context,
                                                    builder: (context) {
                                                      return GestureDetector(
                                                        onTap: () => _model
                                                                .unfocusNode
                                                                .canRequestFocus
                                                            ? FocusScope.of(
                                                                    context)
                                                                .requestFocus(_model
                                                                    .unfocusNode)
                                                            : FocusScope.of(
                                                                    context)
                                                                .unfocus(),
                                                        child: Padding(
                                                          padding: MediaQuery
                                                              .viewInsetsOf(
                                                                  context),
                                                          child: Container(
                                                            height: 500,
                                                            child:
                                                                PaidPlanPromptWidget(
                                                              promptText:
                                                                  'Get Premium for Advanced Charts.',
                                                            ),
                                                          ),
                                                        ),
                                                      );
                                                    },
                                                  ).then((value) =>
                                                      safeSetState(() {}));
                                                },
                                              ),
                                          ],
                                        ),
                                      ),
                                    ).animateOnPageLoad(animationsMap[
                                        'containerOnPageLoadAnimation9']!);
                                  },
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
            ),
          ),
        );
      },
    );
  }
}
