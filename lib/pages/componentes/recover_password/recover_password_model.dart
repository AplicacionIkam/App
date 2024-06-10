import '/auth/firebase_auth/auth_util.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'recover_password_widget.dart' show RecoverPasswordWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
class RecoverPasswordModel extends FlutterFlowModel<RecoverPasswordWidget> {
  
  

  ///  State fields for stateful widgets in this component.

    // State field(s) for email widget.
FocusNode? emailFocusNode;
TextEditingController? emailTextController;
String? Function(BuildContext, String?)? emailTextControllerValidator;

  
  

  @override
  void initState(BuildContext context) {
    

    
  }

  @override
  void dispose() {
    emailFocusNode?.dispose();
        emailTextController?.dispose();
        
    
    
  }

  

  
  
  
}
