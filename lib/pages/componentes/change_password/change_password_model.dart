import '/auth/firebase_auth/auth_util.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/custom_code/actions/index.dart' as actions;
import 'change_password_widget.dart' show ChangePasswordWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
class ChangePasswordModel extends FlutterFlowModel<ChangePasswordWidget> {
  
  

  ///  State fields for stateful widgets in this component.

    // State field(s) for contraActual widget.
FocusNode? contraActualFocusNode;
TextEditingController? contraActualTextController;
late bool contraActualVisibility;
String? Function(BuildContext, String?)? contraActualTextControllerValidator;
  // State field(s) for contraNueva widget.
FocusNode? contraNuevaFocusNode;
TextEditingController? contraNuevaTextController;
late bool contraNuevaVisibility;
String? Function(BuildContext, String?)? contraNuevaTextControllerValidator;
  // Stores action output result for [Custom Action - changePassword] action in Button widget.
bool? isChange;

  
  

  @override
  void initState(BuildContext context) {
    contraActualVisibility = false;
contraNuevaVisibility = false;

    
  }

  @override
  void dispose() {
    contraActualFocusNode?.dispose();
        contraActualTextController?.dispose();
        
contraNuevaFocusNode?.dispose();
        contraNuevaTextController?.dispose();
        
    
    
  }

  

  
  
  
}
