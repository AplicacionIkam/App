import '/auth/firebase_auth/auth_util.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
      import 'check_email_model.dart';
      export 'check_email_model.dart';
    
class CheckEmailWidget extends StatefulWidget {
  const CheckEmailWidget({super.key }) ;

  

  @override
  State<CheckEmailWidget> createState() => _CheckEmailWidgetState();
}

class _CheckEmailWidgetState extends State<CheckEmailWidget>  {
  late CheckEmailModel _model;



@override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }


  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CheckEmailModel());

    
    
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
      
      width: double.infinity  ,height: MediaQuery.sizeOf(context).height * 0.3  ,
      constraints: BoxConstraints( maxWidth: double.infinity  ,),
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).secondaryBackground  ,
        
        
        
        borderRadius: BorderRadius.circular( 12.0  ),
        
        border: Border.all(
      color: Color(0xFFE0E3E7)  ,
      
    ),
      ),
    
      
      child: Padding(
             padding: EdgeInsets.all( 24.0),
             child: Column(
      
      mainAxisSize: MainAxisSize.max,
      
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [Row(
      
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      
      children: [Padding(
             padding: EdgeInsetsDirectional.fromSTEB(
       0.0,
       0.0,
       12.0,
       0.0
  ),
             child: Text(
      
       'Verificación de correo \nelectrónico.'  ,
      
      maxLines: 2  ,
      style: FlutterFlowTheme.of(context).headlineMedium.override(    fontFamily: 'Poppins',
    
    fontSize: 20.0,
    letterSpacing: 0.0,
    fontWeight: FontWeight.w800,
    
    
    
    
  ),
      
      
    ),
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
      
      height: 24.0,
      thickness: 2.0,
      
      
      color: FlutterFlowTheme.of(context).primaryBackground  ,
    ),
Text(
      
       'No pudiste entrar porque no verificaste tu correo electrónico. Verifique y regrese.'  ,
      
      
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
      mainAxisAlignment: MainAxisAlignment.end,
      
      children: [FFButtonWidget(
      
      onPressed:  () async {await authManager.sendEmailVerification();},
      text: 'Reenviar Email'  ,
      
      options: FFButtonOptions(
        width: 140.0  ,
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
