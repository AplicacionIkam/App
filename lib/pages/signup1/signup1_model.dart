import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'signup1_widget.dart' show Signup1Widget;
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
class Signup1Model extends FlutterFlowModel<Signup1Widget> {
  
  

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for TextField widget.
FocusNode? textFieldFocusNode1;
TextEditingController? textController1;
String? Function(BuildContext, String?)? textController1Validator;
  // State field(s) for TextField widget.
FocusNode? textFieldFocusNode2;
TextEditingController? textController2;
late bool passwordVisibility1;
String? Function(BuildContext, String?)? textController2Validator;
  // State field(s) for TextField widget.
FocusNode? textFieldFocusNode3;
TextEditingController? textController3;
late bool passwordVisibility2;
String? Function(BuildContext, String?)? textController3Validator;

  
  

  @override
  void initState(BuildContext context) {
    passwordVisibility1 = false;
passwordVisibility2 = false;

    
  }

  @override
  void dispose() {
    unfocusNode.dispose();
textFieldFocusNode1?.dispose();
        textController1?.dispose();
        
textFieldFocusNode2?.dispose();
        textController2?.dispose();
        
textFieldFocusNode3?.dispose();
        textController3?.dispose();
        
    
    
  }

  

  
  
  
}
