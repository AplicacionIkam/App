import '/auth/firebase_auth/auth_util.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
      import 'recover_password_model.dart';
      export 'recover_password_model.dart';
    
class RecoverPasswordWidget extends StatefulWidget {
  const RecoverPasswordWidget({super.key }) ;

  

  @override
  State<RecoverPasswordWidget> createState() => _RecoverPasswordWidgetState();
}

class _RecoverPasswordWidgetState extends State<RecoverPasswordWidget>  {
  late RecoverPasswordModel _model;



@override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }


  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => RecoverPasswordModel());

    _model.emailTextController ??= TextEditingController();
_model.emailFocusNode ??= FocusNode();

    
  }


  @override
  void dispose() {
    _model.maybeDispose();

    
    super.dispose();
  }

  
  @override
  Widget build(BuildContext context) {
    
    return Align(
      alignment: AlignmentDirectional( 0.0  ,  0.0  ),
      child: Padding(
             padding: EdgeInsetsDirectional.fromSTEB(
       16.0,
       0.0,
       16.0,
       16.0
  ),
             child: Container(
      
      width: double.infinity  ,height: MediaQuery.sizeOf(context).height * 0.5  ,
      
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).secondaryBackground  ,
        
        
        
        borderRadius: BorderRadius.circular( 12.0  ),
        
        border: Border.all(
      color: Color(0xFFE0E3E7)  ,
      
    ),
      ),
    
      
      child: Padding(
             padding: EdgeInsets.all( 20.0),
             child: Column(
      
      mainAxisSize: MainAxisSize.max,
      
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [Row(
      
      mainAxisSize: MainAxisSize.max,
      
      
      children: [Expanded(
      
      child: Padding(
             padding: EdgeInsetsDirectional.fromSTEB(
       0.0,
       0.0,
       12.0,
       0.0
  ),
             child: Text(
      
       'Recuperar Contraseña'  ,
      
      
      style: FlutterFlowTheme.of(context).headlineMedium.override(    fontFamily: 'Poppins',
    
    
    letterSpacing: 0.0,
    fontWeight: FontWeight.w800,
    
    
    
    
  ),
      
      
    ),
           )
           ,
    )
    ,
FlutterFlowIconButton(
      
      
      borderRadius: 30.0  ,
      borderWidth: 2.0  ,
      buttonSize: 44.0  ,
      
      
      
      
      
      icon:  Icon(
      
      Icons.close_rounded,
      color: FlutterFlowTheme.of(context).secondaryText  ,
      size: 24.0  ,
    )  ,
      
      onPressed:  () async {context.safePop();},
    ),],
    ),
Divider(
      
      
      thickness: 2.0,
      
      
      color: FlutterFlowTheme.of(context).primaryBackground  ,
    ),
Text(
      
       'Le enviaremos un correo electrónico con un enlace para restablecer su contraseña, ingrese el correo electrónico asociado con su cuenta a continuación.'  ,
      
      
      style: FlutterFlowTheme.of(context).labelMedium.override(    fontFamily: 'Noto Sans Old Permic',
    
    
    letterSpacing: 0.0,
    
    
    
    
    
  ),
      
      
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
      
      children: [Expanded(
      
      child: Padding(
             padding: EdgeInsetsDirectional.fromSTEB(
       8.0,
       0.0,
       8.0,
       0.0
  ),
             child: TextFormField(
      
      
      controller: _model.emailTextController ,
      focusNode: _model.emailFocusNode,
      
      
      
      autofocus: true  ,
       autofillHints: [AutofillHints.email],
      
      
      
      obscureText: false,
      decoration: InputDecoration(
    
    labelText: 'Tu correo electrónico'  ,
    labelStyle: FlutterFlowTheme.of(context).bodyMedium.override(    fontFamily: 'Noto Sans Old Permic',
    color:  FlutterFlowTheme.of(context).secondaryText  ,
    
    letterSpacing: 0.0,
    fontWeight: FontWeight.w500,
    
    
    
    
  ),
    
    hintText: 'Ingresa tu correo...'  ,
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
    
    
    
  ),
      style: FlutterFlowTheme.of(context).bodyMedium.override(    fontFamily: 'Noto Sans Old Permic',
    
    
    letterSpacing: 0.0,
    
    
    
    
    
  ),
      
      
      
      
      
      
      keyboardType: TextInputType.emailAddress,
      
      validator: _model.emailTextControllerValidator.asValidator(context),
      
    ),
           )
           ,
    )
    ,],
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
             child: Row(
      
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.end,
      
      children: [FFButtonWidget(
      
      onPressed:  () async {      if (_model.emailTextController.text.isEmpty) {
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          content: Text(
            'Email required!',
          ),
        ),);
        return;
      }
     await authManager.resetPassword(email: _model.emailTextController.text, context: context,);},
      text: 'Enviar enlace'  ,
      
      options: FFButtonOptions(
        width: 150.0  ,
        height: 40.0  ,
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
        color: FlutterFlowTheme.of(context).primary  ,
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
        
        
        hoverColor: Color(0xFF222C57)  ,
        
        hoverTextColor: Colors.white  ,
        
      ),
      
    ),],
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
    ;
  }

  
}
