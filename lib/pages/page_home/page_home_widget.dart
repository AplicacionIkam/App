import '/auth/firebase_auth/auth_util.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';
      import 'page_home_model.dart';
      export 'page_home_model.dart';
    
class PageHomeWidget extends StatefulWidget {
  const PageHomeWidget({super.key }) ;

  

  @override
  State<PageHomeWidget> createState() => _PageHomeWidgetState();
}

class _PageHomeWidgetState extends State<PageHomeWidget>  {
  late PageHomeModel _model;

final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PageHomeModel());

    
    
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
      
      
      
      body: Container(
      
      width: double.infinity  ,height: double.infinity  ,
      
      decoration: BoxDecoration(
        color: Colors.white  ,
        
        
        
        
        shape: BoxShape.rectangle,
        
      ),
    
      
      child: Padding(
             padding: EdgeInsetsDirectional.fromSTEB(
       0.0,
       70.0,
       0.0,
       0.0
  ),
             child: Column(
      
      mainAxisSize: MainAxisSize.max,
      
      
      children: [Row(
      
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.center,
      
      children: [Column(
      
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.start,
      
      children: [GradientText(
      
       'IKAM  Multitiendas'  ,
      
      
      style: FlutterFlowTheme.of(context).bodyMedium.override(    fontFamily: 'Poppins',
    
    fontSize: 25.0,
    letterSpacing: 3.0,
    fontWeight: FontWeight.w900,
    
    
    
    
  ),
      
            colors: [Color(0xFF222C57),Colors.black],
      gradientDirection: GradientDirection.ltr,
      gradientType: GradientType.linear,
      
      
    ),
Padding(
             padding: EdgeInsetsDirectional.fromSTEB(
       0.0,
       5.0,
       0.0,
       0.0
  ),
             child: Text(
      
       'Todo lo que buscas al alcance de tus manos.'  ,
      
      
      style: FlutterFlowTheme.of(context).bodyMedium.override(    fontFamily: 'Noto Sans Old Permic',
    
    fontSize: 16.0,
    letterSpacing: 0.0,
    fontWeight: FontWeight.w500,
    
    
    
    
  ),
      
      
    ),
           )
           ,],
    ),],
    ),
Padding(
             padding: EdgeInsetsDirectional.fromSTEB(
       0.0,
       60.0,
       0.0,
       0.0
  ),
             child: ClipRRect(
              
              borderRadius: BorderRadius.circular( 8.0),
              child: Image.asset(      
      'assets/images/AbuelitaIkamBolsa.png',
      width: 300.0  ,height: 300.0  ,
      fit: BoxFit.contain,
      
      
       
       
    ),
             ),
           )
           ,
Row(
      
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.center,
      
      children: [Column(
      
      mainAxisSize: MainAxisSize.max,
      
      
      children: [FFButtonWidget(
      
      onPressed:  () async {GoRouter.of(context).prepareAuthEvent();
final user = await authManager.signInAnonymously(context);if (user == null) { return; }
    
    context.pushNamedAuth(
      'guestHome',
      context.mounted,
      
      
      extra: <String, dynamic>{kTransitionInfoKey: TransitionInfo(
  hasTransition: true,
  transitionType: PageTransitionType.fade,
  
  duration: Duration(milliseconds: 0),
)
,},
      
    );
  },
      text: 'COMIENZA YA'  ,
      
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
        color: Color(0xFF8BE820)  ,
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
      
    ),],
    ),],
    ),
Padding(
             padding: EdgeInsetsDirectional.fromSTEB(
       0.0,
       20.0,
       0.0,
       0.0
  ),
             child: Row(
      
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.center,
      
      children: [Column(
      
      mainAxisSize: MainAxisSize.max,
      
      
      children: [Align(
      alignment: AlignmentDirectional( 0.0  ,  0.0  ),
      child: Padding(
             padding: EdgeInsetsDirectional.fromSTEB(
       0.0,
       0.0,
       0.0,
       20.0
  ),
             child: Text(
      
       '\"Tu éxito es nuestro objetivo.\"'  ,
      textAlign: TextAlign.center,
      
      style: FlutterFlowTheme.of(context).titleSmall.override(    fontFamily: 'Noto Sans Old Permic',
    color:  Colors.black  ,
    fontSize: 20.0,
    letterSpacing: 0.0,
    fontWeight: FontWeight.w900,
    
    
    
    
  ),
      
      
    ),
           )
           ,
    )
    ,
FFButtonWidget(
      
      onPressed:  () async {    
    context.pushNamed(
      'login'
      
      
      
      
      
    );
  },
      text: 'Iniciar Sesión'  ,
      
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
Padding(
             padding: EdgeInsetsDirectional.fromSTEB(
       0.0,
       15.0,
       0.0,
       0.0
  ),
             child: FFButtonWidget(
      
      onPressed:  () async {    
    context.pushNamed(
      'signup'
      
      
      
      
      
    );
  },
      text: 'Registrarse'  ,
      
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
           ,
Padding(
             padding: EdgeInsetsDirectional.fromSTEB(
       0.0,
       30.0,
       0.0,
       0.0
  ),
             child: Text(
      
       'Términos y Condiciones'  ,
      
      
      style: FlutterFlowTheme.of(context).bodyMedium.override(    fontFamily: 'Noto Sans Old Permic',
    
    fontSize: 16.0,
    letterSpacing: 0.0,
    
    
    
    
    
  ),
      
      
    ),
           )
           ,],
    ),],
    ),
           )
           ,],
    ),
           )
           ,
    ),
    ),
)
;
  }

  
}
