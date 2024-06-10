import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
      import 'signup1_model.dart';
      export 'signup1_model.dart';
    
class Signup1Widget extends StatefulWidget {
  const Signup1Widget({super.key }) ;

  

  @override
  State<Signup1Widget> createState() => _Signup1WidgetState();
}

class _Signup1WidgetState extends State<Signup1Widget>  {
  late Signup1Model _model;

final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => Signup1Model());

    _model.textController1 ??= TextEditingController();
_model.textFieldFocusNode1 ??= FocusNode();

_model.textController2 ??= TextEditingController();
_model.textFieldFocusNode2 ??= FocusNode();

_model.textController3 ??= TextEditingController();
_model.textFieldFocusNode3 ??= FocusNode();

    
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
      
      backgroundColor: FlutterFlowTheme.of(context).primaryBackground  ,
      
      
      
      body: Container(
      
      width: double.infinity  ,height: double.infinity  ,
      
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).secondaryBackground  ,
        
        
        
        
        
        
      ),
    
      
      child: Column(
      
      mainAxisSize: MainAxisSize.max,
      
      
      children: [Align(
      alignment: AlignmentDirectional( -1.0  ,  0.0  ),
      child: Padding(
             padding: EdgeInsetsDirectional.fromSTEB(
       20.0,
       30.0,
       0.0,
       0.0
  ),
             child: InkWell(
      splashColor: Colors.transparent,
      focusColor: Colors.transparent,
      hoverColor: Colors.transparent,
      highlightColor: Colors.transparent,
      onTap:  () async {context.safePop();},
      
      
      child:  Icon(
      
      Icons.arrow_back,
      color: FlutterFlowTheme.of(context).primaryText  ,
      size: 35.0  ,
    )  ,
    )
    ,
           )
           ,
    )
    ,
Align(
      alignment: AlignmentDirectional( 0.0  ,  0.0  ),
      child: Padding(
             padding: EdgeInsetsDirectional.fromSTEB(
       0.0,
       60.0,
       0.0,
       0.0
  ),
             child: Row(
      
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.center,
      
      children: [Padding(
             padding: EdgeInsetsDirectional.fromSTEB(
       20.0,
       0.0,
       10.0,
       0.0
  ),
             child:  Icon(
      
      Icons.circle,
      color: Color(0xFFFF3535)  ,
      size: 24.0  ,
    )  ,
           )
           ,
Padding(
             padding: EdgeInsetsDirectional.fromSTEB(
       10.0,
       0.0,
       10.0,
       0.0
  ),
             child:  FaIcon(
        
        FontAwesomeIcons.solidCircle,
        color: Color(0xFFFF3535)  ,
        size: 24.0  ,
      )  ,
           )
           ,
Padding(
             padding: EdgeInsetsDirectional.fromSTEB(
       10.0,
       0.0,
       10.0,
       0.0
  ),
             child:  Icon(
      
      Icons.circle,
      color: Color(0xFFFF3535)  ,
      size: 24.0  ,
    )  ,
           )
           ,],
    ),
           )
           ,
    )
    ,
Padding(
             padding: EdgeInsetsDirectional.fromSTEB(
       0.0,
       70.0,
       0.0,
       0.0
  ),
             child: Row(
      
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [ClipRRect(
              
              borderRadius: BorderRadius.circular( 8.0),
              child: Image.asset(      
      'assets/images/LOGOPRINCIPAL.png',
      width: 300.0  ,height: 100.0  ,
      fit: BoxFit.contain,
      
      
       
       
    ),
             ),],
    ),
           )
           ,
Padding(
             padding: EdgeInsetsDirectional.fromSTEB(
       0.0,
       40.0,
       0.0,
       0.0
  ),
             child: Row(
      
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.center,
      
      children: [Padding(
             padding: EdgeInsetsDirectional.fromSTEB(
       12.0,
       0.0,
       12.0,
       12.0
  ),
             child: Container(
      
      width: MediaQuery.sizeOf(context).width * 0.9  ,
      
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).secondaryBackground  ,
        
        
        
        
        
        
      ),
    
      
      child: Column(
      
      mainAxisSize: MainAxisSize.max,
      
      
      children: [Padding(
             padding: EdgeInsetsDirectional.fromSTEB(
       8.0,
       10.0,
       8.0,
       8.0
  ),
             child: TextFormField(
      
      
      controller: _model.textController1 ,
      focusNode: _model.textFieldFocusNode1,
      
      
      
      autofocus: true  ,
       autofillHints: [AutofillHints.email],
      
      
      
      obscureText: false,
      decoration: InputDecoration(
    
    labelText: 'Correo electrónico'  ,
    labelStyle: FlutterFlowTheme.of(context).labelMedium.override(    fontFamily: 'Noto Sans Old Permic',
    
    fontSize: 16.0,
    letterSpacing: 0.0,
    
    
    
    
    
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
    contentPadding: EdgeInsets.all( 24.0),
    
    
  ),
      style: FlutterFlowTheme.of(context).bodyMedium.override(    fontFamily: 'Noto Sans Old Permic',
    
    
    letterSpacing: 0.0,
    
    
    
    
    
  ),
      
      
      
      
      
      
      
      
      validator: _model.textController1Validator.asValidator(context),
      
    ),
           )
           ,
Padding(
             padding: EdgeInsetsDirectional.fromSTEB(
       8.0,
       10.0,
       8.0,
       8.0
  ),
             child: TextFormField(
      
      
      controller: _model.textController2 ,
      focusNode: _model.textFieldFocusNode2,
      
      
      
      autofocus: true  ,
       autofillHints: [AutofillHints.password],
      
      
      
      obscureText: !_model.passwordVisibility1,
      decoration: InputDecoration(
    
    labelText: 'Contraseña'  ,
    labelStyle: FlutterFlowTheme.of(context).labelMedium.override(    fontFamily: 'Noto Sans Old Permic',
    
    fontSize: 16.0,
    letterSpacing: 0.0,
    
    
    
    
    
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
    contentPadding: EdgeInsets.all( 24.0),
    
          suffixIcon: InkWell(
        onTap: () => setState(
          () => _model.passwordVisibility1 = !_model.passwordVisibility1,
        ),
        focusNode: FocusNode(skipTraversal: true),
        child: Icon(
          _model.passwordVisibility1 ? Icons.visibility_outlined : Icons.visibility_off_outlined,
          color: FlutterFlowTheme.of(context).secondaryText  ,
          size: 24.0,
        ),
      ),
  ),
      style: FlutterFlowTheme.of(context).bodyMedium.override(    fontFamily: 'Noto Sans Old Permic',
    
    
    letterSpacing: 0.0,
    
    
    
    
    
  ),
      
      
      
      
      
      
      
      
      validator: _model.textController2Validator.asValidator(context),
      
    ),
           )
           ,
Padding(
             padding: EdgeInsetsDirectional.fromSTEB(
       8.0,
       10.0,
       8.0,
       8.0
  ),
             child: TextFormField(
      
      
      controller: _model.textController3 ,
      focusNode: _model.textFieldFocusNode3,
      
      
      
      autofocus: true  ,
       autofillHints: [AutofillHints.password],
      
      
      
      obscureText: !_model.passwordVisibility2,
      decoration: InputDecoration(
    
    labelText: 'Confirmar contraseña'  ,
    labelStyle: FlutterFlowTheme.of(context).labelMedium.override(    fontFamily: 'Noto Sans Old Permic',
    
    fontSize: 16.0,
    letterSpacing: 0.0,
    
    
    
    
    
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
    contentPadding: EdgeInsets.all( 24.0),
    
          suffixIcon: InkWell(
        onTap: () => setState(
          () => _model.passwordVisibility2 = !_model.passwordVisibility2,
        ),
        focusNode: FocusNode(skipTraversal: true),
        child: Icon(
          _model.passwordVisibility2 ? Icons.visibility_outlined : Icons.visibility_off_outlined,
          color: FlutterFlowTheme.of(context).secondaryText  ,
          size: 24.0,
        ),
      ),
  ),
      style: FlutterFlowTheme.of(context).bodyMedium.override(    fontFamily: 'Noto Sans Old Permic',
    
    
    letterSpacing: 0.0,
    
    
    
    
    
  ),
      
      
      
      
      
      
      
      
      validator: _model.textController3Validator.asValidator(context),
      
    ),
           )
           ,
Padding(
             padding: EdgeInsetsDirectional.fromSTEB(
       0.0,
       50.0,
       0.0,
       0.0
  ),
             child: FFButtonWidget(
      
      onPressed:  () async {    
    context.pushNamed(
      'signup2'
      
      
      
      
      
    );
  },
      text: 'Siguiente'  ,
      
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
        color: FlutterFlowTheme.of(context).primary  ,
        textStyle: FlutterFlowTheme.of(context).titleSmall.override(    fontFamily: 'Noto Sans Old Permic',
    color:  Colors.white  ,
    fontSize: 20.0,
    letterSpacing: 0.0,
    
    
    
    
    
  ),
        elevation: 3.0  ,
        borderSide: BorderSide(
      color: Colors.transparent  ,
      width: 1.0  ,
    ),
        borderRadius: BorderRadius.circular( 16.0  ),
        
        
        
        
        
        
      ),
      
    ),
           )
           ,],
    ),
    ),
           )
           ,],
    ),
           )
           ,],
    ),
    ),
    ),
)
;
  }

  
}
