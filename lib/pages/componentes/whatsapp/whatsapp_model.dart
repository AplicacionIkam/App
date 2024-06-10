import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'whatsapp_widget.dart' show WhatsappWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
class WhatsappModel extends FlutterFlowModel<WhatsappWidget> {
  
  

  ///  State fields for stateful widgets in this component.

    // State field(s) for DropDown widget.
String? dropDownValue;
FormFieldController<String>? dropDownValueController;
  // State field(s) for TextField widget.
FocusNode? textFieldFocusNode;
TextEditingController? textFieldTextController;
String? Function(BuildContext, String?)? textFieldTextControllerValidator;

  
  

  @override
  void initState(BuildContext context) {
    

    
  }

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
        textFieldTextController?.dispose();
        
    
    
  }

  

  
  
  
}
