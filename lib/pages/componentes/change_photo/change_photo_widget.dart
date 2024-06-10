import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/backend/firebase_storage/storage.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/upload_data.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
      import 'change_photo_model.dart';
      export 'change_photo_model.dart';
    
class ChangePhotoWidget extends StatefulWidget {
  const ChangePhotoWidget({super.key }) ;

  

  @override
  State<ChangePhotoWidget> createState() => _ChangePhotoWidgetState();
}

class _ChangePhotoWidgetState extends State<ChangePhotoWidget>  {
  late ChangePhotoModel _model;



@override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }


  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ChangePhotoModel());

    
    
  }


  @override
  void dispose() {
    _model.maybeDispose();

    
    super.dispose();
  }

  
  @override
  Widget build(BuildContext context) {
    
    return Padding(
             padding: EdgeInsetsDirectional.fromSTEB(
       0.0,
       60.0,
       0.0,
       0.0
  ),
             child: Container(
      
      width: MediaQuery.sizeOf(context).width * 1.0  ,height: 350.0  ,
      
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).secondaryBackground  ,
        
        
        
        borderRadius: BorderRadius.only(
      bottomLeft: Radius.circular( 0.0  ),
      bottomRight: Radius.circular( 0.0  ),
      topLeft: Radius.circular( 16.0  ),
      topRight: Radius.circular( 16.0  ),
    ),
        
        
      ),
    
      
      child: Padding(
             padding: EdgeInsets.all( 4.0),
             child: Column(
      
      mainAxisSize: MainAxisSize.max,
      
      
      children: [Expanded(
      
      child: Padding(
             padding: EdgeInsetsDirectional.fromSTEB(
       20.0,
       8.0,
       20.0,
       0.0
  ),
             child: SingleChildScrollView(
        
        
        
        child: Column(
      
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [Divider(
      
      
      thickness: 3.0,
      indent: 150.0,
      endIndent: 150.0,
      color: FlutterFlowTheme.of(context).primaryBackground  ,
    ),
Row(
      
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      
      children: [Expanded(
      
      child: Padding(
             padding: EdgeInsetsDirectional.fromSTEB(
       0.0,
       4.0,
       16.0,
       0.0
  ),
             child: Text(
      
       'Cambiar foto de perfil'  ,
      textAlign: TextAlign.start,
      
      style: FlutterFlowTheme.of(context).headlineMedium.override(    fontFamily: 'Poppins',
    
    fontSize: 20.0,
    letterSpacing: 0.0,
    fontWeight: FontWeight.bold,
    
    
    
    
  ),
      
      
    ),
           )
           ,
    )
    ,
FlutterFlowIconButton(
      
      
      borderRadius: 20.0  ,
      borderWidth: 1.0  ,
      buttonSize: 40.0  ,
      
      
      
      
      
      icon:  Icon(
      
      Icons.close_rounded,
      color: FlutterFlowTheme.of(context).secondaryText  ,
      size: 24.0  ,
    )  ,
      
      onPressed:  () async {context.safePop();},
    ),],
    ),
Row(
      
      mainAxisSize: MainAxisSize.max,
      
      
      children: [Expanded(
      
      child: Padding(
             padding: EdgeInsetsDirectional.fromSTEB(
       0.0,
       8.0,
       0.0,
       0.0
  ),
             child: Text(
      
       'Sube una nueva foto a continuación para cambiar tu avatar.'  ,
      
      
      style: FlutterFlowTheme.of(context).labelMedium.override(    fontFamily: 'Noto Sans Old Permic',
    
    fontSize: 16.0,
    letterSpacing: 0.0,
    
    
    
    
    
  ),
      
      
    ),
           )
           ,
    )
    ,],
    ),
Padding(
             padding: EdgeInsetsDirectional.fromSTEB(
       0.0,
       16.0,
       0.0,
       0.0
  ),
             child: Row(
      
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.center,
      
      children: [Container(
      
      width: 100.0  ,height: 100.0  ,
      
      decoration: BoxDecoration(
        color: Color(0xFFDBE2E7)  ,
        image: DecorationImage(
          fit: BoxFit.cover,
          
          image: Image.asset('assets/images/addImage@2x.png',).image,
        ),
        
        
        
        shape: BoxShape.circle,
        
      ),
    
      
      child: Stack(
      
      
      children: [Padding(
             padding: EdgeInsets.all( 4.0),
             child: AuthUserStreamWidget(builder: (context) => Container(
      
      width: 120.0  ,height: 120.0  ,
      clipBehavior: Clip.antiAlias,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
      ),
      child: CachedNetworkImage(fadeInDuration: Duration(milliseconds: 500),
      fadeOutDuration: Duration(milliseconds: 500),
      imageUrl:      
       currentUserPhoto  ,
      
      
      
      
       
       
    ),
    ),),
           )
           ,
Padding(
             padding: EdgeInsets.all( 4.0),
             child: Container(
      
      width: 120.0  ,height: 120.0  ,
      clipBehavior: Clip.antiAlias,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
      ),
      child: CachedNetworkImage(fadeInDuration: Duration(milliseconds: 500),
      fadeOutDuration: Duration(milliseconds: 500),
      imageUrl:      
       _model.uploadedFileUrl  ,
      
      fit: BoxFit.cover,
      
      
       
       
    ),
    ),
           )
           ,],
    ),
    ),],
    ),
           )
           ,
Padding(
             padding: EdgeInsetsDirectional.fromSTEB(
       0.0,
       24.0,
       0.0,
       44.0
  ),
             child: Row(
      
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      
      children: [FFButtonWidget(
      
      onPressed:  () async {        final selectedMedia = await selectMediaWithSourceBottomSheet(context: context,
          
          maxWidth: 100.00,
          maxHeight: 100.00,
          
          allowPhoto: true,
          
          
          
              
    
    
  )
          ;
    if (selectedMedia != null &&
        selectedMedia.every(
            (m) => validateFileFormat(m.storagePath, context))) {
      setState(() => _model.isDataUploading = true);
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
        
        _model.isDataUploading = false;
      }
      if (selectedUploadedFiles.length == selectedMedia.length&& downloadUrls.length == selectedMedia.length) {
        setState(() {
          _model.uploadedLocalFile = selectedUploadedFiles.first;
          _model.uploadedFileUrl = downloadUrls.first;
        });
        
      } else {
        setState(() {});
        return;
      }
    }
  },
      text: 'Upload Image'  ,
      
      options: FFButtonOptions(
        width: 150.0  ,
        height: 50.0  ,
        padding: EdgeInsetsDirectional.fromSTEB(
       0.0,
       0.0,
       0.0,
       0.0
  ),
        iconPadding: EdgeInsetsDirectional.fromSTEB(
       0.0,
       0.0,
       0.0,
       0.0
  ),
        color: FlutterFlowTheme.of(context).primaryBackground  ,
        textStyle: FlutterFlowTheme.of(context).labelMedium.override(    fontFamily: 'Readex Pro',
    
    
    letterSpacing: 0.0,
    
    
    
    
    
  ),
        elevation: 2.0  ,
        borderSide: BorderSide(
      color: Colors.transparent  ,
      width: 1.0  ,
    ),
        
        
        
        
        
        
        
      ),
      
    ),
FFButtonWidget(
      
      onPressed:  () async {
await currentUserReference!.update(createUserRecordData(photoUrl: _model.uploadedFileUrl,));
context.pop();},
      text: 'Save Changes'  ,
      
      options: FFButtonOptions(
        width: 150.0  ,
        height: 50.0  ,
        padding: EdgeInsetsDirectional.fromSTEB(
       0.0,
       0.0,
       0.0,
       0.0
  ),
        iconPadding: EdgeInsetsDirectional.fromSTEB(
       0.0,
       0.0,
       0.0,
       0.0
  ),
        color: Color(0xFF222C57)  ,
        textStyle: FlutterFlowTheme.of(context).titleSmall.override(    fontFamily: 'Lexend Deca',
    color:  Colors.white  ,
    fontSize: 16.0,
    letterSpacing: 0.0,
    fontWeight: FontWeight.normal,
    
    
    
    
  ),
        elevation: 2.0  ,
        borderSide: BorderSide(
      color: Colors.transparent  ,
      width: 1.0  ,
    ),
        
        
        
        
        
        
        
      ),
      
    ),],
    ),
           )
           ,],
    ),
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
           ;
  }

  
}
