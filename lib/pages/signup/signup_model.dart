import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'signup_widget.dart' show SignupWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
class SignupModel extends FlutterFlowModel<SignupWidget> {
  
  

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
  // State field(s) for confirmPassword widget.
FocusNode? confirmPasswordFocusNode;
TextEditingController? confirmPasswordTextController;
late bool confirmPasswordVisibility;
String? Function(BuildContext, String?)? confirmPasswordTextControllerValidator;
  // State field(s) for name widget.
FocusNode? nameFocusNode;
TextEditingController? nameTextController;
String? Function(BuildContext, String?)? nameTextControllerValidator;
  // State field(s) for lastName widget.
FocusNode? lastNameFocusNode;
TextEditingController? lastNameTextController;
String? Function(BuildContext, String?)? lastNameTextControllerValidator;
  // State field(s) for nickName widget.
FocusNode? nickNameFocusNode;
TextEditingController? nickNameTextController;
String? Function(BuildContext, String?)? nickNameTextControllerValidator;
  // State field(s) for age widget.
FocusNode? ageFocusNode;
TextEditingController? ageTextController;
String? Function(BuildContext, String?)? ageTextControllerValidator;

  
  

  @override
  void initState(BuildContext context) {
    passwordVisibility = false;
confirmPasswordVisibility = false;

    
  }

  @override
  void dispose() {
    unfocusNode.dispose();
emailFocusNode?.dispose();
        emailTextController?.dispose();
        
passwordFocusNode?.dispose();
        passwordTextController?.dispose();
        
confirmPasswordFocusNode?.dispose();
        confirmPasswordTextController?.dispose();
        
nameFocusNode?.dispose();
        nameTextController?.dispose();
        
lastNameFocusNode?.dispose();
        lastNameTextController?.dispose();
        
nickNameFocusNode?.dispose();
        nickNameTextController?.dispose();
        
ageFocusNode?.dispose();
        ageTextController?.dispose();
        
    
    
  }

  

  
  
  
}
