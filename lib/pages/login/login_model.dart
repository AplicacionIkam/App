import '/auth/firebase_auth/auth_util.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/pages/componentes/check_email/check_email_widget.dart';
import '/pages/componentes/recover_password/recover_password_widget.dart';
import 'login_widget.dart' show LoginWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
class LoginModel extends FlutterFlowModel<LoginWidget> {
  
  

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for email widget.
FocusNode? emailFocusNode;
TextEditingController? emailTextController;
String? Function(BuildContext, String?)? emailTextControllerValidator;
  // State field(s) for password widget.
FocusNode? passwordFocusNode;
TextEditingController? passwordTextController;
late bool passwordVisibility;
String? Function(BuildContext, String?)? passwordTextControllerValidator;

  
  

  @override
  void initState(BuildContext context) {
    passwordVisibility = false;

    
  }

  @override
  void dispose() {
    unfocusNode.dispose();
emailFocusNode?.dispose();
        emailTextController?.dispose();
        
passwordFocusNode?.dispose();
        passwordTextController?.dispose();
        
    
    
  }

  

  
  
  
}
