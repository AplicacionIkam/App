import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'admin_home_widget.dart' show AdminHomeWidget;
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:text_search/text_search.dart';
class AdminHomeModel extends FlutterFlowModel<AdminHomeWidget> {
  
  

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for TextField widget.
FocusNode? textFieldFocusNode;
TextEditingController? textController;
String? Function(BuildContext, String?)? textControllerValidator;
List<PymeRecord> simpleSearchResults = [];

  
  

  @override
  void initState(BuildContext context) {
    

    
  }

  @override
  void dispose() {
    unfocusNode.dispose();
textFieldFocusNode?.dispose();
        textController?.dispose();
        
    
    
  }

  

  
  
  
}
