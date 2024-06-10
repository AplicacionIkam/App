import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/backend/firebase_storage/storage.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_expanded_image_view.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/flutter_flow/upload_data.dart';
import 'admin_form_widget.dart' show AdminFormWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';
import 'package:provider/provider.dart';
class AdminFormModel extends FlutterFlowModel<AdminFormWidget> {
  
  

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for DropDown widget.
String? dropDownValue;
FormFieldController<String>? dropDownValueController;
  // State field(s) for Categoria widget.
String? categoriaValue;
FormFieldController<String>? categoriaValueController;
  // State field(s) for Subcategoria widget.
String? subcategoriaValue;
FormFieldController<String>? subcategoriaValueController;
bool isDataUploading1 = false;
  FFUploadedFile uploadedLocalFile1 = FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl1 = '';
  
bool isDataUploading2 = false;
  FFUploadedFile uploadedLocalFile2 = FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl2 = '';
  
bool isDataUploading3 = false;
  FFUploadedFile uploadedLocalFile3 = FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl3 = '';
  
bool isDataUploading4 = false;
  FFUploadedFile uploadedLocalFile4 = FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl4 = '';
  
  // State field(s) for namePyme widget.
FocusNode? namePymeFocusNode;
TextEditingController? namePymeTextController;
String? Function(BuildContext, String?)? namePymeTextControllerValidator;
  // State field(s) for nameManager widget.
FocusNode? nameManagerFocusNode;
TextEditingController? nameManagerTextController;
String? Function(BuildContext, String?)? nameManagerTextControllerValidator;
  // State field(s) for numero widget.
FocusNode? numeroFocusNode;
TextEditingController? numeroTextController;
String? Function(BuildContext, String?)? numeroTextControllerValidator;
  // State field(s) for numberTwo widget.
FocusNode? numberTwoFocusNode;
TextEditingController? numberTwoTextController;
String? Function(BuildContext, String?)? numberTwoTextControllerValidator;
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
        
numeroFocusNode?.dispose();
        numeroTextController?.dispose();
        
numberTwoFocusNode?.dispose();
        numberTwoTextController?.dispose();
        
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
