import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'nav_bar_model.dart';
export 'nav_bar_model.dart';

class NavBarWidget extends StatefulWidget {
  const NavBarWidget({
    super.key,
    String? activePageName,
  }) : activePageName = activePageName ?? 'Explore';

  final String activePageName;

  @override
  State<NavBarWidget> createState() => _NavBarWidgetState();
}

class _NavBarWidgetState extends State<NavBarWidget> {
  late NavBarModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => NavBarModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return
        // Menu items: String
        //
        // Explore
        // Wishlists
        // Trips
        // Inbox
        // Profile
        Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Divider(
          height: 1.0,
          thickness: 1.0,
          color: FlutterFlowTheme.of(context).neutral03,
        ),
        Container(
          height: 95.0,
          decoration: BoxDecoration(
            color: FlutterFlowTheme.of(context).secondaryBackground,
          ),
          child: Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 16.0),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Expanded(
                  child: InkWell(
                    splashColor: Colors.transparent,
                    focusColor: Colors.transparent,
                    hoverColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onTap: () async {
                      if (widget.activePageName != 'Explore') {
                        context.goNamed('Homepage');
                      }
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          FaIcon(
                            FontAwesomeIcons.map,
                            color: valueOrDefault<Color>(
                              widget.activePageName == 'Explore'
                                  ? FlutterFlowTheme.of(context).accent2
                                  : FlutterFlowTheme.of(context).neutral07,
                              FlutterFlowTheme.of(context).neutral07,
                            ),
                            size: 22.0,
                          ),
                          Text(
                            'Merch',
                            style: FlutterFlowTheme.of(context)
                                .titleSmall
                                .override(
                                  fontFamily: FlutterFlowTheme.of(context)
                                      .titleSmallFamily,
                                  color: valueOrDefault<Color>(
                                    widget.activePageName == 'Explore'
                                        ? FlutterFlowTheme.of(context).accent2
                                        : FlutterFlowTheme.of(context)
                                            .neutral07,
                                    FlutterFlowTheme.of(context).neutral07,
                                  ),
                                  fontSize: 13.0,
                                  letterSpacing: 0.0,
                                  useGoogleFonts: GoogleFonts.asMap()
                                      .containsKey(FlutterFlowTheme.of(context)
                                          .titleSmallFamily),
                                ),
                          ),
                        ].divide(const SizedBox(height: 5.0)),
                      ),
                    ),
                  ),
                ),
                if (false)
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            FFIcons.kcomet,
                            color: valueOrDefault<Color>(
                              widget.activePageName == 'Wishlist'
                                  ? FlutterFlowTheme.of(context).accent2
                                  : FlutterFlowTheme.of(context).neutral07,
                              FlutterFlowTheme.of(context).neutral07,
                            ),
                            size: 28.0,
                          ),
                          Text(
                            'Review',
                            style: FlutterFlowTheme.of(context)
                                .titleSmall
                                .override(
                                  fontFamily: FlutterFlowTheme.of(context)
                                      .titleSmallFamily,
                                  color: valueOrDefault<Color>(
                                    widget.activePageName == 'Wishlist'
                                        ? FlutterFlowTheme.of(context).accent2
                                        : FlutterFlowTheme.of(context)
                                            .neutral07,
                                    FlutterFlowTheme.of(context).neutral07,
                                  ),
                                  fontSize: 13.0,
                                  letterSpacing: 0.0,
                                  useGoogleFonts: GoogleFonts.asMap()
                                      .containsKey(FlutterFlowTheme.of(context)
                                          .titleSmallFamily),
                                ),
                          ),
                        ].divide(const SizedBox(height: 5.0)),
                      ),
                    ),
                  ),
                Expanded(
                  child: InkWell(
                    splashColor: Colors.transparent,
                    focusColor: Colors.transparent,
                    hoverColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onTap: () async {
                      if (widget.activePageName != 'TripsLoged') {
                        context.goNamed('TripsLoged');
                      }
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          FaIcon(
                            FontAwesomeIcons.magento,
                            color: valueOrDefault<Color>(
                              widget.activePageName == 'Trips'
                                  ? FlutterFlowTheme.of(context).tertiary
                                  : FlutterFlowTheme.of(context).neutral07,
                              FlutterFlowTheme.of(context).neutral07,
                            ),
                            size: 44.0,
                          ),
                          Text(
                            '  ',
                            style: FlutterFlowTheme.of(context)
                                .titleSmall
                                .override(
                                  fontFamily: FlutterFlowTheme.of(context)
                                      .titleSmallFamily,
                                  color: valueOrDefault<Color>(
                                    widget.activePageName == 'Trips'
                                        ? FlutterFlowTheme.of(context).accent2
                                        : FlutterFlowTheme.of(context)
                                            .neutral07,
                                    FlutterFlowTheme.of(context).neutral07,
                                  ),
                                  fontSize: 13.0,
                                  letterSpacing: 0.0,
                                  useGoogleFonts: GoogleFonts.asMap()
                                      .containsKey(FlutterFlowTheme.of(context)
                                          .titleSmallFamily),
                                ),
                          ),
                        ].divide(const SizedBox(height: 5.0)),
                      ),
                    ),
                  ),
                ),
                if (false)
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            FFIcons.kmessage2,
                            color: valueOrDefault<Color>(
                              widget.activePageName == 'Inbox'
                                  ? FlutterFlowTheme.of(context).accent2
                                  : FlutterFlowTheme.of(context).neutral07,
                              FlutterFlowTheme.of(context).neutral07,
                            ),
                            size: 28.0,
                          ),
                          Text(
                            'Inbox',
                            style: FlutterFlowTheme.of(context)
                                .titleSmall
                                .override(
                                  fontFamily: FlutterFlowTheme.of(context)
                                      .titleSmallFamily,
                                  color: valueOrDefault<Color>(
                                    widget.activePageName == 'Inbox'
                                        ? FlutterFlowTheme.of(context).accent2
                                        : FlutterFlowTheme.of(context)
                                            .neutral07,
                                    FlutterFlowTheme.of(context).neutral07,
                                  ),
                                  fontSize: 13.0,
                                  letterSpacing: 0.0,
                                  useGoogleFonts: GoogleFonts.asMap()
                                      .containsKey(FlutterFlowTheme.of(context)
                                          .titleSmallFamily),
                                ),
                          ),
                        ].divide(const SizedBox(height: 5.0)),
                      ),
                    ),
                  ),
                Expanded(
                  child: InkWell(
                    splashColor: Colors.transparent,
                    focusColor: Colors.transparent,
                    hoverColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onTap: () async {
                      if (widget.activePageName != 'Profile') {
                        context.goNamed('Profile');
                      }
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            FFIcons.kuserCircle,
                            color: valueOrDefault<Color>(
                              widget.activePageName == 'Profile'
                                  ? FlutterFlowTheme.of(context).accent2
                                  : FlutterFlowTheme.of(context).neutral07,
                              FlutterFlowTheme.of(context).neutral07,
                            ),
                            size: 28.0,
                          ),
                          Text(
                            'Profile',
                            style: FlutterFlowTheme.of(context)
                                .titleSmall
                                .override(
                                  fontFamily: FlutterFlowTheme.of(context)
                                      .titleSmallFamily,
                                  color: valueOrDefault<Color>(
                                    widget.activePageName == 'Profile'
                                        ? FlutterFlowTheme.of(context).accent2
                                        : FlutterFlowTheme.of(context)
                                            .neutral07,
                                    FlutterFlowTheme.of(context).neutral07,
                                  ),
                                  fontSize: 13.0,
                                  letterSpacing: 0.0,
                                  useGoogleFonts: GoogleFonts.asMap()
                                      .containsKey(FlutterFlowTheme.of(context)
                                          .titleSmallFamily),
                                ),
                          ),
                        ].divide(const SizedBox(height: 5.0)),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
