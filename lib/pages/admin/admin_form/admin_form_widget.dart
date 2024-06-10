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
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';
import 'package:provider/provider.dart';
      import 'admin_form_model.dart';
      export 'admin_form_model.dart';
    
class AdminFormWidget extends StatefulWidget {
  const AdminFormWidget({super.key }) ;

  

  @override
  State<AdminFormWidget> createState() => _AdminFormWidgetState();
}

class _AdminFormWidgetState extends State<AdminFormWidget>  {
  late AdminFormModel _model;

final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AdminFormModel());

    _model.namePymeTextController ??= TextEditingController();
_model.namePymeFocusNode ??= FocusNode();

_model.nameManagerTextController ??= TextEditingController();
_model.nameManagerFocusNode ??= FocusNode();

_model.numeroTextController ??= TextEditingController();
_model.numeroFocusNode ??= FocusNode();

_model.numberTwoTextController ??= TextEditingController();
_model.numberTwoFocusNode ??= FocusNode();

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
    context.watch<FFAppState>();

    return GestureDetector(
  onTap: () =>
    _model.unfocusNode.canRequestFocus
      ? FocusScope.of(context).requestFocus(_model.unfocusNode)
      : FocusScope.of(context).unfocus(),
  child: Scaffold(
      key: scaffoldKey,
      
      backgroundColor: Colors.white  ,
      
      drawer: Drawer(
      
      elevation: 16.0,
      child: Padding(
             padding: EdgeInsetsDirectional.fromSTEB(
       0.0,
       0.0,
       1.0,
       0.0
  ),
             child: Container(
      
      width: 270.0  ,height: double.infinity  ,
      
      decoration: BoxDecoration(
        color: Colors.white  ,
        
        boxShadow: [    BoxShadow(
      
      color: Color(0x33000000)  ,
      offset: Offset( 1.0  , 0.0),
      
    )
  ],
        
        
        
        
      ),
    
      
      child: Padding(
             padding: EdgeInsets.all( 20.0),
             child: Column(
      
      mainAxisSize: MainAxisSize.max,
      
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [Padding(
             padding: EdgeInsetsDirectional.fromSTEB(
       0.0,
       20.0,
       0.0,
       35.0
  ),
             child: Row(
      
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.center,
      
      children: [ClipRRect(
              
              borderRadius: BorderRadius.circular( 16.0),
              child: Image.asset(      
      'assets/images/LOGOPRINCIPAL.png',
      width: 150.0  ,height: 70.0  ,
      fit: BoxFit.contain,
      
      
       
       
    ),
             ),],
    ),
           )
           ,
Padding(
             padding: EdgeInsetsDirectional.fromSTEB(
       0.0,
       0.0,
       0.0,
       12.0
  ),
             child: InkWell(
      splashColor: Colors.transparent,
      focusColor: Colors.transparent,
      hoverColor: Colors.transparent,
      highlightColor: Colors.transparent,
      onTap:  () async {    
    context.pushNamed(
      'adminHome'
      
      
      
      
      
    );
  },
      
      
      child: Container(
      
      width: double.infinity  ,
      
      decoration: BoxDecoration(
        color: Colors.white  ,
        
        
        
        borderRadius: BorderRadius.circular( 8.0  ),
        
        
      ),
    
      
      child: Padding(
             padding: EdgeInsets.all( 8.0),
             child: Row(
      
      mainAxisSize: MainAxisSize.max,
      
      
      children: [ Icon(
      
      Icons.home_rounded,
      color: Color(0xFF222C57)  ,
      size: 24.0  ,
    )  ,
Padding(
             padding: EdgeInsetsDirectional.fromSTEB(
       12.0,
       0.0,
       0.0,
       0.0
  ),
             child: Text(
      
       'Inicio'  ,
      
      
      style: FlutterFlowTheme.of(context).bodyLarge.override(    fontFamily: 'Noto Sans Old Permic',
    
    
    letterSpacing: 0.0,
    
    
    
    
    
  ),
      
      
    ),
           )
           ,],
    ),
           )
           ,
    ),
    )
    ,
           )
           ,
Padding(
             padding: EdgeInsetsDirectional.fromSTEB(
       0.0,
       0.0,
       0.0,
       12.0
  ),
             child: InkWell(
      splashColor: Colors.transparent,
      focusColor: Colors.transparent,
      hoverColor: Colors.transparent,
      highlightColor: Colors.transparent,
      onTap:  () async {    
    context.pushNamed(
      'adminStates'
      
      
      
      
      
    );
  },
      
      
      child: Container(
      
      width: double.infinity  ,
      
      decoration: BoxDecoration(
        color: Colors.white  ,
        
        
        
        borderRadius: BorderRadius.circular( 8.0  ),
        
        
      ),
    
      
      child: Padding(
             padding: EdgeInsets.all( 8.0),
             child: Row(
      
      mainAxisSize: MainAxisSize.max,
      
      
      children: [ Icon(
      
      Icons.share_location,
      color: Color(0xFF222C57)  ,
      size: 24.0  ,
    )  ,
Padding(
             padding: EdgeInsetsDirectional.fromSTEB(
       12.0,
       0.0,
       0.0,
       0.0
  ),
             child: Text(
      
       'Estados'  ,
      
      
      style: FlutterFlowTheme.of(context).bodyLarge.override(    fontFamily: 'Noto Sans Old Permic',
    
    
    letterSpacing: 0.0,
    
    
    
    
    
  ),
      
      
    ),
           )
           ,],
    ),
           )
           ,
    ),
    )
    ,
           )
           ,
Padding(
             padding: EdgeInsetsDirectional.fromSTEB(
       0.0,
       0.0,
       0.0,
       12.0
  ),
             child: InkWell(
      splashColor: Colors.transparent,
      focusColor: Colors.transparent,
      hoverColor: Colors.transparent,
      highlightColor: Colors.transparent,
      onTap:  () async {    
    context.pushNamed(
      'adminCategory'
      
      
      
      
      
    );
  },
      
      
      child: Container(
      
      width: double.infinity  ,
      
      decoration: BoxDecoration(
        color: Colors.white  ,
        
        
        
        borderRadius: BorderRadius.circular( 8.0  ),
        
        
      ),
    
      
      child: Padding(
             padding: EdgeInsets.all( 8.0),
             child: Row(
      
      mainAxisSize: MainAxisSize.max,
      
      
      children: [ Icon(
      
      Icons.business_rounded,
      color: Color(0xFF222C57)  ,
      size: 24.0  ,
    )  ,
Padding(
             padding: EdgeInsetsDirectional.fromSTEB(
       12.0,
       0.0,
       0.0,
       0.0
  ),
             child: Text(
      
       'Categorías'  ,
      
      
      style: FlutterFlowTheme.of(context).bodyLarge.override(    fontFamily: 'Noto Sans Old Permic',
    
    
    letterSpacing: 0.0,
    
    
    
    
    
  ),
      
      
    ),
           )
           ,],
    ),
           )
           ,
    ),
    )
    ,
           )
           ,
Padding(
             padding: EdgeInsetsDirectional.fromSTEB(
       0.0,
       0.0,
       0.0,
       12.0
  ),
             child: InkWell(
      splashColor: Colors.transparent,
      focusColor: Colors.transparent,
      hoverColor: Colors.transparent,
      highlightColor: Colors.transparent,
      onTap:  () async {    
    context.pushNamed(
      'adminAdd'
      
      
      
      
      
    );
  },
      
      
      child: Container(
      
      width: double.infinity  ,
      
      decoration: BoxDecoration(
        color: Colors.white  ,
        
        
        
        borderRadius: BorderRadius.circular( 8.0  ),
        
        
      ),
    
      
      child: Padding(
             padding: EdgeInsets.all( 8.0),
             child: Row(
      
      mainAxisSize: MainAxisSize.max,
      
      
      children: [ Icon(
      
      Icons.add_business_rounded,
      color: Color(0xFF222C57)  ,
      size: 24.0  ,
    )  ,
Padding(
             padding: EdgeInsetsDirectional.fromSTEB(
       12.0,
       0.0,
       0.0,
       0.0
  ),
             child: Text(
      
       'Agregar pyme'  ,
      
      
      style: FlutterFlowTheme.of(context).bodyLarge.override(    fontFamily: 'Noto Sans Old Permic',
    
    
    letterSpacing: 0.0,
    
    
    
    
    
  ),
      
      
    ),
           )
           ,],
    ),
           )
           ,
    ),
    )
    ,
           )
           ,
Padding(
             padding: EdgeInsetsDirectional.fromSTEB(
       0.0,
       0.0,
       0.0,
       12.0
  ),
             child: InkWell(
      splashColor: Colors.transparent,
      focusColor: Colors.transparent,
      hoverColor: Colors.transparent,
      highlightColor: Colors.transparent,
      onTap:  () async {    
    context.pushNamed(
      'adminForm'
      
      
      
      
      
    );
  },
      
      
      child: Container(
      
      width: double.infinity  ,
      
      decoration: BoxDecoration(
        color: Colors.white  ,
        
        
        
        borderRadius: BorderRadius.circular( 8.0  ),
        
        
      ),
    
      
      child: Padding(
             padding: EdgeInsets.all( 8.0),
             child: Row(
      
      mainAxisSize: MainAxisSize.max,
      
      
      children: [ Icon(
      
      Icons.border_color_sharp,
      color: Color(0xFF222C57)  ,
      size: 24.0  ,
    )  ,
Padding(
             padding: EdgeInsetsDirectional.fromSTEB(
       12.0,
       0.0,
       0.0,
       0.0
  ),
             child: Text(
      
       'Modificar pyme'  ,
      
      
      style: FlutterFlowTheme.of(context).bodyLarge.override(    fontFamily: 'Noto Sans Old Permic',
    
    
    letterSpacing: 0.0,
    
    
    
    
    
  ),
      
      
    ),
           )
           ,],
    ),
           )
           ,
    ),
    )
    ,
           )
           ,
Divider(
      
      
      thickness: 2.0,
      
      
      color: FlutterFlowTheme.of(context).accent4  ,
    ),
Padding(
             padding: EdgeInsetsDirectional.fromSTEB(
       0.0,
       0.0,
       0.0,
       12.0
  ),
             child: InkWell(
      splashColor: Colors.transparent,
      focusColor: Colors.transparent,
      hoverColor: Colors.transparent,
      highlightColor: Colors.transparent,
      onTap:  () async {GoRouter.of(context).prepareAuthEvent();
await authManager.signOut();
GoRouter.of(context).clearRedirectLocation();

    
    context.goNamedAuth(
      'pageHome',
      context.mounted
      
      
      
      
    );
  },
      
      
      child: Container(
      
      width: double.infinity  ,
      
      decoration: BoxDecoration(
        color: Colors.white  ,
        
        
        
        borderRadius: BorderRadius.circular( 8.0  ),
        
        
      ),
    
      
      child: Padding(
             padding: EdgeInsets.all( 8.0),
             child: Row(
      
      mainAxisSize: MainAxisSize.max,
      
      
      children: [ Icon(
      
      Icons.logout_rounded,
      color: Color(0xFF222C57)  ,
      size: 24.0  ,
    )  ,
Padding(
             padding: EdgeInsetsDirectional.fromSTEB(
       12.0,
       0.0,
       0.0,
       0.0
  ),
             child: Text(
      
       'Cerrar sesión'  ,
      
      
      style: FlutterFlowTheme.of(context).bodyLarge.override(    fontFamily: 'Noto Sans Old Permic',
    
    
    letterSpacing: 0.0,
    
    
    
    
    
  ),
      
      
    ),
           )
           ,],
    ),
           )
           ,
    ),
    )
    ,
           )
           ,],
    ),
           )
           ,
    ),
           )
           ,
    ),
      
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
      
       'Agregar pyme'  ,
      
      
      style: FlutterFlowTheme.of(context).displaySmall.override(    fontFamily: 'Poppins',
    color:  Color(0xFFF1F4F8)  ,
    
    letterSpacing: 0.0,
    fontWeight: FontWeight.w600,
    
    
    
    
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
             child: Column(
      
      mainAxisSize: MainAxisSize.max,
      
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [Padding(
             padding: EdgeInsetsDirectional.fromSTEB(
       0.0,
       0.0,
       0.0,
       20.0
  ),
             child: StreamBuilder<List<UserRecord>>(
      stream: queryUserRecord(queryBuilder: (userRecord) => userRecord.where('isPyme', isEqualTo: true, ),),
      builder: (context, snapshot) {
        // Customize what your widget looks like when it's loading.
        if (!snapshot.hasData) {
          return Center(child: SizedBox(
          width: 50.0,
          height: 50.0,
          child: CircularProgressIndicator(valueColor: AlwaysStoppedAnimation<Color>(FlutterFlowTheme.of(context).primary,),),
        ),);
        }
        List<UserRecord> dropDownUserRecordList = snapshot.data!;
         return     FlutterFlowDropDown<String>(
      
      controller: _model.dropDownValueController ??= FormFieldController<String>(null),
      options:  dropDownUserRecordList.map((e) => e.email).toList()  ,
      
      onChanged: (val) => setState(() => _model.dropDownValue = val),
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
      hintText: 'Selecciona la cuenta de Pyme...'  ,
      searchHintText: 'Búsqueda por correo...'  ,
      
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
      
      searchHintTextStyle: FlutterFlowTheme.of(context).labelMedium.override(    fontFamily: 'Readex Pro',
    
    
    letterSpacing: 0.0,
    
    
    
    
    
  ),
      searchTextStyle: FlutterFlowTheme.of(context).bodyMedium.override(    fontFamily: 'Readex Pro',
    
    
    letterSpacing: 0.0,
    
    
    
    
    
  ),
      textStyle: FlutterFlowTheme.of(context).bodySmall.override(    fontFamily: 'Noto Sans Old Permic',
    color:  FlutterFlowTheme.of(context).secondaryText  ,
    fontSize: 14.0,
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
      
      searchHintTextStyle: FlutterFlowTheme.of(context).labelMedium.override(    fontFamily: 'Readex Pro',
    
    
    letterSpacing: 0.0,
    
    
    
    
    
  ),
      searchTextStyle: FlutterFlowTheme.of(context).bodyMedium.override(    fontFamily: 'Readex Pro',
    
    
    letterSpacing: 0.0,
    
    
    
    
    
  ),
      textStyle: FlutterFlowTheme.of(context).bodySmall.override(    fontFamily: 'Noto Sans Old Permic',
    color:  FlutterFlowTheme.of(context).secondaryText  ,
    fontSize: 14.0,
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
Container(
      
      width: double.infinity  ,height: 150.0  ,
      
      decoration: BoxDecoration(
        color: Color(0xFFEEEEEE)  ,
        
        
        
        borderRadius: BorderRadius.circular( 16.0  ),
        
        
      ),
    
      
      child: InkWell(
      splashColor: Colors.transparent,
      focusColor: Colors.transparent,
      hoverColor: Colors.transparent,
      highlightColor: Colors.transparent,
      onTap:  () async {        final selectedMedia = await selectMediaWithSourceBottomSheet(context: context,
          
          
          
          
          allowPhoto: true,
          
          
          
              
    
    
  )
          ;
    if (selectedMedia != null &&
        selectedMedia.every(
            (m) => validateFileFormat(m.storagePath, context))) {
      setState(() => _model.isDataUploading1 = true);
      var selectedUploadedFiles = <FFUploadedFile>[];
      
      var downloadUrls = <String>[];
      try {
        
        selectedUploadedFiles = selectedMedia.map(
    (m) => FFUploadedFile(
      name: m.storagePath.split('/').last,
      bytes: m.bytes,
      height: m.dimensions?.height,
      width: m.dimensions?.width,
      blurHash: m.blurHash,
    )
  ).toList();
  
        downloadUrls =     (await Future.wait(selectedMedia.map(
            (m) async => await uploadData(m.storagePath, m.bytes),),))
            .where((u) => u != null)
            .map((u) => u!)
            .toList();
  
      } finally {
        
        _model.isDataUploading1 = false;
      }
      if (selectedUploadedFiles.length == selectedMedia.length&& downloadUrls.length == selectedMedia.length) {
        setState(() {
          _model.uploadedLocalFile1 = selectedUploadedFiles.first;
          _model.uploadedFileUrl1 = downloadUrls.first;
        });
        
      } else {
        setState(() {});
        return;
      }
    }
  
setState(() { FFAppState().img = _model.uploadedFileUrl1; } );
await Navigator.push(
    context,
    PageTransition(
      type: PageTransitionType.fade,
      child: FlutterFlowExpandedImageView(
        image: Image.network(      
       FFAppState().img  ,
      
      fit: BoxFit.contain,
      
          errorBuilder: (context, error, stackTrace) =>
          Image.asset(
            'assets/images/error_image.png',
             
             fit: BoxFit.contain,
             
            ),
    
       
       
    ),
        allowRotation: false,
        tag:  FFAppState().img  ,
        useHeroAnimation: true,
      ),
    ),
  );},
      
      
      child: Hero(tag:  FFAppState().img  , transitionOnUserGestures: true, child: ClipRRect(
              
              borderRadius: BorderRadius.circular( 16.0),
              child: Image.network(      
       FFAppState().img  ,
      width: double.infinity  ,height: 100.0  ,
      fit: BoxFit.contain,
      
          errorBuilder: (context, error, stackTrace) =>
          Image.asset(
            'assets/images/error_image.png',
             width: double.infinity  ,height: 100.0  ,
             fit: BoxFit.contain,
             
            ),
    
       
       
    ),
             ),),
    )
    ,
    ),
Padding(
             padding: EdgeInsetsDirectional.fromSTEB(
       0.0,
       16.0,
       0.0,
       0.0
  ),
             child: Container(
      
      width: double.infinity  ,height: 150.0  ,
      
      decoration: BoxDecoration(
        color: Color(0xFFEEEEEE)  ,
        
        
        
        borderRadius: BorderRadius.circular( 16.0  ),
        
        
      ),
    
      
      child: InkWell(
      splashColor: Colors.transparent,
      focusColor: Colors.transparent,
      hoverColor: Colors.transparent,
      highlightColor: Colors.transparent,
      onTap:  () async {        final selectedMedia = await selectMediaWithSourceBottomSheet(context: context,
          
          
          
          
          allowPhoto: true,
          
          
          
              
    
    
  )
          ;
    if (selectedMedia != null &&
        selectedMedia.every(
            (m) => validateFileFormat(m.storagePath, context))) {
      setState(() => _model.isDataUploading2 = true);
      var selectedUploadedFiles = <FFUploadedFile>[];
      
      var downloadUrls = <String>[];
      try {
        
        selectedUploadedFiles = selectedMedia.map(
    (m) => FFUploadedFile(
      name: m.storagePath.split('/').last,
      bytes: m.bytes,
      height: m.dimensions?.height,
      width: m.dimensions?.width,
      blurHash: m.blurHash,
    )
  ).toList();
  
        downloadUrls =     (await Future.wait(selectedMedia.map(
            (m) async => await uploadData(m.storagePath, m.bytes),),))
            .where((u) => u != null)
            .map((u) => u!)
            .toList();
  
      } finally {
        
        _model.isDataUploading2 = false;
      }
      if (selectedUploadedFiles.length == selectedMedia.length&& downloadUrls.length == selectedMedia.length) {
        setState(() {
          _model.uploadedLocalFile2 = selectedUploadedFiles.first;
          _model.uploadedFileUrl2 = downloadUrls.first;
        });
        
      } else {
        setState(() {});
        return;
      }
    }
  
setState(() { FFAppState().img2 = _model.uploadedFileUrl2; } );
await Navigator.push(
    context,
    PageTransition(
      type: PageTransitionType.fade,
      child: FlutterFlowExpandedImageView(
        image: Image.network(      
       FFAppState().img2  ,
      
      fit: BoxFit.contain,
      
          errorBuilder: (context, error, stackTrace) =>
          Image.asset(
            'assets/images/error_image.png',
             
             fit: BoxFit.contain,
             
            ),
    
       
       
    ),
        allowRotation: false,
        tag:  FFAppState().img2  ,
        useHeroAnimation: true,
      ),
    ),
  );},
      
      
      child: Hero(tag:  FFAppState().img2  , transitionOnUserGestures: true, child: ClipRRect(
              
              borderRadius: BorderRadius.circular( 16.0),
              child: Image.network(      
       FFAppState().img2  ,
      width: double.infinity  ,height: 100.0  ,
      fit: BoxFit.contain,
      
          errorBuilder: (context, error, stackTrace) =>
          Image.asset(
            'assets/images/error_image.png',
             width: double.infinity  ,height: 100.0  ,
             fit: BoxFit.contain,
             
            ),
    
       
       
    ),
             ),),
    )
    ,
    ),
           )
           ,
Padding(
             padding: EdgeInsetsDirectional.fromSTEB(
       0.0,
       16.0,
       0.0,
       0.0
  ),
             child: Container(
      
      width: double.infinity  ,height: 150.0  ,
      
      decoration: BoxDecoration(
        color: Color(0xFFEEEEEE)  ,
        
        
        
        borderRadius: BorderRadius.circular( 16.0  ),
        
        
      ),
    
      
      child: InkWell(
      splashColor: Colors.transparent,
      focusColor: Colors.transparent,
      hoverColor: Colors.transparent,
      highlightColor: Colors.transparent,
      onTap:  () async {        final selectedMedia = await selectMediaWithSourceBottomSheet(context: context,
          
          
          
          
          allowPhoto: true,
          
          
          
              
    
    
  )
          ;
    if (selectedMedia != null &&
        selectedMedia.every(
            (m) => validateFileFormat(m.storagePath, context))) {
      setState(() => _model.isDataUploading3 = true);
      var selectedUploadedFiles = <FFUploadedFile>[];
      
      var downloadUrls = <String>[];
      try {
        
        selectedUploadedFiles = selectedMedia.map(
    (m) => FFUploadedFile(
      name: m.storagePath.split('/').last,
      bytes: m.bytes,
      height: m.dimensions?.height,
      width: m.dimensions?.width,
      blurHash: m.blurHash,
    )
  ).toList();
  
        downloadUrls =     (await Future.wait(selectedMedia.map(
            (m) async => await uploadData(m.storagePath, m.bytes),),))
            .where((u) => u != null)
            .map((u) => u!)
            .toList();
  
      } finally {
        
        _model.isDataUploading3 = false;
      }
      if (selectedUploadedFiles.length == selectedMedia.length&& downloadUrls.length == selectedMedia.length) {
        setState(() {
          _model.uploadedLocalFile3 = selectedUploadedFiles.first;
          _model.uploadedFileUrl3 = downloadUrls.first;
        });
        
      } else {
        setState(() {});
        return;
      }
    }
  
setState(() { FFAppState().img3 = _model.uploadedFileUrl3; } );
await Navigator.push(
    context,
    PageTransition(
      type: PageTransitionType.fade,
      child: FlutterFlowExpandedImageView(
        image: Image.network(      
       FFAppState().img3  ,
      
      fit: BoxFit.contain,
      
          errorBuilder: (context, error, stackTrace) =>
          Image.asset(
            'assets/images/error_image.png',
             
             fit: BoxFit.contain,
             
            ),
    
       
       
    ),
        allowRotation: false,
        tag:  FFAppState().img3  ,
        useHeroAnimation: true,
      ),
    ),
  );},
      
      
      child: Hero(tag:  FFAppState().img3  , transitionOnUserGestures: true, child: ClipRRect(
              
              borderRadius: BorderRadius.circular( 16.0),
              child: Image.network(      
       FFAppState().img3  ,
      width: double.infinity  ,height: 100.0  ,
      fit: BoxFit.contain,
      
          errorBuilder: (context, error, stackTrace) =>
          Image.asset(
            'assets/images/error_image.png',
             width: double.infinity  ,height: 100.0  ,
             fit: BoxFit.contain,
             
            ),
    
       
       
    ),
             ),),
    )
    ,
    ),
           )
           ,
Padding(
             padding: EdgeInsetsDirectional.fromSTEB(
       0.0,
       16.0,
       0.0,
       26.0
  ),
             child: Container(
      
      width: double.infinity  ,height: 100.0  ,
      
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).secondaryBackground  ,
        
        
        
        borderRadius: BorderRadius.circular( 16.0  ),
        
        
      ),
    
      
      child: InkWell(
      splashColor: Colors.transparent,
      focusColor: Colors.transparent,
      hoverColor: Colors.transparent,
      highlightColor: Colors.transparent,
      onTap:  () async {        final selectedMedia = await selectMediaWithSourceBottomSheet(context: context,
          
          
          
          
          allowPhoto: false,
          allowVideo: true,
          
          
              
    
    
  )
          ;
    if (selectedMedia != null &&
        selectedMedia.every(
            (m) => validateFileFormat(m.storagePath, context))) {
      setState(() => _model.isDataUploading4 = true);
      var selectedUploadedFiles = <FFUploadedFile>[];
      
      var downloadUrls = <String>[];
      try {
        
        selectedUploadedFiles = selectedMedia.map(
    (m) => FFUploadedFile(
      name: m.storagePath.split('/').last,
      bytes: m.bytes,
      height: m.dimensions?.height,
      width: m.dimensions?.width,
      blurHash: m.blurHash,
    )
  ).toList();
  
        downloadUrls =     (await Future.wait(selectedMedia.map(
            (m) async => await uploadData(m.storagePath, m.bytes),),))
            .where((u) => u != null)
            .map((u) => u!)
            .toList();
  
      } finally {
        
        _model.isDataUploading4 = false;
      }
      if (selectedUploadedFiles.length == selectedMedia.length&& downloadUrls.length == selectedMedia.length) {
        setState(() {
          _model.uploadedLocalFile4 = selectedUploadedFiles.first;
          _model.uploadedFileUrl4 = downloadUrls.first;
        });
        
      } else {
        setState(() {});
        return;
      }
    }
  
setState(() { FFAppState().video = _model.uploadedFileUrl4;
FFAppState().img4 = _model.uploadedFileUrl4; } );},
      
      
      child: ClipRRect(
              
              borderRadius: BorderRadius.circular( 8.0),
              child: Image.asset(      
      'assets/images/LOGO-ICON.png',
      width: 300.0  ,height: 200.0  ,
      fit: BoxFit.contain,
      
      
       
       
    ),
             ),
    )
    ,
    ),
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
    
    
    letterSpacing: 0.0,
    
    
    
    
    
  ),
    
    hintText: 'Ingresa el nombre de la Pyme...'  ,
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
    
    labelText: 'Descripción...'  ,
    labelStyle: FlutterFlowTheme.of(context).labelLarge.override(    fontFamily: 'Noto Sans Old Permic',
    
    
    letterSpacing: 0.0,
    
    
    
    
    
  ),
    
    hintText: 'Ingresa una descripción...'  ,
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
      
      maxLines: 10  ,
      
      
      
      
      
      
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
      
      
      controller: _model.numeroTextController ,
      focusNode: _model.numeroFocusNode,
      
      
      
      autofocus: false  ,
      
      
      
      
      obscureText: false,
      decoration: InputDecoration(
    
    labelText: 'Teléfono Local'  ,
    labelStyle: FlutterFlowTheme.of(context).labelLarge.override(    fontFamily: 'Noto Sans Old Permic',
    
    
    letterSpacing: 0.0,
    
    
    
    
    
  ),
    
    
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
      
      
      
      
      
      
      keyboardType: TextInputType.number,
      
      validator: _model.numeroTextControllerValidator.asValidator(context),
      
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
      
      
      controller: _model.numberTwoTextController ,
      focusNode: _model.numberTwoFocusNode,
      
      
      
      autofocus: false  ,
      
      
      
      
      obscureText: false,
      decoration: InputDecoration(
    
    labelText: 'Teléfono Celular'  ,
    labelStyle: FlutterFlowTheme.of(context).labelMedium.override(    fontFamily: 'Noto Sans Old Permic',
    
    fontSize: 16.0,
    letterSpacing: 0.0,
    
    
    
    
    
  ),
    
    
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
       0.0,
       0.0,
       0.0
  ),
    
    
  ),
      style: FlutterFlowTheme.of(context).bodyMedium.override(    fontFamily: 'Noto Sans Old Permic',
    
    
    letterSpacing: 0.0,
    
    
    
    
    
  ),
      
      
      
      
      
      
      keyboardType: TextInputType.number,
      
      validator: _model.numberTwoTextControllerValidator.asValidator(context),
      
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
    
    hintText: 'Dirección de la Pyme....'  ,
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
    
    hintText: 'Lunes a Viernes...'  ,
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
    
    hintText: 'Sábado y Domingo...'  ,
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
       0.0,
       0.0,
       0.0
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
       0.0,
       0.0,
       0.0
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
       0.0,
       0.0,
       0.0
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
       0.0,
       0.0,
       0.0
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
      
      
      
      textStyle: FlutterFlowTheme.of(context).bodySmall.override(    fontFamily: 'Noto Sans Old Permic',
    color:  FlutterFlowTheme.of(context).secondaryText  ,
    fontSize: 14.0,
    letterSpacing: 0.0,
    fontWeight: FontWeight.bold,
    
    
    
    
  ),
      hintText: 'Seleeciona el Estado...'  ,
      
      
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
      isSearchable: false,
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
      
      
      
      textStyle: FlutterFlowTheme.of(context).bodySmall.override(    fontFamily: 'Noto Sans Old Permic',
    color:  FlutterFlowTheme.of(context).secondaryText  ,
    fontSize: 14.0,
    letterSpacing: 0.0,
    fontWeight: FontWeight.bold,
    
    
    
    
  ),
      hintText: 'Selecciona el Alcaldía...'  ,
      
      
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
      isSearchable: false,
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
      
      
      
      textStyle: FlutterFlowTheme.of(context).bodySmall.override(    fontFamily: 'Noto Sans Old Permic',
    color:  FlutterFlowTheme.of(context).secondaryText  ,
    fontSize: 14.0,
    letterSpacing: 0.0,
    fontWeight: FontWeight.bold,
    
    
    
    
  ),
      hintText: 'Selecciona la Colonia...'  ,
      
      
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
      isSearchable: false,
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
await PymeRecord.collection.doc().set(createPymeRecordData(imagen2: _model.uploadedFileUrl2,imagen3: _model.uploadedFileUrl3,video: _model.uploadedFileUrl4,nombrePyme: _model.namePymeTextController.text,nombreEncargado: _model.nameManagerTextController.text,numeroLocal: _model.numeroTextController.text,numeroCel: _model.numberTwoTextController.text,direccion: _model.ubicacionTextController.text,horarioApertura: _model.entradaTextController.text,horarioCierre: _model.salidaTextController.text,urlTiktok: _model.tiktokTextController.text,urlFacebook: _model.facebookTextController.text,urlInstagram: _model.instagramTextController.text,estadoPyme: _model.estadoDropDownValue,municipioPyme: _model.muniDropDownValue,coloniaPyme: _model.coloniaDropDownValue,subcatPyme: _model.subcategoriaValue,userRef: currentUserReference,urlTwitter: _model.mapsTextController.text,imagen1: _model.uploadedFileUrl1,));
setState(() { _model.nameManagerTextController?.clear();
 _model.numeroTextController?.clear();
 _model.salidaTextController?.clear();
 _model.tiktokTextController?.clear();
 _model.namePymeTextController?.clear();
 _model.numberTwoTextController?.clear();
 _model.entradaTextController?.clear();
 _model.mapsTextController?.clear();
 _model.ubicacionTextController?.clear();
 _model.facebookTextController?.clear();
 _model.instagramTextController?.clear();
});
await showDialog(
            context: context,
            builder: (alertDialogContext) {
              return AlertDialog(
                
                content: Text('Información de ${_model.dropDownValue} cargada exitosamente!'),
                actions: [
                  TextButton(
                    onPressed: () => Navigator.pop(alertDialogContext),
                    child: Text('Ok'),
                  ),
                ],
              );
            },
          );
    
    context.pushNamed(
      'adminHome',
      
      
      
      extra: <String, dynamic>{kTransitionInfoKey: TransitionInfo(
  hasTransition: true,
  transitionType: PageTransitionType.fade,
  
  duration: Duration(milliseconds: 0),
)
,},
      
    );
  },
      text: 'Crear Pyme'  ,
      
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
