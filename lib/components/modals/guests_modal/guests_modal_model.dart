import '/components/guests_item/guests_item_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'guests_modal_widget.dart' show GuestsModalWidget;
import 'package:flutter/material.dart';

class GuestsModalModel extends FlutterFlowModel<GuestsModalWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for CountController widget.
  int? countControllerValue;
  // Model for GuestsItem component.
  late GuestsItemModel guestsItemModel1;
  // Model for GuestsItem component.
  late GuestsItemModel guestsItemModel2;
  // Model for GuestsItem component.
  late GuestsItemModel guestsItemModel3;

  @override
  void initState(BuildContext context) {
    guestsItemModel1 = createModel(context, () => GuestsItemModel());
    guestsItemModel2 = createModel(context, () => GuestsItemModel());
    guestsItemModel3 = createModel(context, () => GuestsItemModel());
  }

  @override
  void dispose() {
    guestsItemModel1.dispose();
    guestsItemModel2.dispose();
    guestsItemModel3.dispose();
  }
}
