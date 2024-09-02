import '/components/card_display_item/card_display_item_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'item_map_view_model.dart';
export 'item_map_view_model.dart';

class ItemMapViewWidget extends StatefulWidget {
  const ItemMapViewWidget({super.key});

  @override
  State<ItemMapViewWidget> createState() => _ItemMapViewWidgetState();
}

class _ItemMapViewWidgetState extends State<ItemMapViewWidget> {
  late ItemMapViewModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ItemMapViewModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: double.infinity,
      child: Stack(
        children: [
          if (!_model.mapView)
            Container(
              width: double.infinity,
              height: double.infinity,
              decoration: const BoxDecoration(),
              child: ListView(
                padding: EdgeInsets.zero,
                scrollDirection: Axis.vertical,
                children: [
                  Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 16.0),
                    child: wrapWithModel(
                      model: _model.cardDisplayItemModel1,
                      updateCallback: () => setState(() {}),
                      child: const CardDisplayItemWidget(),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 16.0),
                    child: wrapWithModel(
                      model: _model.cardDisplayItemModel2,
                      updateCallback: () => setState(() {}),
                      child: const CardDisplayItemWidget(),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 16.0),
                    child: wrapWithModel(
                      model: _model.cardDisplayItemModel3,
                      updateCallback: () => setState(() {}),
                      child: const CardDisplayItemWidget(),
                    ),
                  ),
                ],
              ),
            ),
          if (_model.mapView)
            Container(
              width: double.infinity,
              height: double.infinity,
              decoration: const BoxDecoration(),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8.0),
                child: Image.asset(
                  'assets/images/Screenshot_2023-07-12_at_10.33.14.png',
                  width: 300.0,
                  height: 200.0,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          Align(
            alignment: const AlignmentDirectional(0.0, 1.0),
            child: Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 16.0),
              child: InkWell(
                splashColor: Colors.transparent,
                focusColor: Colors.transparent,
                hoverColor: Colors.transparent,
                highlightColor: Colors.transparent,
                onTap: () async {
                  _model.mapView = !_model.mapView;
                  setState(() {});
                },
                child: Container(
                  height: 34.0,
                  decoration: BoxDecoration(
                    color: valueOrDefault<Color>(
                      _model.mapView
                          ? FlutterFlowTheme.of(context).secondary
                          : FlutterFlowTheme.of(context).primaryText,
                      FlutterFlowTheme.of(context).primaryText,
                    ),
                    borderRadius: BorderRadius.circular(100.0),
                  ),
                  child: Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(12.0, 8.0, 12.0, 8.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 12.0, 0.0),
                          child: Stack(
                            alignment: const AlignmentDirectional(0.0, 0.0),
                            children: [
                              if (!_model.mapView)
                                Icon(
                                  Icons.map,
                                  color: FlutterFlowTheme.of(context)
                                      .primaryBackground,
                                  size: 18.0,
                                ),
                              if (_model.mapView)
                                Icon(
                                  Icons.list_alt,
                                  color: FlutterFlowTheme.of(context)
                                      .primaryBackground,
                                  size: 18.0,
                                ),
                            ],
                          ),
                        ),
                        Text(
                          _model.mapView ? 'List View' : 'Map View',
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'SFPRO',
                                    color: FlutterFlowTheme.of(context)
                                        .primaryBackground,
                                    letterSpacing: 0.0,
                                    useGoogleFonts: false,
                                  ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
