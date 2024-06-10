import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
      import 'admin_update_model.dart';
      export 'admin_update_model.dart';
    
class AdminUpdateWidget extends StatefulWidget {
  const AdminUpdateWidget({super.key , required this.userRef, }) ;

  final DocumentReference? userRef;

  @override
  State<AdminUpdateWidget> createState() => _AdminUpdateWidgetState();
}

class _AdminUpdateWidgetState extends State<AdminUpdateWidget>  {
  late AdminUpdateModel _model;

final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AdminUpdateModel());

    _model.namePymeTextController ??= TextEditingController();
_model.namePymeFocusNode ??= FocusNode();

_model.nameManagerTextController ??= TextEditingController();
_model.nameManagerFocusNode ??= FocusNode();

_model.numeroTextController1 ??= TextEditingController();
_model.numeroFocusNode1 ??= FocusNode();

_model.numeroTextController2 ??= TextEditingController();
_model.numeroFocusNode2 ??= FocusNode();

_model.ubicacionTextController ??= TextEditingController();
_model.ubicacionFocusNode ??= FocusNode();

_model.entradaTextController ??= TextEditingController();
_model.entradaFocusNode ??= FocusNode();

_model.salidaTextController ??= TextEditingController();
_model.salidaFocusNode ??= FocusNode();

_model.tiktokTextController ??= TextEditingController();
_model.tiktokFocusNode ??= FocusNode();

_model.facebookTextController ??= TextEditingController();
_model.facebookFocusNode ??= FocusNode();

_model.instagramTextController ??= TextEditingController();
_model.instagramFocusNode ??= FocusNode();

_model.mapsTextController ??= TextEditingController();
_model.mapsFocusNode ??= FocusNode();

    
  }


  @override
  void dispose() {
    _model.dispose();

    
    super.dispose();
  }

  
  @override
  Widget build(BuildContext context) {
    
    return GestureDetector(
  onTap: () =>
    _model.unfocusNode.canRequestFocus
      ? FocusScope.of(context).requestFocus(_model.unfocusNode)
      : FocusScope.of(context).unfocus(),
  child: Scaffold(
      key: scaffoldKey,
      
      backgroundColor: Colors.white  ,
      
      
      
      appBar:           AppBar(
            
                  backgroundColor: Color(0xFFD50F16)  ,
      
      automaticallyImplyLeading: true,
      
      title: ClipRRect(
              
              borderRadius: BorderRadius.circular( 8.0),
              child: Image.asset(      
      'assets/images/LOGO-ICON.png',
      width: 100.0  ,height: 60.0  ,
      fit: BoxFit.contain,
      
      
       
       
    ),
             ),
      actions: [],
      
      
      centerTitle: true,
      
      elevation: 2.0,

          ),
body: SafeArea(
        top: true,
        child: Padding(
             padding: EdgeInsetsDirectional.fromSTEB(
       0.0,
       0.0,
       0.0,
       25.0
  ),
             child: SingleChildScrollView(
        
        
        
        child: Column(
      
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.center,
      
      children: [Column(
      
      mainAxisSize: MainAxisSize.max,
      
      
      children: [Container(
      
      width: double.infinity  ,height: 70.0  ,
      
      decoration: BoxDecoration(
        color: Color(0xFF222C57)  ,
        
        boxShadow: [    BoxShadow(
      blurRadius: 4.0  ,
      color: Color(0x33000000)  ,
      offset: Offset( 0.0  ,  2.0  ,),
      
    )
  ],
        
        
        
        
      ),
    
      
      child: Column(
      
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      
      children: [Padding(
             padding: EdgeInsetsDirectional.fromSTEB(
       24.0,
       4.0,
       24.0,
       4.0
  ),
             child: Row(
      
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.center,
      
      children: [Text(
      
       'Actualizar pyme'  ,
      
      
      style: FlutterFlowTheme.of(context).displaySmall.override(    fontFamily: 'Poppins',
    color:  Color(0xFFF1F4F8)  ,
    
    letterSpacing: 0.0,
    
    
    
    
    
  ),
      
      
    ),],
    ),
           )
           ,],
    ),
    ),],
    ),
Padding(
             padding: EdgeInsets.all( 12.0),
             child: Container(
      
      width: double.infinity  ,
      
      decoration: BoxDecoration(
        
        
        
        
        borderRadius: BorderRadius.circular( 12.0  ),
        
        
      ),
    
      
      child: Align(
      alignment: AlignmentDirectional( 0.0  ,  0.0  ),
      child: Padding(
             padding: EdgeInsets.all( 15.0),
             child: StreamBuilder<PymeRecord>(
              stream: PymeRecord.getDocument(widget.userRef!),
              builder: (context, snapshot) {
                // Customize what your widget looks like when it's loading.
                if (!snapshot.hasData) {
                  return Center(child: SizedBox(
          width: 50.0,
          height: 50.0,
          child: CircularProgressIndicator(valueColor: AlwaysStoppedAnimation<Color>(FlutterFlowTheme.of(context).primary,),),
        ),);
                }
                final columnPymeRecord = snapshot.data!;
                return Column(
      
      mainAxisSize: MainAxisSize.max,
      
      
      children: [Padding(
             padding: EdgeInsetsDirectional.fromSTEB(
       0.0,
       0.0,
       0.0,
       20.0
  ),
             child: StreamBuilder<List<CategoriaRecord>>(
      stream: queryCategoriaRecord(),
      builder: (context, snapshot) {
        // Customize what your widget looks like when it's loading.
        if (!snapshot.hasData) {
          return Center(child: SizedBox(
          width: 50.0,
          height: 50.0,
          child: CircularProgressIndicator(valueColor: AlwaysStoppedAnimation<Color>(FlutterFlowTheme.of(context).primary,),),
        ),);
        }
        List<CategoriaRecord> categoriaCategoriaRecordList = snapshot.data!;
         return     FlutterFlowDropDown<String>(
      
      controller: _model.categoriaValueController ??= FormFieldController<String>(null),
      options:  categoriaCategoriaRecordList.map((e) => e.nombreCate).toList()  ,
      
      onChanged: (val) => setState(() => _model.categoriaValue = val),
      width: double.infinity  ,height: 50.0  ,
      
      searchHintTextStyle: FlutterFlowTheme.of(context).labelMedium.override(    fontFamily: 'Noto Sans Old Permic',
    
    
    letterSpacing: 0.0,
    
    
    
    
    
  ),
      searchTextStyle: FlutterFlowTheme.of(context).bodyMedium.override(    fontFamily: 'Readex Pro',
    
    
    letterSpacing: 0.0,
    
    
    
    
    
  ),
      textStyle: FlutterFlowTheme.of(context).bodyMedium.override(    fontFamily: 'Noto Sans Old Permic',
    color:  FlutterFlowTheme.of(context).secondaryText  ,
    
    letterSpacing: 0.0,
    fontWeight: FontWeight.bold,
    
    
    
    
  ),
      hintText: 'Selecciona la Categoría...'  ,
      searchHintText: 'Búsqueda por categoría...'  ,
      
      icon:  Icon(
      
      Icons.keyboard_arrow_down_rounded,
      color: FlutterFlowTheme.of(context).secondaryText  ,
      size: 24.0  ,
    )  ,
      fillColor: FlutterFlowTheme.of(context).secondaryBackground  ,
      elevation: 2.0,
      borderColor: FlutterFlowTheme.of(context).alternate  ,
      borderWidth: 2.0,
      borderRadius: 8.0,
      margin: EdgeInsetsDirectional.fromSTEB(
       16.0,
       4.0,
       16.0,
       4.0
  ),
      hidesUnderline: true,
      
      isOverButton: true,
      isSearchable: true,
      isMultiSelect: false,
      
      
      
    )
    ;
      },
    )
    ,
           )
           ,
if (_model.categoriaValue != null && _model.categoriaValue != '') Padding(
             padding: EdgeInsetsDirectional.fromSTEB(
       0.0,
       0.0,
       0.0,
       20.0
  ),
             child: StreamBuilder<List<SubCategoriaRecord>>(
      stream: querySubCategoriaRecord(queryBuilder: (subCategoriaRecord) => subCategoriaRecord.where('referenciaCate', isEqualTo: _model.categoriaValue, ),),
      builder: (context, snapshot) {
        // Customize what your widget looks like when it's loading.
        if (!snapshot.hasData) {
          return Center(child: SizedBox(
          width: 50.0,
          height: 50.0,
          child: CircularProgressIndicator(valueColor: AlwaysStoppedAnimation<Color>(FlutterFlowTheme.of(context).primary,),),
        ),);
        }
        List<SubCategoriaRecord> subcategoriaSubCategoriaRecordList = snapshot.data!;
         return     FlutterFlowDropDown<String>(
      
      controller: _model.subcategoriaValueController ??= FormFieldController<String>(null),
      options:  subcategoriaSubCategoriaRecordList.map((e) => e.nombreSubc).toList()  ,
      
      onChanged: (val) => setState(() => _model.subcategoriaValue = val),
      width: double.infinity  ,height: 50.0  ,
      
      searchHintTextStyle: FlutterFlowTheme.of(context).labelMedium.override(    fontFamily: 'Noto Sans Old Permic',
    
    
    letterSpacing: 0.0,
    
    
    
    
    
  ),
      searchTextStyle: FlutterFlowTheme.of(context).bodyMedium.override(    fontFamily: 'Readex Pro',
    
    
    letterSpacing: 0.0,
    
    
    
    
    
  ),
      textStyle: FlutterFlowTheme.of(context).bodyMedium.override(    fontFamily: 'Noto Sans Old Permic',
    color:  FlutterFlowTheme.of(context).secondaryText  ,
    
    letterSpacing: 0.0,
    fontWeight: FontWeight.bold,
    
    
    
    
  ),
      hintText: 'Selecciona la Sub-Categoría...'  ,
      searchHintText: 'Búsqueda por sub-categoría...'  ,
      
      icon:  Icon(
      
      Icons.keyboard_arrow_down_rounded,
      color: FlutterFlowTheme.of(context).secondaryText  ,
      size: 24.0  ,
    )  ,
      fillColor: FlutterFlowTheme.of(context).secondaryBackground  ,
      elevation: 2.0,
      borderColor: FlutterFlowTheme.of(context).alternate  ,
      borderWidth: 2.0,
      borderRadius: 8.0,
      margin: EdgeInsetsDirectional.fromSTEB(
       16.0,
       4.0,
       16.0,
       4.0
  ),
      hidesUnderline: true,
      
      isOverButton: true,
      isSearchable: true,
      isMultiSelect: false,
      
      
      
    )
    ;
      },
    )
    ,
           )
           ,
Padding(
             padding: EdgeInsetsDirectional.fromSTEB(
       0.0,
       0.0,
       0.0,
       16.0
  ),
             child: Container(width: double.infinity  , child: TextFormField(
      
      
      controller: _model.namePymeTextController ,
      focusNode: _model.namePymeFocusNode,
      
      
      
      autofocus: false  ,
      
      
      
      
      obscureText: false,
      decoration: InputDecoration(
    
    labelText: 'Nombre de la Pyme'  ,
    labelStyle: FlutterFlowTheme.of(context).labelLarge.override(    fontFamily: 'Noto Sans Old Permic',
    
    fontSize: 16.0,
    letterSpacing: 0.0,
    fontWeight: FontWeight.normal,
    
    
    
    
  ),
    
    hintText: columnPymeRecord.nombrePyme  ,
    hintStyle: FlutterFlowTheme.of(context).bodyMedium.override(    fontFamily: 'Noto Sans Old Permic',
    
    
    letterSpacing: 0.0,
    fontWeight: FontWeight.w500,
    
    
    
    
  ),
    
    
    enabledBorder: OutlineInputBorder(borderSide:     BorderSide(
      color:  FlutterFlowTheme.of(context).alternate  ,
      width: 2.0,
    )
  , borderRadius: BorderRadius.circular( 8.0  ),),
    focusedBorder: OutlineInputBorder(borderSide:     BorderSide(
      color:  Color(0x00000000)  ,
      width: 2.0,
    )
  , borderRadius: BorderRadius.circular( 8.0  ),),
    errorBorder: OutlineInputBorder(borderSide:     BorderSide(
      color:  Color(0x00000000)  ,
      width: 2.0,
    )
  , borderRadius: BorderRadius.circular( 8.0  ),),
    focusedErrorBorder: OutlineInputBorder(borderSide:     BorderSide(
      color:  Color(0x00000000)  ,
      width: 2.0,
    )
  , borderRadius: BorderRadius.circular( 8.0  ),),
    filled: true  ,
    fillColor: FlutterFlowTheme.of(context).secondaryBackground  ,
    contentPadding: EdgeInsetsDirectional.fromSTEB(
       16.0,
       24.0,
       0.0,
       24.0
  ),
    
    
  ),
      style: FlutterFlowTheme.of(context).bodyMedium.override(    fontFamily: 'Noto Sans Old Permic',
    
    
    letterSpacing: 0.0,
    
    
    
    
    
  ),
      
      
      
      
      
      
      
      
      validator: _model.namePymeTextControllerValidator.asValidator(context),
      
    ),),
           )
           ,
Padding(
             padding: EdgeInsetsDirectional.fromSTEB(
       0.0,
       0.0,
       0.0,
       16.0
  ),
             child: Container(width: double.infinity  , child: TextFormField(
      
      
      controller: _model.nameManagerTextController ,
      focusNode: _model.nameManagerFocusNode,
      
      
      
      autofocus: false  ,
      
      
      
      
      obscureText: false,
      decoration: InputDecoration(
    
    labelText: 'Descripción'  ,
    labelStyle: FlutterFlowTheme.of(context).labelLarge.override(    fontFamily: 'Noto Sans Old Permic',
    
    
    letterSpacing: 0.0,
    
    
    
    
    
  ),
    
    hintText: columnPymeRecord.nombreEncargado  ,
    hintStyle: FlutterFlowTheme.of(context).bodyMedium.override(    fontFamily: 'Noto Sans Old Permic',
    color:  FlutterFlowTheme.of(context).secondaryText  ,
    
    letterSpacing: 0.0,
    fontWeight: FontWeight.w500,
    
    
    
    
  ),
    
    
    enabledBorder: OutlineInputBorder(borderSide:     BorderSide(
      color:  FlutterFlowTheme.of(context).alternate  ,
      width: 2.0,
    )
  , borderRadius: BorderRadius.circular( 8.0  ),),
    focusedBorder: OutlineInputBorder(borderSide:     BorderSide(
      color:  Color(0x00000000)  ,
      width: 2.0,
    )
  , borderRadius: BorderRadius.circular( 8.0  ),),
    errorBorder: OutlineInputBorder(borderSide:     BorderSide(
      color:  Color(0x00000000)  ,
      width: 2.0,
    )
  , borderRadius: BorderRadius.circular( 8.0  ),),
    focusedErrorBorder: OutlineInputBorder(borderSide:     BorderSide(
      color:  Color(0x00000000)  ,
      width: 2.0,
    )
  , borderRadius: BorderRadius.circular( 8.0  ),),
    filled: true  ,
    fillColor: FlutterFlowTheme.of(context).secondaryBackground  ,
    contentPadding: EdgeInsetsDirectional.fromSTEB(
       16.0,
       24.0,
       0.0,
       24.0
  ),
    
    
  ),
      style: FlutterFlowTheme.of(context).bodyMedium.override(    fontFamily: 'Noto Sans Old Permic',
    
    
    letterSpacing: 0.0,
    
    
    
    
    
  ),
      
      maxLines: 11  ,
      
      
      
      
      
      
      validator: _model.nameManagerTextControllerValidator.asValidator(context),
      
    ),),
           )
           ,
Row(
      
      mainAxisSize: MainAxisSize.max,
      
      
      children: [Expanded(
      
      child: Padding(
             padding: EdgeInsetsDirectional.fromSTEB(
       0.0,
       0.0,
       5.0,
       16.0
  ),
             child: Container(width: double.infinity  , child: TextFormField(
      
      
      controller: _model.numeroTextController1 ,
      focusNode: _model.numeroFocusNode1,
      
      
      
      autofocus: false  ,
      
      
      
      
      obscureText: false,
      decoration: InputDecoration(
    
    labelText: 'Télefono Local'  ,
    labelStyle: FlutterFlowTheme.of(context).labelLarge.override(    fontFamily: 'Noto Sans Old Permic',
    
    
    letterSpacing: 0.0,
    
    
    
    
    
  ),
    
    hintText: columnPymeRecord.numeroLocal  ,
    hintStyle: FlutterFlowTheme.of(context).bodyMedium.override(    fontFamily: 'Noto Sans Old Permic',
    
    
    letterSpacing: 0.0,
    fontWeight: FontWeight.w500,
    
    
    
    
  ),
    
    
    enabledBorder: OutlineInputBorder(borderSide:     BorderSide(
      color:  FlutterFlowTheme.of(context).alternate  ,
      width: 2.0,
    )
  , borderRadius: BorderRadius.circular( 8.0  ),),
    focusedBorder: OutlineInputBorder(borderSide:     BorderSide(
      color:  Color(0x00000000)  ,
      width: 2.0,
    )
  , borderRadius: BorderRadius.circular( 8.0  ),),
    errorBorder: OutlineInputBorder(borderSide:     BorderSide(
      color:  Color(0x00000000)  ,
      width: 2.0,
    )
  , borderRadius: BorderRadius.circular( 8.0  ),),
    focusedErrorBorder: OutlineInputBorder(borderSide:     BorderSide(
      color:  Color(0x00000000)  ,
      width: 2.0,
    )
  , borderRadius: BorderRadius.circular( 8.0  ),),
    filled: true  ,
    fillColor: FlutterFlowTheme.of(context).secondaryBackground  ,
    contentPadding: EdgeInsetsDirectional.fromSTEB(
       16.0,
       0.0,
       0.0,
       0.0
  ),
    
    
  ),
      style: FlutterFlowTheme.of(context).bodyMedium.override(    fontFamily: 'Noto Sans Old Permic',
    
    
    letterSpacing: 0.0,
    
    
    
    
    
  ),
      
      
      
      
      
      
      
      
      validator: _model.numeroTextController1Validator.asValidator(context),
      
    ),),
           )
           ,
    )
    ,
Expanded(
      
      child: Padding(
             padding: EdgeInsetsDirectional.fromSTEB(
       0.0,
       0.0,
       0.0,
       16.0
  ),
             child: Container(width: double.infinity  , child: TextFormField(
      
      
      controller: _model.numeroTextController2 ,
      focusNode: _model.numeroFocusNode2,
      
      
      
      autofocus: false  ,
      
      
      
      
      obscureText: false,
      decoration: InputDecoration(
    
    labelText: 'Télefono Celular'  ,
    labelStyle: FlutterFlowTheme.of(context).labelLarge.override(    fontFamily: 'Noto Sans Old Permic',
    
    
    letterSpacing: 0.0,
    
    
    
    
    
  ),
    
    hintText: columnPymeRecord.numeroCel  ,
    hintStyle: FlutterFlowTheme.of(context).bodyMedium.override(    fontFamily: 'Noto Sans Old Permic',
    
    
    letterSpacing: 0.0,
    fontWeight: FontWeight.w500,
    
    
    
    
  ),
    
    
    enabledBorder: OutlineInputBorder(borderSide:     BorderSide(
      color:  FlutterFlowTheme.of(context).alternate  ,
      width: 2.0,
    )
  , borderRadius: BorderRadius.circular( 8.0  ),),
    focusedBorder: OutlineInputBorder(borderSide:     BorderSide(
      color:  Color(0x00000000)  ,
      width: 2.0,
    )
  , borderRadius: BorderRadius.circular( 8.0  ),),
    errorBorder: OutlineInputBorder(borderSide:     BorderSide(
      color:  Color(0x00000000)  ,
      width: 2.0,
    )
  , borderRadius: BorderRadius.circular( 8.0  ),),
    focusedErrorBorder: OutlineInputBorder(borderSide:     BorderSide(
      color:  Color(0x00000000)  ,
      width: 2.0,
    )
  , borderRadius: BorderRadius.circular( 8.0  ),),
    filled: true  ,
    fillColor: FlutterFlowTheme.of(context).secondaryBackground  ,
    contentPadding: EdgeInsetsDirectional.fromSTEB(
       16.0,
       0.0,
       0.0,
       0.0
  ),
    
    
  ),
      style: FlutterFlowTheme.of(context).bodyMedium.override(    fontFamily: 'Noto Sans Old Permic',
    
    
    letterSpacing: 0.0,
    
    
    
    
    
  ),
      
      
      
      
      
      
      
      
      validator: _model.numeroTextController2Validator.asValidator(context),
      
    ),),
           )
           ,
    )
    ,],
    ),
Padding(
             padding: EdgeInsetsDirectional.fromSTEB(
       0.0,
       0.0,
       0.0,
       16.0
  ),
             child: Container(width: double.infinity  , child: TextFormField(
      
      
      controller: _model.ubicacionTextController ,
      focusNode: _model.ubicacionFocusNode,
      
      
      
      autofocus: false  ,
      
      
      
      
      obscureText: false,
      decoration: InputDecoration(
    
    labelText: 'Ubicación'  ,
    labelStyle: FlutterFlowTheme.of(context).labelMedium.override(    fontFamily: 'Noto Sans Old Permic',
    
    fontSize: 16.0,
    letterSpacing: 0.0,
    
    
    
    
    
  ),
    
    hintText: columnPymeRecord.direccion  ,
    hintStyle: FlutterFlowTheme.of(context).bodyMedium.override(    fontFamily: 'Noto Sans Old Permic',
    color:  FlutterFlowTheme.of(context).secondaryText  ,
    
    letterSpacing: 0.0,
    fontWeight: FontWeight.w500,
    
    
    
    
  ),
    
    
    enabledBorder: OutlineInputBorder(borderSide:     BorderSide(
      color:  FlutterFlowTheme.of(context).alternate  ,
      width: 2.0,
    )
  , borderRadius: BorderRadius.circular( 8.0  ),),
    focusedBorder: OutlineInputBorder(borderSide:     BorderSide(
      color:  Color(0x00000000)  ,
      width: 2.0,
    )
  , borderRadius: BorderRadius.circular( 8.0  ),),
    errorBorder: OutlineInputBorder(borderSide:     BorderSide(
      color:  Color(0x00000000)  ,
      width: 2.0,
    )
  , borderRadius: BorderRadius.circular( 8.0  ),),
    focusedErrorBorder: OutlineInputBorder(borderSide:     BorderSide(
      color:  Color(0x00000000)  ,
      width: 2.0,
    )
  , borderRadius: BorderRadius.circular( 8.0  ),),
    filled: true  ,
    fillColor: FlutterFlowTheme.of(context).secondaryBackground  ,
    contentPadding: EdgeInsetsDirectional.fromSTEB(
       16.0,
       24.0,
       0.0,
       24.0
  ),
    
    
  ),
      style: FlutterFlowTheme.of(context).bodyMedium.override(    fontFamily: 'Noto Sans Old Permic',
    
    
    letterSpacing: 0.0,
    
    
    
    
    
  ),
      
      
      
      
      
      
      
      
      validator: _model.ubicacionTextControllerValidator.asValidator(context),
      
    ),),
           )
           ,
Padding(
             padding: EdgeInsetsDirectional.fromSTEB(
       0.0,
       0.0,
       0.0,
       16.0
  ),
             child: Container(width: double.infinity  , child: TextFormField(
      
      
      controller: _model.entradaTextController ,
      focusNode: _model.entradaFocusNode,
      
      
      
      autofocus: false  ,
      
      
      
      
      obscureText: false,
      decoration: InputDecoration(
    
    labelText: 'Horario'  ,
    labelStyle: FlutterFlowTheme.of(context).labelMedium.override(    fontFamily: 'Noto Sans Old Permic',
    
    fontSize: 16.0,
    letterSpacing: 0.0,
    
    
    
    
    
  ),
    
    hintText: columnPymeRecord.horarioApertura  ,
    hintStyle: FlutterFlowTheme.of(context).bodyMedium.override(    fontFamily: 'Noto Sans Old Permic',
    color:  FlutterFlowTheme.of(context).secondaryText  ,
    
    letterSpacing: 0.0,
    fontWeight: FontWeight.w500,
    
    
    
    
  ),
    
    
    enabledBorder: OutlineInputBorder(borderSide:     BorderSide(
      color:  FlutterFlowTheme.of(context).alternate  ,
      width: 2.0,
    )
  , borderRadius: BorderRadius.circular( 8.0  ),),
    focusedBorder: OutlineInputBorder(borderSide:     BorderSide(
      color:  Color(0x00000000)  ,
      width: 2.0,
    )
  , borderRadius: BorderRadius.circular( 8.0  ),),
    errorBorder: OutlineInputBorder(borderSide:     BorderSide(
      color:  Color(0x00000000)  ,
      width: 2.0,
    )
  , borderRadius: BorderRadius.circular( 8.0  ),),
    focusedErrorBorder: OutlineInputBorder(borderSide:     BorderSide(
      color:  Color(0x00000000)  ,
      width: 2.0,
    )
  , borderRadius: BorderRadius.circular( 8.0  ),),
    filled: true  ,
    fillColor: FlutterFlowTheme.of(context).secondaryBackground  ,
    contentPadding: EdgeInsetsDirectional.fromSTEB(
       16.0,
       24.0,
       0.0,
       24.0
  ),
    
    
  ),
      style: FlutterFlowTheme.of(context).bodyMedium.override(    fontFamily: 'Noto Sans Old Permic',
    
    
    letterSpacing: 0.0,
    
    
    
    
    
  ),
      
      
      
      
      
      
      
      
      validator: _model.entradaTextControllerValidator.asValidator(context),
      
    ),),
           )
           ,
Padding(
             padding: EdgeInsetsDirectional.fromSTEB(
       0.0,
       0.0,
       0.0,
       16.0
  ),
             child: Container(width: double.infinity  , child: TextFormField(
      
      
      controller: _model.salidaTextController ,
      focusNode: _model.salidaFocusNode,
      
      
      
      autofocus: false  ,
      
      
      
      
      obscureText: false,
      decoration: InputDecoration(
    
    labelText: 'Horario'  ,
    labelStyle: FlutterFlowTheme.of(context).labelMedium.override(    fontFamily: 'Noto Sans Old Permic',
    
    fontSize: 16.0,
    letterSpacing: 0.0,
    
    
    
    
    
  ),
    
    hintText: columnPymeRecord.horarioCierre  ,
    hintStyle: FlutterFlowTheme.of(context).bodyMedium.override(    fontFamily: 'Noto Sans Old Permic',
    color:  FlutterFlowTheme.of(context).secondaryText  ,
    
    letterSpacing: 0.0,
    fontWeight: FontWeight.w500,
    
    
    
    
  ),
    
    
    enabledBorder: OutlineInputBorder(borderSide:     BorderSide(
      color:  FlutterFlowTheme.of(context).alternate  ,
      width: 2.0,
    )
  , borderRadius: BorderRadius.circular( 8.0  ),),
    focusedBorder: OutlineInputBorder(borderSide:     BorderSide(
      color:  Color(0x00000000)  ,
      width: 2.0,
    )
  , borderRadius: BorderRadius.circular( 8.0  ),),
    errorBorder: OutlineInputBorder(borderSide:     BorderSide(
      color:  Color(0x00000000)  ,
      width: 2.0,
    )
  , borderRadius: BorderRadius.circular( 8.0  ),),
    focusedErrorBorder: OutlineInputBorder(borderSide:     BorderSide(
      color:  Color(0x00000000)  ,
      width: 2.0,
    )
  , borderRadius: BorderRadius.circular( 8.0  ),),
    filled: true  ,
    fillColor: FlutterFlowTheme.of(context).secondaryBackground  ,
    contentPadding: EdgeInsetsDirectional.fromSTEB(
       16.0,
       24.0,
       0.0,
       24.0
  ),
    
    
  ),
      style: FlutterFlowTheme.of(context).bodyMedium.override(    fontFamily: 'Noto Sans Old Permic',
    
    
    letterSpacing: 0.0,
    
    
    
    
    
  ),
      
      
      
      
      
      
      
      
      validator: _model.salidaTextControllerValidator.asValidator(context),
      
    ),),
           )
           ,
Padding(
             padding: EdgeInsetsDirectional.fromSTEB(
       0.0,
       0.0,
       0.0,
       16.0
  ),
             child: Container(width: double.infinity  , child: TextFormField(
      
      
      controller: _model.tiktokTextController ,
      focusNode: _model.tiktokFocusNode,
      
      
      
      autofocus: false  ,
      
      
      
      
      obscureText: false,
      decoration: InputDecoration(
    
    labelText: 'Tiktok'  ,
    labelStyle: FlutterFlowTheme.of(context).labelMedium.override(    fontFamily: 'Noto Sans Old Permic',
    
    fontSize: 16.0,
    letterSpacing: 0.0,
    
    
    
    
    
  ),
    
    hintText: columnPymeRecord.urlTiktok  ,
    hintStyle: FlutterFlowTheme.of(context).bodyMedium.override(    fontFamily: 'Noto Sans Old Permic',
    color:  FlutterFlowTheme.of(context).secondaryText  ,
    
    letterSpacing: 0.0,
    fontWeight: FontWeight.w500,
    
    
    
    
  ),
    
    
    enabledBorder: OutlineInputBorder(borderSide:     BorderSide(
      color:  FlutterFlowTheme.of(context).alternate  ,
      width: 2.0,
    )
  , borderRadius: BorderRadius.circular( 8.0  ),),
    focusedBorder: OutlineInputBorder(borderSide:     BorderSide(
      color:  Color(0x00000000)  ,
      width: 2.0,
    )
  , borderRadius: BorderRadius.circular( 8.0  ),),
    errorBorder: OutlineInputBorder(borderSide:     BorderSide(
      color:  Color(0x00000000)  ,
      width: 2.0,
    )
  , borderRadius: BorderRadius.circular( 8.0  ),),
    focusedErrorBorder: OutlineInputBorder(borderSide:     BorderSide(
      color:  Color(0x00000000)  ,
      width: 2.0,
    )
  , borderRadius: BorderRadius.circular( 8.0  ),),
    filled: true  ,
    fillColor: FlutterFlowTheme.of(context).secondaryBackground  ,
    contentPadding: EdgeInsetsDirectional.fromSTEB(
       16.0,
       24.0,
       0.0,
       24.0
  ),
    
    
  ),
      style: FlutterFlowTheme.of(context).bodyMedium.override(    fontFamily: 'Noto Sans Old Permic',
    
    
    letterSpacing: 0.0,
    
    
    
    
    
  ),
      
      
      
      
      
      
      
      
      validator: _model.tiktokTextControllerValidator.asValidator(context),
      
    ),),
           )
           ,
Padding(
             padding: EdgeInsetsDirectional.fromSTEB(
       0.0,
       0.0,
       0.0,
       16.0
  ),
             child: Container(width: double.infinity  , child: TextFormField(
      
      
      controller: _model.facebookTextController ,
      focusNode: _model.facebookFocusNode,
      
      
      
      autofocus: false  ,
      
      
      
      
      obscureText: false,
      decoration: InputDecoration(
    
    labelText: 'Facebook'  ,
    labelStyle: FlutterFlowTheme.of(context).labelMedium.override(    fontFamily: 'Noto Sans Old Permic',
    
    fontSize: 16.0,
    letterSpacing: 0.0,
    
    
    
    
    
  ),
    
    hintText: columnPymeRecord.urlFacebook  ,
    hintStyle: FlutterFlowTheme.of(context).bodyMedium.override(    fontFamily: 'Noto Sans Old Permic',
    color:  FlutterFlowTheme.of(context).secondaryText  ,
    
    letterSpacing: 0.0,
    fontWeight: FontWeight.w500,
    
    
    
    
  ),
    
    
    enabledBorder: OutlineInputBorder(borderSide:     BorderSide(
      color:  FlutterFlowTheme.of(context).alternate  ,
      width: 2.0,
    )
  , borderRadius: BorderRadius.circular( 8.0  ),),
    focusedBorder: OutlineInputBorder(borderSide:     BorderSide(
      color:  Color(0x00000000)  ,
      width: 2.0,
    )
  , borderRadius: BorderRadius.circular( 8.0  ),),
    errorBorder: OutlineInputBorder(borderSide:     BorderSide(
      color:  Color(0x00000000)  ,
      width: 2.0,
    )
  , borderRadius: BorderRadius.circular( 8.0  ),),
    focusedErrorBorder: OutlineInputBorder(borderSide:     BorderSide(
      color:  Color(0x00000000)  ,
      width: 2.0,
    )
  , borderRadius: BorderRadius.circular( 8.0  ),),
    filled: true  ,
    fillColor: FlutterFlowTheme.of(context).secondaryBackground  ,
    contentPadding: EdgeInsetsDirectional.fromSTEB(
       16.0,
       24.0,
       0.0,
       24.0
  ),
    
    
  ),
      style: FlutterFlowTheme.of(context).bodyMedium.override(    fontFamily: 'Noto Sans Old Permic',
    
    
    letterSpacing: 0.0,
    
    
    
    
    
  ),
      
      
      
      
      
      
      
      
      validator: _model.facebookTextControllerValidator.asValidator(context),
      
    ),),
           )
           ,
Padding(
             padding: EdgeInsetsDirectional.fromSTEB(
       0.0,
       0.0,
       0.0,
       16.0
  ),
             child: Container(width: double.infinity  , child: TextFormField(
      
      
      controller: _model.instagramTextController ,
      focusNode: _model.instagramFocusNode,
      
      
      
      autofocus: false  ,
      
      
      
      
      obscureText: false,
      decoration: InputDecoration(
    
    labelText: 'Instagram'  ,
    labelStyle: FlutterFlowTheme.of(context).labelMedium.override(    fontFamily: 'Noto Sans Old Permic',
    
    fontSize: 16.0,
    letterSpacing: 0.0,
    
    
    
    
    
  ),
    
    hintText: columnPymeRecord.urlInstagram  ,
    hintStyle: FlutterFlowTheme.of(context).bodyMedium.override(    fontFamily: 'Noto Sans Old Permic',
    color:  FlutterFlowTheme.of(context).secondaryText  ,
    
    letterSpacing: 0.0,
    fontWeight: FontWeight.w500,
    
    
    
    
  ),
    
    
    enabledBorder: OutlineInputBorder(borderSide:     BorderSide(
      color:  FlutterFlowTheme.of(context).alternate  ,
      width: 2.0,
    )
  , borderRadius: BorderRadius.circular( 8.0  ),),
    focusedBorder: OutlineInputBorder(borderSide:     BorderSide(
      color:  Color(0x00000000)  ,
      width: 2.0,
    )
  , borderRadius: BorderRadius.circular( 8.0  ),),
    errorBorder: OutlineInputBorder(borderSide:     BorderSide(
      color:  Color(0x00000000)  ,
      width: 2.0,
    )
  , borderRadius: BorderRadius.circular( 8.0  ),),
    focusedErrorBorder: OutlineInputBorder(borderSide:     BorderSide(
      color:  Color(0x00000000)  ,
      width: 2.0,
    )
  , borderRadius: BorderRadius.circular( 8.0  ),),
    filled: true  ,
    fillColor: FlutterFlowTheme.of(context).secondaryBackground  ,
    contentPadding: EdgeInsetsDirectional.fromSTEB(
       16.0,
       24.0,
       0.0,
       24.0
  ),
    
    
  ),
      style: FlutterFlowTheme.of(context).bodyMedium.override(    fontFamily: 'Noto Sans Old Permic',
    
    
    letterSpacing: 0.0,
    
    
    
    
    
  ),
      
      
      
      
      
      
      
      
      validator: _model.instagramTextControllerValidator.asValidator(context),
      
    ),),
           )
           ,
Padding(
             padding: EdgeInsetsDirectional.fromSTEB(
       0.0,
       0.0,
       0.0,
       16.0
  ),
             child: Container(width: double.infinity  , child: TextFormField(
      
      
      controller: _model.mapsTextController ,
      focusNode: _model.mapsFocusNode,
      
      
      
      autofocus: false  ,
      
      
      
      
      obscureText: false,
      decoration: InputDecoration(
    
    labelText: 'Maps'  ,
    labelStyle: FlutterFlowTheme.of(context).labelMedium.override(    fontFamily: 'Noto Sans Old Permic',
    
    fontSize: 16.0,
    letterSpacing: 0.0,
    
    
    
    
    
  ),
    
    hintText: columnPymeRecord.urlMaps  ,
    hintStyle: FlutterFlowTheme.of(context).bodyMedium.override(    fontFamily: 'Noto Sans Old Permic',
    color:  FlutterFlowTheme.of(context).secondaryText  ,
    
    letterSpacing: 0.0,
    fontWeight: FontWeight.w500,
    
    
    
    
  ),
    
    
    enabledBorder: OutlineInputBorder(borderSide:     BorderSide(
      color:  FlutterFlowTheme.of(context).alternate  ,
      width: 2.0,
    )
  , borderRadius: BorderRadius.circular( 8.0  ),),
    focusedBorder: OutlineInputBorder(borderSide:     BorderSide(
      color:  Color(0x00000000)  ,
      width: 2.0,
    )
  , borderRadius: BorderRadius.circular( 8.0  ),),
    errorBorder: OutlineInputBorder(borderSide:     BorderSide(
      color:  Color(0x00000000)  ,
      width: 2.0,
    )
  , borderRadius: BorderRadius.circular( 8.0  ),),
    focusedErrorBorder: OutlineInputBorder(borderSide:     BorderSide(
      color:  Color(0x00000000)  ,
      width: 2.0,
    )
  , borderRadius: BorderRadius.circular( 8.0  ),),
    filled: true  ,
    fillColor: FlutterFlowTheme.of(context).secondaryBackground  ,
    contentPadding: EdgeInsetsDirectional.fromSTEB(
       16.0,
       24.0,
       0.0,
       24.0
  ),
    
    
  ),
      style: FlutterFlowTheme.of(context).bodyMedium.override(    fontFamily: 'Noto Sans Old Permic',
    
    
    letterSpacing: 0.0,
    
    
    
    
    
  ),
      
      
      
      
      
      
      
      
      validator: _model.mapsTextControllerValidator.asValidator(context),
      
    ),),
           )
           ,
Padding(
             padding: EdgeInsetsDirectional.fromSTEB(
       0.0,
       0.0,
       0.0,
       20.0
  ),
             child: StreamBuilder<List<EstadoRecord>>(
      stream: queryEstadoRecord(queryBuilder: (estadoRecord) => estadoRecord.orderBy('nombreEst'),),
      builder: (context, snapshot) {
        // Customize what your widget looks like when it's loading.
        if (!snapshot.hasData) {
          return Center(child: SizedBox(
          width: 50.0,
          height: 50.0,
          child: CircularProgressIndicator(valueColor: AlwaysStoppedAnimation<Color>(FlutterFlowTheme.of(context).primary,),),
        ),);
        }
        List<EstadoRecord> estadoDropDownEstadoRecordList = snapshot.data!;
         return     FlutterFlowDropDown<String>(
      
      controller: _model.estadoDropDownValueController ??= FormFieldController<String>(null),
      options:  estadoDropDownEstadoRecordList.map((e) => e.nombreEst).toList()  ,
      
      onChanged: (val) => setState(() => _model.estadoDropDownValue = val),
      width: double.infinity  ,height: 50.0  ,
      
      searchHintTextStyle: FlutterFlowTheme.of(context).labelMedium.override(    fontFamily: 'Noto Sans Old Permic',
    
    
    letterSpacing: 0.0,
    
    
    
    
    
  ),
      searchTextStyle: FlutterFlowTheme.of(context).bodyMedium.override(    fontFamily: 'Readex Pro',
    
    
    letterSpacing: 0.0,
    
    
    
    
    
  ),
      textStyle: FlutterFlowTheme.of(context).bodyMedium.override(    fontFamily: 'Noto Sans Old Permic',
    color:  FlutterFlowTheme.of(context).secondaryText  ,
    
    letterSpacing: 0.0,
    fontWeight: FontWeight.bold,
    
    
    
    
  ),
      hintText: 'Selecciona el Estado...'  ,
      searchHintText: 'Búsqueda por sub-categoría...'  ,
      
      icon:  Icon(
      
      Icons.keyboard_arrow_down_rounded,
      color: FlutterFlowTheme.of(context).secondaryText  ,
      size: 24.0  ,
    )  ,
      fillColor: FlutterFlowTheme.of(context).secondaryBackground  ,
      elevation: 2.0,
      borderColor: FlutterFlowTheme.of(context).alternate  ,
      borderWidth: 2.0,
      borderRadius: 8.0,
      margin: EdgeInsetsDirectional.fromSTEB(
       16.0,
       4.0,
       16.0,
       4.0
  ),
      hidesUnderline: true,
      
      isOverButton: true,
      isSearchable: true,
      isMultiSelect: false,
      
      
      
    )
    ;
      },
    )
    ,
           )
           ,
if (_model.estadoDropDownValue != null && _model.estadoDropDownValue != '') Padding(
             padding: EdgeInsetsDirectional.fromSTEB(
       0.0,
       0.0,
       0.0,
       20.0
  ),
             child: StreamBuilder<List<MunicipioRecord>>(
      stream: queryMunicipioRecord(queryBuilder: (municipioRecord) => municipioRecord.where('referenciaEstado', isEqualTo: _model.estadoDropDownValue, ).orderBy('nombreMun'),),
      builder: (context, snapshot) {
        // Customize what your widget looks like when it's loading.
        if (!snapshot.hasData) {
          return Center(child: SizedBox(
          width: 50.0,
          height: 50.0,
          child: CircularProgressIndicator(valueColor: AlwaysStoppedAnimation<Color>(FlutterFlowTheme.of(context).primary,),),
        ),);
        }
        List<MunicipioRecord> muniDropDownMunicipioRecordList = snapshot.data!;
         return     FlutterFlowDropDown<String>(
      
      controller: _model.muniDropDownValueController ??= FormFieldController<String>(null),
      options:  muniDropDownMunicipioRecordList.map((e) => e.nombreMun).toList()  ,
      
      onChanged: (val) => setState(() => _model.muniDropDownValue = val),
      width: double.infinity  ,height: 50.0  ,
      
      searchHintTextStyle: FlutterFlowTheme.of(context).labelMedium.override(    fontFamily: 'Noto Sans Old Permic',
    
    
    letterSpacing: 0.0,
    
    
    
    
    
  ),
      searchTextStyle: FlutterFlowTheme.of(context).bodyMedium.override(    fontFamily: 'Readex Pro',
    
    
    letterSpacing: 0.0,
    
    
    
    
    
  ),
      textStyle: FlutterFlowTheme.of(context).bodyMedium.override(    fontFamily: 'Noto Sans Old Permic',
    color:  FlutterFlowTheme.of(context).secondaryText  ,
    
    letterSpacing: 0.0,
    fontWeight: FontWeight.bold,
    
    
    
    
  ),
      hintText: 'Selecciona la Alcaldía...'  ,
      searchHintText: 'Búsqueda por sub-categoría...'  ,
      
      icon:  Icon(
      
      Icons.keyboard_arrow_down_rounded,
      color: FlutterFlowTheme.of(context).secondaryText  ,
      size: 24.0  ,
    )  ,
      fillColor: FlutterFlowTheme.of(context).secondaryBackground  ,
      elevation: 2.0,
      borderColor: FlutterFlowTheme.of(context).alternate  ,
      borderWidth: 2.0,
      borderRadius: 8.0,
      margin: EdgeInsetsDirectional.fromSTEB(
       16.0,
       4.0,
       16.0,
       4.0
  ),
      hidesUnderline: true,
      
      isOverButton: true,
      isSearchable: true,
      isMultiSelect: false,
      
      
      
    )
    ;
      },
    )
    ,
           )
           ,
if (_model.muniDropDownValue != null && _model.muniDropDownValue != '') Padding(
             padding: EdgeInsetsDirectional.fromSTEB(
       0.0,
       0.0,
       0.0,
       20.0
  ),
             child: StreamBuilder<List<ColoniaRecord>>(
      stream: queryColoniaRecord(queryBuilder: (coloniaRecord) => coloniaRecord.where('referenciaMun', isEqualTo: _model.muniDropDownValue, ).orderBy('nombreCol'),),
      builder: (context, snapshot) {
        // Customize what your widget looks like when it's loading.
        if (!snapshot.hasData) {
          return Center(child: SizedBox(
          width: 50.0,
          height: 50.0,
          child: CircularProgressIndicator(valueColor: AlwaysStoppedAnimation<Color>(FlutterFlowTheme.of(context).primary,),),
        ),);
        }
        List<ColoniaRecord> coloniaDropDownColoniaRecordList = snapshot.data!;
         return     FlutterFlowDropDown<String>(
      
      controller: _model.coloniaDropDownValueController ??= FormFieldController<String>(null),
      options:  coloniaDropDownColoniaRecordList.map((e) => e.nombreCol).toList()  ,
      
      onChanged: (val) => setState(() => _model.coloniaDropDownValue = val),
      width: double.infinity  ,height: 50.0  ,
      
      searchHintTextStyle: FlutterFlowTheme.of(context).labelMedium.override(    fontFamily: 'Noto Sans Old Permic',
    
    
    letterSpacing: 0.0,
    
    
    
    
    
  ),
      searchTextStyle: FlutterFlowTheme.of(context).bodyMedium.override(    fontFamily: 'Readex Pro',
    
    
    letterSpacing: 0.0,
    
    
    
    
    
  ),
      textStyle: FlutterFlowTheme.of(context).bodyMedium.override(    fontFamily: 'Noto Sans Old Permic',
    color:  FlutterFlowTheme.of(context).secondaryText  ,
    
    letterSpacing: 0.0,
    fontWeight: FontWeight.bold,
    
    
    
    
  ),
      hintText: 'Selecciona la Colonia...'  ,
      searchHintText: 'Búsqueda por sub-categoría...'  ,
      
      icon:  Icon(
      
      Icons.keyboard_arrow_down_rounded,
      color: FlutterFlowTheme.of(context).secondaryText  ,
      size: 24.0  ,
    )  ,
      fillColor: FlutterFlowTheme.of(context).secondaryBackground  ,
      elevation: 2.0,
      borderColor: FlutterFlowTheme.of(context).alternate  ,
      borderWidth: 2.0,
      borderRadius: 8.0,
      margin: EdgeInsetsDirectional.fromSTEB(
       16.0,
       4.0,
       16.0,
       4.0
  ),
      hidesUnderline: true,
      
      isOverButton: true,
      isSearchable: true,
      isMultiSelect: false,
      
      
      
    )
    ;
      },
    )
    ,
           )
           ,
Padding(
             padding: EdgeInsetsDirectional.fromSTEB(
       0.0,
       10.0,
       0.0,
       0.0
  ),
             child: FFButtonWidget(
      
      onPressed:  () async {
await widget.userRef!.update(createPymeRecordData(nombrePyme: _model.namePymeTextController.text,nombreEncargado: _model.nameManagerTextController.text,numeroLocal: _model.numeroTextController1.text,numeroCel: _model.numeroTextController2.text,direccion: _model.ubicacionTextController.text,horarioApertura: _model.entradaTextController.text,horarioCierre: _model.salidaTextController.text,urlTiktok: _model.tiktokTextController.text,urlFacebook: _model.facebookTextController.text,urlInstagram: _model.instagramTextController.text,urlMaps: _model.mapsTextController.text,estadoPyme: _model.estadoDropDownValue,municipioPyme: _model.muniDropDownValue,categoriaPyme: _model.categoriaValue,coloniaPyme: _model.coloniaDropDownValue,subcatPyme: _model.subcategoriaValue,));
 ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
        content: Text(
          'Información actualizada!',
          style: TextStyle(      
      color: FlutterFlowTheme.of(context).primaryText,
      
      
      
      
      
    ),
        ),
        duration: Duration(milliseconds: 4000),
        backgroundColor: FlutterFlowTheme.of(context).secondary,
        
    ),
  );},
      text: 'Actualizar Pyme'  ,
      
      options: FFButtonOptions(
        
        height: 40.0  ,
        padding: EdgeInsetsDirectional.fromSTEB(
       24.0,
       0.0,
       24.0,
       0.0
  ),
        iconPadding: EdgeInsetsDirectional.fromSTEB(
       0.0,
       0.0,
       0.0,
       0.0
  ),
        color: Color(0xFF222C57)  ,
        textStyle: FlutterFlowTheme.of(context).titleSmall.override(    fontFamily: 'Noto Sans Old Permic',
    color:  Colors.white  ,
    
    letterSpacing: 0.0,
    
    
    
    
    
  ),
        elevation: 3.0  ,
        borderSide: BorderSide(
      color: Colors.transparent  ,
      width: 1.0  ,
    ),
        borderRadius: BorderRadius.circular( 8.0  ),
        
        
        
        
        
        
      ),
      
    ),
           )
           ,],
    );
              },
            ),
           )
           ,
    )
    ,
    ),
           )
           ,],
    ),
      ),
           )
           ,
      ),
    ),
)
;
  }

  
}
