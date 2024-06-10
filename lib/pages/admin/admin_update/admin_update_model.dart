import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'admin_update_widget.dart' show AdminUpdateWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
class AdminUpdateModel extends FlutterFlowModel<AdminUpdateWidget> {
  
  

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for Categoria widget.
String? categoriaValue;
FormFieldController<String>? categoriaValueController;
  // State field(s) for Subcategoria widget.
String? subcategoriaValue;
FormFieldController<String>? subcategoriaValueController;
  // State field(s) for namePyme widget.
FocusNode? namePymeFocusNode;
TextEditingController? namePymeTextController;
String? Function(BuildContext, String?)? namePymeTextControllerValidator;
  // State field(s) for nameManager widget.
FocusNode? nameManagerFocusNode;
TextEditingController? nameManagerTextController;
String? Function(BuildContext, String?)? nameManagerTextControllerValidator;
  // State field(s) for numero widget.
FocusNode? numeroFocusNode1;
TextEditingController? numeroTextController1;
String? Function(BuildContext, String?)? numeroTextController1Validator;
  // State field(s) for numero widget.
FocusNode? numeroFocusNode2;
TextEditingController? numeroTextController2;
String? Function(BuildContext, String?)? numeroTextController2Validator;
  // State field(s) for ubicacion widget.
FocusNode? ubicacionFocusNode;
TextEditingController? ubicacionTextController;
String? Function(BuildContext, String?)? ubicacionTextControllerValidator;
  // State field(s) for entrada widget.
FocusNode? entradaFocusNode;
TextEditingController? entradaTextController;
String? Function(BuildContext, String?)? entradaTextControllerValidator;
  // State field(s) for salida widget.
FocusNode? salidaFocusNode;
TextEditingController? salidaTextController;
String? Function(BuildContext, String?)? salidaTextControllerValidator;
  // State field(s) for tiktok widget.
FocusNode? tiktokFocusNode;
TextEditingController? tiktokTextController;
String? Function(BuildContext, String?)? tiktokTextControllerValidator;
  // State field(s) for facebook widget.
FocusNode? facebookFocusNode;
TextEditingController? facebookTextController;
String? Function(BuildContext, String?)? facebookTextControllerValidator;
  // State field(s) for instagram widget.
FocusNode? instagramFocusNode;
TextEditingController? instagramTextController;
String? Function(BuildContext, String?)? instagramTextControllerValidator;
  // State field(s) for maps widget.
FocusNode? mapsFocusNode;
TextEditingController? mapsTextController;
String? Function(BuildContext, String?)? mapsTextControllerValidator;
  // State field(s) for estadoDropDown widget.
String? estadoDropDownValue;
FormFieldController<String>? estadoDropDownValueController;
  // State field(s) for muniDropDown widget.
String? muniDropDownValue;
FormFieldController<String>? muniDropDownValueController;
  // State field(s) for coloniaDropDown widget.
String? coloniaDropDownValue;
FormFieldController<String>? coloniaDropDownValueController;

  
  

  @override
  void initState(BuildContext context) {
    

    
  }

  @override
  void dispose() {
    unfocusNode.dispose();
namePymeFocusNode?.dispose();
        namePymeTextController?.dispose();
        
nameManagerFocusNode?.dispose();
        nameManagerTextController?.dispose();
        
numeroFocusNode1?.dispose();
        numeroTextController1?.dispose();
        
numeroFocusNode2?.dispose();
        numeroTextController2?.dispose();
        
ubicacionFocusNode?.dispose();
        ubicacionTextController?.dispose();
        
entradaFocusNode?.dispose();
        entradaTextController?.dispose();
        
salidaFocusNode?.dispose();
        salidaTextController?.dispose();
        
tiktokFocusNode?.dispose();
        tiktokTextController?.dispose();
        
facebookFocusNode?.dispose();
        facebookTextController?.dispose();
        
instagramFocusNode?.dispose();
        instagramTextController?.dispose();
        
mapsFocusNode?.dispose();
        mapsTextController?.dispose();
        
    
    
  }

  

  
  
  
}
