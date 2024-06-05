GestureDetector(
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
                    Container(
                      width: double.infinity,
                      height: 80,
                      decoration: BoxDecoration(
                        color:
                            FlutterFlowTheme.of(context).secondaryBackground,
                      ),
                      child: wrapWithModel(
                        model: _model.appTitleModel,
                        updateCallback: () => setState(() {}),
                        child: AppTitleWidget(),
                      ).animateOnPageLoad(
                          animationsMap['appTitleOnPageLoadAnimation']!),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 15, 0, 0),
                      child: Container(
                        width: double.infinity,
                        height: 39,
                        decoration: BoxDecoration(),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Align(
                              alignment: AlignmentDirectional(0, 0),
                              child: Container(
                                width: 261,
                                decoration: BoxDecoration(),
                                child: Align(
                                  alignment: AlignmentDirectional(0, 1),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        50, 0, 0, 5),
                                    child: Text(
                                      'My Profile',
                                      textAlign: TextAlign.center,
                                      style: FlutterFlowTheme.of(context)
                                          .headlineSmall
                                          .override(
                                            fontFamily: 'Josefin Sans',
                                            color:
                                                FlutterFlowTheme.of(context)
                                                    .secondary,
                                            fontSize: 28,
                                            letterSpacing: 0,
                                          ),
                                    ).animateOnPageLoad(animationsMap[
                                        'textOnPageLoadAnimation']!),
                                  ),
                                ),
                              ),
                            ),
                            FlutterFlowIconButton(
                              borderRadius: 20,
                              borderWidth: 1,
                              icon: Icon(
                                Icons.logout,
                                color: FlutterFlowTheme.of(context).secondary,
                                size: 24,
                              ),
                              onPressed: () async {
                                await showModalBottomSheet(
                                  isScrollControlled: true,
                                  backgroundColor: Colors.transparent,
                                  enableDrag: false,
                                  context: context,
                                  builder: (context) {
                                    return GestureDetector(
                                      onTap: () => _model
                                              .unfocusNode.canRequestFocus
                                          ? FocusScope.of(context)
                                              .requestFocus(
                                                  _model.unfocusNode)
                                          : FocusScope.of(context).unfocus(),
                                      child: Padding(
                                        padding:
                                            MediaQuery.viewInsetsOf(context),
                                        child: Container(
                                          height: 450,
                                          child: LogoutWidget(),
                                        ),
                                      ),
                                    );
                                  },
                                ).then((value) => safeSetState(() {}));
                              },
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(20, 15, 20, 0),
                      child: Container(
                        width: double.infinity,
                        height: 583,
                        decoration: BoxDecoration(),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0, 0, 20, 0),
                                  child: FutureBuilder<List<ExercisesRow>>(
                                    future: ExercisesTable().queryRows(
                                      queryFn: (q) => q.order('num_done'),
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
                                          containerExercisesRowList =
                                          snapshot.data!;
                                      return Container(
                                        width: 160,
                                        height: 150,
                                        decoration: BoxDecoration(),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Container(
                                              width: 164,
                                              height: 31,
                                              decoration: BoxDecoration(
                                                color: FlutterFlowTheme.of(
                                                        context)
                                                    .primaryBackground,
                                              ),
                                              child: Align(
                                                alignment:
                                                    AlignmentDirectional(
                                                        0, 0),
                                                child: Padding(
                                                  padding:
                                                      EdgeInsetsDirectional
                                                          .fromSTEB(
                                                              0, 0, 0, 5),
                                                  child: Text(
                                                    'Most Done Exercise',
                                                    style:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .bodyMedium
                                                            .override(
                                                              fontFamily:
                                                                  'Josefin Sans',
                                                              color: FlutterFlowTheme.of(
                                                                      context)
                                                                  .primaryText,
                                                              fontSize: 18,
                                                              letterSpacing:
                                                                  0,
                                                            ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Container(
                                              width: 160,
                                              height: 48,
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
                                                      Radius.circular(20),
                                                ),
                                              ),
                                              child: Align(
                                                alignment:
                                                    AlignmentDirectional(
                                                        0, 0),
                                                child: Padding(
                                                  padding:
                                                      EdgeInsetsDirectional
                                                          .fromSTEB(
                                                              0, 10, 0, 0),
                                                  child: Text(
                                                    valueOrDefault<String>(
                                                      containerExercisesRowList
                                                          .first.name,
                                                      'No Exercises Done',
                                                    ),
                                                    style: FlutterFlowTheme
                                                            .of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Lato',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .secondary,
                                                          fontSize: 18,
                                                          letterSpacing: 0,
                                                        ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Container(
                                              width: 160,
                                              height: 28,
                                              decoration: BoxDecoration(
                                                color: FlutterFlowTheme.of(
                                                        context)
                                                    .secondaryBackground,
                                              ),
                                              child: Align(
                                                alignment:
                                                    AlignmentDirectional(
                                                        0, 0),
                                                child: Text(
                                                  valueOrDefault<String>(
                                                    '${containerExercisesRowList.first.numDone?.toString()} Sets',
                                                    '00',
                                                  ),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Lato',
                                                        color: FlutterFlowTheme
                                                                .of(context)
                                                            .secondary,
                                                        fontSize: 18,
                                                        letterSpacing: 0,
                                                      ),
                                                ),
                                              ),
                                            ),
                                            Container(
                                              width: 160,
                                              height: 42,
                                              decoration: BoxDecoration(
                                                color: FlutterFlowTheme.of(
                                                        context)
                                                    .secondaryBackground,
                                                borderRadius:
                                                    BorderRadius.only(
                                                  bottomLeft:
                                                      Radius.circular(20),
                                                  bottomRight:
                                                      Radius.circular(20),
                                                  topLeft: Radius.circular(0),
                                                  topRight:
                                                      Radius.circular(0),
                                                ),
                                              ),
                                              child: Align(
                                                alignment:
                                                    AlignmentDirectional(
                                                        0, 0),
                                                child: Padding(
                                                  padding:
                                                      EdgeInsetsDirectional
                                                          .fromSTEB(
                                                              0, 0, 0, 10),
                                                  child: Text(
                                                    'Created: ${dateTimeFormat(
                                                      'yMd',
                                                      containerExercisesRowList
                                                          .first.createdAt,
                                                      locale:
                                                          FFLocalizations.of(
                                                                  context)
                                                              .languageCode,
                                                    )}',
                                                    style: FlutterFlowTheme
                                                            .of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Lato',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .secondaryText,
                                                          letterSpacing: 0,
                                                        ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ).animateOnPageLoad(animationsMap[
                                          'containerOnPageLoadAnimation1']!);
                                    },
                                  ),
                                ),
                                FutureBuilder<List<SetsRow>>(
                                  future: SetsTable().queryRows(
                                    queryFn: (q) => q.order('weight'),
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
                                    List<SetsRow> containerSetsRowList =
                                        snapshot.data!;
                                    return Container(
                                      width: 160,
                                      height: 150,
                                      decoration: BoxDecoration(),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Container(
                                            width: 164,
                                            height: 31,
                                            decoration: BoxDecoration(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryBackground,
                                            ),
                                            child: Align(
                                              alignment:
                                                  AlignmentDirectional(0, 0),
                                              child: Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(0, 0, 0, 5),
                                                child: Text(
                                                  'Heaviest Set',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily:
                                                            'Josefin Sans',
                                                        color: FlutterFlowTheme
                                                                .of(context)
                                                            .primaryText,
                                                        fontSize: 17,
                                                        letterSpacing: 0,
                                                      ),
                                                ),
                                              ),
                                            ),
                                          ),
                                          Container(
                                            width: 160,
                                            height: 48,
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
                                                topRight: Radius.circular(20),
                                              ),
                                            ),
                                            child: Align(
                                              alignment:
                                                  AlignmentDirectional(0, 0),
                                              child: Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(0, 10, 0, 0),
                                                child: FutureBuilder<
                                                    List<ExercisesRow>>(
                                                  future: ExercisesTable()
                                                      .querySingleRow(
                                                    queryFn: (q) => q.eq(
                                                      'id',
                                                      containerSetsRowList
                                                          .first.exerciseId,
                                                    ),
                                                  ),
                                                  builder:
                                                      (context, snapshot) {
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
                                                      valueOrDefault<String>(
                                                        textExercisesRow
                                                            ?.name,
                                                        'No Exercises Done',
                                                      ),
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Lato',
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .secondary,
                                                                fontSize: 18,
                                                                letterSpacing:
                                                                    0,
                                                              ),
                                                    );
                                                  },
                                                ),
                                              ),
                                            ),
                                          ),
                                          Container(
                                            width: 160,
                                            height: 28,
                                            decoration: BoxDecoration(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryBackground,
                                            ),
                                            child: Align(
                                              alignment:
                                                  AlignmentDirectional(0, 0),
                                              child: Text(
                                                valueOrDefault<String>(
                                                  '${valueOrDefault<String>(
                                                    containerSetsRowList
                                                        .first.weight
                                                        ?.toString(),
                                                    '000',
                                                  )} lbs',
                                                  '000',
                                                ),
                                                style: FlutterFlowTheme.of(
                                                        context)
                                                    .bodyMedium
                                                    .override(
                                                      fontFamily: 'Lato',
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .secondary,
                                                      fontSize: 18,
                                                      letterSpacing: 0,
                                                    ),
                                              ),
                                            ),
                                          ),
                                          Container(
                                            width: 160,
                                            height: 42,
                                            decoration: BoxDecoration(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryBackground,
                                              borderRadius: BorderRadius.only(
                                                bottomLeft:
                                                    Radius.circular(20),
                                                bottomRight:
                                                    Radius.circular(20),
                                                topLeft: Radius.circular(0),
                                                topRight: Radius.circular(0),
                                              ),
                                            ),
                                            child: Align(
                                              alignment:
                                                  AlignmentDirectional(0, 0),
                                              child: Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(0, 0, 0, 10),
                                                child: Text(
                                                  'Done: ${dateTimeFormat(
                                                    'yMd',
                                                    containerSetsRowList
                                                        .first.createdAt,
                                                    locale:
                                                        FFLocalizations.of(
                                                                context)
                                                            .languageCode,
                                                  )}',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Lato',
                                                        color: FlutterFlowTheme
                                                                .of(context)
                                                            .secondaryText,
                                                        letterSpacing: 0,
                                                      ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ).animateOnPageLoad(animationsMap[
                                        'containerOnPageLoadAnimation2']!);
                                  },
                                ),
                              ],
                            ),
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0, 0, 20, 0),
                                    child: FutureBuilder<List<SetsRow>>(
                                      future: SetsTable().queryRows(
                                        queryFn: (q) => q.order('reps'),
                                      ),
                                      builder: (context, snapshot) {
                                        // Customize what your widget looks like when it's loading.
                                        if (!snapshot.hasData) {
                                          return Center(
                                            child: SizedBox(
                                              width: 20,
                                              height: 20,
                                              child: SpinKitRing(
                                                color: FlutterFlowTheme.of(
                                                        context)
                                                    .primary,
                                                size: 20,
                                              ),
                                            ),
                                          );
                                        }
                                        List<SetsRow> containerSetsRowList =
                                            snapshot.data!;
                                        return Container(
                                          width: 160,
                                          height: 150,
                                          decoration: BoxDecoration(),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Container(
                                                width: 164,
                                                height: 31,
                                                decoration: BoxDecoration(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primaryBackground,
                                                ),
                                                child: Align(
                                                  alignment:
                                                      AlignmentDirectional(
                                                          0, 0),
                                                  child: Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                0, 0, 0, 5),
                                                    child: Text(
                                                      'Longest Set',
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Josefin Sans',
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .primaryText,
                                                                fontSize: 17,
                                                                letterSpacing:
                                                                    0,
                                                              ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              Container(
                                                width: 160,
                                                height: 48,
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
                                                        Radius.circular(20),
                                                  ),
                                                ),
                                                child: Align(
                                                  alignment:
                                                      AlignmentDirectional(
                                                          0, 0),
                                                  child: Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                0, 10, 0, 0),
                                                    child: FutureBuilder<
                                                        List<ExercisesRow>>(
                                                      future: ExercisesTable()
                                                          .querySingleRow(
                                                        queryFn: (q) => q.eq(
                                                          'id',
                                                          containerSetsRowList
                                                              .first
                                                              .exerciseId,
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
                                                          valueOrDefault<
                                                              String>(
                                                            textExercisesRow
                                                                ?.name,
                                                            'No Exercises Done',
                                                          ),
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Lato',
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .secondary,
                                                                fontSize: 18,
                                                                letterSpacing:
                                                                    0,
                                                              ),
                                                        );
                                                      },
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              Container(
                                                width: 160,
                                                height: 28,
                                                decoration: BoxDecoration(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryBackground,
                                                ),
                                                child: Align(
                                                  alignment:
                                                      AlignmentDirectional(
                                                          0, 0),
                                                  child: Text(
                                                    valueOrDefault<String>(
                                                      '${valueOrDefault<String>(
                                                        containerSetsRowList
                                                            .first.reps
                                                            ?.toString(),
                                                        '0',
                                                      )} Reps',
                                                      '00',
                                                    ),
                                                    style: FlutterFlowTheme
                                                            .of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Lato',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .secondary,
                                                          fontSize: 18,
                                                          letterSpacing: 0,
                                                        ),
                                                  ),
                                                ),
                                              ),
                                              Container(
                                                width: 160,
                                                height: 42,
                                                decoration: BoxDecoration(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryBackground,
                                                  borderRadius:
                                                      BorderRadius.only(
                                                    bottomLeft:
                                                        Radius.circular(20),
                                                    bottomRight:
                                                        Radius.circular(20),
                                                    topLeft:
                                                        Radius.circular(0),
                                                    topRight:
                                                        Radius.circular(0),
                                                  ),
                                                ),
                                                child: Align(
                                                  alignment:
                                                      AlignmentDirectional(
                                                          0, 0),
                                                  child: Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                0, 0, 0, 10),
                                                    child: Text(
                                                      'Done: ${dateTimeFormat(
                                                        'yMd',
                                                        containerSetsRowList
                                                            .first.createdAt,
                                                        locale:
                                                            FFLocalizations.of(
                                                                    context)
                                                                .languageCode,
                                                      )}',
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Lato',
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .secondaryText,
                                                                letterSpacing:
                                                                    0,
                                                              ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ).animateOnPageLoad(animationsMap[
                                            'containerOnPageLoadAnimation3']!);
                                      },
                                    ),
                                  ),
                                  FutureBuilder<List<SetsRow>>(
                                    future: SetsTable().queryRows(
                                      queryFn: (q) => q.order('volume'),
                                      limit: 1,
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
                                      List<SetsRow> containerSetsRowList =
                                          snapshot.data!;
                                      return Container(
                                        width: 160,
                                        height: 150,
                                        decoration: BoxDecoration(),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Container(
                                              width: 164,
                                              height: 31,
                                              decoration: BoxDecoration(
                                                color: FlutterFlowTheme.of(
                                                        context)
                                                    .primaryBackground,
                                              ),
                                              child: Align(
                                                alignment:
                                                    AlignmentDirectional(
                                                        0, 0),
                                                child: Padding(
                                                  padding:
                                                      EdgeInsetsDirectional
                                                          .fromSTEB(
                                                              0, 0, 0, 5),
                                                  child: Text(
                                                    'Largest Set',
                                                    style:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .bodyMedium
                                                            .override(
                                                              fontFamily:
                                                                  'Josefin Sans',
                                                              color: FlutterFlowTheme.of(
                                                                      context)
                                                                  .primaryText,
                                                              fontSize: 17,
                                                              letterSpacing:
                                                                  0,
                                                            ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Container(
                                              width: 160,
                                              height: 48,
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
                                                      Radius.circular(20),
                                                ),
                                              ),
                                              child: Align(
                                                alignment:
                                                    AlignmentDirectional(
                                                        0, 0),
                                                child: Padding(
                                                  padding:
                                                      EdgeInsetsDirectional
                                                          .fromSTEB(
                                                              0, 10, 0, 0),
                                                  child: FutureBuilder<
                                                      List<ExercisesRow>>(
                                                    future: ExercisesTable()
                                                        .querySingleRow(
                                                      queryFn: (q) => q.eq(
                                                        'id',
                                                        containerSetsRowList
                                                            .first.exerciseId,
                                                      ),
                                                    ),
                                                    builder:
                                                        (context, snapshot) {
                                                      // Customize what your widget looks like when it's loading.
                                                      if (!snapshot.hasData) {
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
                                                        valueOrDefault<
                                                            String>(
                                                          textExercisesRow
                                                              ?.name,
                                                          'No Exercises Done',
                                                        ),
                                                        style: FlutterFlowTheme
                                                                .of(context)
                                                            .bodyMedium
                                                            .override(
                                                              fontFamily:
                                                                  'Lato',
                                                              color: FlutterFlowTheme.of(
                                                                      context)
                                                                  .secondary,
                                                              fontSize: 18,
                                                              letterSpacing:
                                                                  0,
                                                            ),
                                                      );
                                                    },
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Container(
                                              width: 160,
                                              height: 28,
                                              decoration: BoxDecoration(
                                                color: FlutterFlowTheme.of(
                                                        context)
                                                    .secondaryBackground,
                                              ),
                                              child: Align(
                                                alignment:
                                                    AlignmentDirectional(
                                                        0, 0),
                                                child: Text(
                                                  valueOrDefault<String>(
                                                    '${containerSetsRowList.first.volume?.toString()} lbs',
                                                    '000',
                                                  ),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Lato',
                                                        color: FlutterFlowTheme
                                                                .of(context)
                                                            .secondary,
                                                        fontSize: 18,
                                                        letterSpacing: 0,
                                                      ),
                                                ),
                                              ),
                                            ),
                                            Container(
                                              width: 160,
                                              height: 42,
                                              decoration: BoxDecoration(
                                                color: FlutterFlowTheme.of(
                                                        context)
                                                    .secondaryBackground,
                                                borderRadius:
                                                    BorderRadius.only(
                                                  bottomLeft:
                                                      Radius.circular(20),
                                                  bottomRight:
                                                      Radius.circular(20),
                                                  topLeft: Radius.circular(0),
                                                  topRight:
                                                      Radius.circular(0),
                                                ),
                                              ),
                                              child: Align(
                                                alignment:
                                                    AlignmentDirectional(
                                                        0, 0),
                                                child: Padding(
                                                  padding:
                                                      EdgeInsetsDirectional
                                                          .fromSTEB(
                                                              0, 0, 0, 10),
                                                  child: Text(
                                                    'Done: ${dateTimeFormat(
                                                      'yMd',
                                                      containerSetsRowList
                                                          .first.createdAt,
                                                      locale:
                                                          FFLocalizations.of(
                                                                  context)
                                                              .languageCode,
                                                    )}',
                                                    style: FlutterFlowTheme
                                                            .of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Lato',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .secondaryText,
                                                          letterSpacing: 0,
                                                        ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ).animateOnPageLoad(animationsMap[
                                          'containerOnPageLoadAnimation4']!);
                                    },
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(0, 25, 0, 0),
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
                                  List<UsersRow> columnUsersRowList =
                                      snapshot.data!;
                                  final columnUsersRow =
                                      columnUsersRowList.isNotEmpty
                                          ? columnUsersRowList.first
                                          : null;
                                  return Column(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          if ((columnUsersRow!.numSetDone! <
                                                  500) &&
                                              (columnUsersRow!.numSetDone! >=
                                                  0))
                                            Container(
                                              width: 270,
                                              height: 70,
                                              decoration: BoxDecoration(
                                                color: FlutterFlowTheme.of(
                                                        context)
                                                    .secondaryBackground,
                                                borderRadius:
                                                    BorderRadius.circular(20),
                                              ),
                                              child: Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(30, 0, 30, 0),
                                                child: Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  children: [
                                                    ClipRRect(
                                                      borderRadius:
                                                          BorderRadius
                                                              .circular(8),
                                                      child: Image.asset(
                                                        'assets/images/Base.png',
                                                        width: 57,
                                                        height: 40,
                                                        fit: BoxFit.cover,
                                                      ),
                                                    ),
                                                    Expanded(
                                                      child: Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .center,
                                                        children: [
                                                          Align(
                                                            alignment:
                                                                AlignmentDirectional(
                                                                    0, 0),
                                                            child: Text(
                                                              'Base Viking',
                                                              style: FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMedium
                                                                  .override(
                                                                    fontFamily:
                                                                        'Lato',
                                                                    fontSize:
                                                                        20,
                                                                    letterSpacing:
                                                                        0,
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
                                          if ((columnUsersRow!.numSetDone! <
                                                  1250) &&
                                              (columnUsersRow!.numSetDone! >=
                                                  500))
                                            Container(
                                              width: 270,
                                              height: 70,
                                              decoration: BoxDecoration(
                                                color: FlutterFlowTheme.of(
                                                        context)
                                                    .secondaryBackground,
                                                borderRadius:
                                                    BorderRadius.circular(20),
                                              ),
                                              child: Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(30, 0, 30, 0),
                                                child: Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  children: [
                                                    ClipRRect(
                                                      borderRadius:
                                                          BorderRadius
                                                              .circular(8),
                                                      child: Image.asset(
                                                        'assets/images/Buff.png',
                                                        width: 59,
                                                        height: 59,
                                                        fit: BoxFit.cover,
                                                      ),
                                                    ),
                                                    Expanded(
                                                      child: Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .center,
                                                        children: [
                                                          Align(
                                                            alignment:
                                                                AlignmentDirectional(
                                                                    0, 0),
                                                            child: Text(
                                                              'Buff Viking',
                                                              style: FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMedium
                                                                  .override(
                                                                    fontFamily:
                                                                        'Lato',
                                                                    fontSize:
                                                                        20,
                                                                    letterSpacing:
                                                                        0,
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
                                          if ((columnUsersRow!.numSetDone! <
                                                  2500) &&
                                              (columnUsersRow!.numSetDone! >=
                                                  1250))
                                            Container(
                                              width: 270,
                                              height: 75,
                                              decoration: BoxDecoration(
                                                color: FlutterFlowTheme.of(
                                                        context)
                                                    .secondaryBackground,
                                                borderRadius:
                                                    BorderRadius.circular(20),
                                              ),
                                              child: Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(30, 0, 30, 0),
                                                child: Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  children: [
                                                    ClipRRect(
                                                      borderRadius:
                                                          BorderRadius
                                                              .circular(8),
                                                      child: Image.asset(
                                                        'assets/images/Battle.png',
                                                        width: 50,
                                                        height: 60,
                                                        fit: BoxFit.cover,
                                                      ),
                                                    ),
                                                    Expanded(
                                                      child: Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .center,
                                                        children: [
                                                          Align(
                                                            alignment:
                                                                AlignmentDirectional(
                                                                    0, 0),
                                                            child: Text(
                                                              'Battle Viking',
                                                              style: FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMedium
                                                                  .override(
                                                                    fontFamily:
                                                                        'Lato',
                                                                    fontSize:
                                                                        20,
                                                                    letterSpacing:
                                                                        0,
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
                                          if ((columnUsersRow!.numSetDone! <
                                                  5000) &&
                                              (columnUsersRow!.numSetDone! >=
                                                  2500))
                                            Container(
                                              width: 270,
                                              height: 70,
                                              decoration: BoxDecoration(
                                                color: FlutterFlowTheme.of(
                                                        context)
                                                    .secondaryBackground,
                                                borderRadius:
                                                    BorderRadius.circular(20),
                                              ),
                                              child: Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(30, 0, 30, 0),
                                                child: Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  children: [
                                                    ClipRRect(
                                                      borderRadius:
                                                          BorderRadius
                                                              .circular(8),
                                                      child: Image.asset(
                                                        'assets/images/Royal.png',
                                                        width: 50,
                                                        height: 60,
                                                        fit: BoxFit.cover,
                                                      ),
                                                    ),
                                                    Expanded(
                                                      child: Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .center,
                                                        children: [
                                                          Align(
                                                            alignment:
                                                                AlignmentDirectional(
                                                                    0, 0),
                                                            child: Text(
                                                              'Royal Viking',
                                                              style: FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMedium
                                                                  .override(
                                                                    fontFamily:
                                                                        'Lato',
                                                                    fontSize:
                                                                        20,
                                                                    letterSpacing:
                                                                        0,
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
                                          if (columnUsersRow!.numSetDone! >=
                                              5000)
                                            Container(
                                              width: 270,
                                              height: 70,
                                              decoration: BoxDecoration(
                                                color: FlutterFlowTheme.of(
                                                        context)
                                                    .secondaryBackground,
                                                borderRadius:
                                                    BorderRadius.circular(20),
                                              ),
                                              child: Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(30, 0, 30, 0),
                                                child: Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  children: [
                                                    ClipRRect(
                                                      borderRadius:
                                                          BorderRadius
                                                              .circular(8),
                                                      child: Image.asset(
                                                        'assets/images/Frame_5Thor.png',
                                                        width: 56,
                                                        height: 57,
                                                        fit: BoxFit.cover,
                                                      ),
                                                    ),
                                                    Expanded(
                                                      child: Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .center,
                                                        children: [
                                                          Align(
                                                            alignment:
                                                                AlignmentDirectional(
                                                                    0, 0),
                                                            child: Text(
                                                              'Thor',
                                                              style: FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMedium
                                                                  .override(
                                                                    fontFamily:
                                                                        'Lato',
                                                                    fontSize:
                                                                        20,
                                                                    letterSpacing:
                                                                        0,
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
                                        ],
                                      ),
                                      if ((columnUsersRow!.numSetDone! <
                                              500) &&
                                          (columnUsersRow!.numSetDone! >= 0))
                                        Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(0, 10, 0, 0),
                                              child: Text(
                                                'Base Viking -> 0-500 total sets completed',
                                                style: FlutterFlowTheme.of(
                                                        context)
                                                    .bodyMedium
                                                    .override(
                                                      fontFamily: 'Lato',
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .secondaryText,
                                                      fontSize: 12,
                                                      letterSpacing: 0,
                                                    ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      if ((columnUsersRow!.numSetDone! <
                                              1250) &&
                                          (columnUsersRow!.numSetDone! >=
                                              500))
                                        Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(0, 10, 0, 0),
                                              child: Text(
                                                'Buff Viking -> 500-1250 total sets completed',
                                                style: FlutterFlowTheme.of(
                                                        context)
                                                    .bodyMedium
                                                    .override(
                                                      fontFamily: 'Lato',
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .secondaryText,
                                                      fontSize: 12,
                                                      letterSpacing: 0,
                                                    ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      if ((columnUsersRow!.numSetDone! <
                                              2500) &&
                                          (columnUsersRow!.numSetDone! >=
                                              1250))
                                        Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(0, 10, 0, 0),
                                              child: Text(
                                                'Battle Viking -> 1250-2500 total sets completed',
                                                style: FlutterFlowTheme.of(
                                                        context)
                                                    .bodyMedium
                                                    .override(
                                                      fontFamily: 'Lato',
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .secondaryText,
                                                      fontSize: 12,
                                                      letterSpacing: 0,
                                                    ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      if ((columnUsersRow!.numSetDone! <
                                              5000) &&
                                          (columnUsersRow!.numSetDone! >=
                                              2500))
                                        Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(0, 10, 0, 0),
                                              child: Text(
                                                'Royal Viking -> 2500-5000 total sets completed',
                                                style: FlutterFlowTheme.of(
                                                        context)
                                                    .bodyMedium
                                                    .override(
                                                      fontFamily: 'Lato',
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .secondaryText,
                                                      fontSize: 12,
                                                      letterSpacing: 0,
                                                    ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      if (columnUsersRow!.numSetDone! >= 5000)
                                        Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(0, 10, 0, 0),
                                              child: Text(
                                                'Thor -> 5000 or more total sets completed',
                                                style: FlutterFlowTheme.of(
                                                        context)
                                                    .bodyMedium
                                                    .override(
                                                      fontFamily: 'Lato',
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .secondaryText,
                                                      fontSize: 12,
                                                      letterSpacing: 0,
                                                    ),
                                              ),
                                            ),
                                          ],
                                        ),
                                    ],
                                  ).animateOnPageLoad(animationsMap[
                                      'columnOnPageLoadAnimation']!);
                                },
                              ),
                            ),
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(0, 25, 0, 0),
                              child: Container(
                                width: 400,
                                decoration: BoxDecoration(),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Container(
                                      width: 150,
                                      height: 75,
                                      decoration: BoxDecoration(
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryBackground,
                                        borderRadius:
                                            BorderRadius.circular(20),
                                      ),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Align(
                                            alignment:
                                                AlignmentDirectional(0, 0),
                                            child: Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(0, 0, 0, 5),
                                              child: FutureBuilder<
                                                  List<UsersRow>>(
                                                future: UsersTable()
                                                    .querySingleRow(
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
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primary,
                                                          size: 20,
                                                        ),
                                                      ),
                                                    );
                                                  }
                                                  List<UsersRow>
                                                      textUsersRowList =
                                                      snapshot.data!;
                                                  final textUsersRow =
                                                      textUsersRowList
                                                              .isNotEmpty
                                                          ? textUsersRowList
                                                              .first
                                                          : null;
                                                  return Text(
                                                    valueOrDefault<String>(
                                                      textUsersRow?.numSetDone
                                                          ?.toString(),
                                                      '0',
                                                    ),
                                                    textAlign:
                                                        TextAlign.center,
                                                    style: FlutterFlowTheme
                                                            .of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Lato',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .secondary,
                                                          fontSize: 18,
                                                          letterSpacing: 0,
                                                        ),
                                                  );
                                                },
                                              ),
                                            ),
                                          ),
                                          Align(
                                            alignment:
                                                AlignmentDirectional(0, 0),
                                            child: Text(
                                              'Sets Completed',
                                              textAlign: TextAlign.center,
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Lato',
                                                        letterSpacing: 0,
                                                      ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      width: 150,
                                      height: 75,
                                      decoration: BoxDecoration(
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryBackground,
                                        borderRadius:
                                            BorderRadius.circular(20),
                                      ),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Align(
                                            alignment:
                                                AlignmentDirectional(0, 0),
                                            child: Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(0, 0, 0, 5),
                                              child: FutureBuilder<
                                                  List<UsersRow>>(
                                                future: UsersTable()
                                                    .querySingleRow(
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
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primary,
                                                          size: 20,
                                                        ),
                                                      ),
                                                    );
                                                  }
                                                  List<UsersRow>
                                                      textUsersRowList =
                                                      snapshot.data!;
                                                  final textUsersRow =
                                                      textUsersRowList
                                                              .isNotEmpty
                                                          ? textUsersRowList
                                                              .first
                                                          : null;
                                                  return Text(
                                                    valueOrDefault<String>(
                                                      textUsersRow
                                                          ?.numExercisesDone
                                                          ?.toString(),
                                                      '0',
                                                    ),
                                                    textAlign:
                                                        TextAlign.center,
                                                    style: FlutterFlowTheme
                                                            .of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Lato',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .secondary,
                                                          fontSize: 18,
                                                          letterSpacing: 0,
                                                        ),
                                                  );
                                                },
                                              ),
                                            ),
                                          ),
                                          Align(
                                            alignment:
                                                AlignmentDirectional(0, 0),
                                            child: Text(
                                              'Exercises Completed',
                                              textAlign: TextAlign.center,
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Lato',
                                                        letterSpacing: 0,
                                                      ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ).animateOnPageLoad(animationsMap[
                                  'containerOnPageLoadAnimation5']!),
                            ),
                          ],
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
)
