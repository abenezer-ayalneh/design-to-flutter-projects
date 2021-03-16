import 'package:flutter/cupertino.dart';

textFieldFocusChange({
  @required BuildContext context,
  @required FocusNode currentFocusNode,
  @required FocusNode nextFocusNode,
}) {
  currentFocusNode.unfocus();
  FocusScope.of(context).requestFocus(nextFocusNode);
}
