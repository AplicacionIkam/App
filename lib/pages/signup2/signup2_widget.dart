import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
      import 'signup2_model.dart';
      export 'signup2_model.dart';
    
class Signup2Widget extends StatefulWidget {
  const Signup2Widget({super.key }) ;

  

  @override
  State<Signup2Widget> createState() => _Signup2WidgetState();
}

class _Signup2WidgetState extends State<Signup2Widget>  {
  late Signup2Model _model;

final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => Signup2Model());

    
    
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
           ,],
    ),
           )
           ,
    )
    ,
Padding(
             padding: EdgeInsetsDirectional.fromSTEB(
       0.0,
       50.0,
       0.0,
       0.0
  ),
             child: Row(
      
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [Padding(
             padding: EdgeInsetsDirectional.fromSTEB(
       0.0,
       0.0,
       5.0,
       0.0
  ),
             child: ClipRRect(
              
              borderRadius: BorderRadius.circular( 8.0),
              child: Image.asset(      
      'assets/images/LOGOPRINCIPAL.png',
      width: 300.0  ,height: 100.0  ,
      fit: BoxFit.contain,
      
      
       
       
    ),
             ),
           )
           ,],
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
      
      children: [Column(
      
      mainAxisSize: MainAxisSize.max,
      
      
      children: [Text(
      
       '¿Cúal eres tú?'  ,
      
      
      style: FlutterFlowTheme.of(context).bodyMedium.override(    fontFamily: 'Noto Sans Old Permic',
    
    fontSize: 20.0,
    letterSpacing: 0.0,
    fontWeight: FontWeight.bold,
    
    
    
    
  ),
      
      
    ),
Padding(
             padding: EdgeInsetsDirectional.fromSTEB(
       0.0,
       50.0,
       0.0,
       0.0
  ),
             child: Row(
      
      mainAxisSize: MainAxisSize.max,
      
      
      children: [Padding(
             padding: EdgeInsetsDirectional.fromSTEB(
       10.0,
       0.0,
       10.0,
       0.0
  ),
             child: Container(
      
      width: 120.0  ,height: 120.0  ,
      clipBehavior: Clip.antiAlias,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
      ),
      child: Image.asset(      
      'assets/images/hombre.jpeg',
      
      fit: BoxFit.cover,
      
      
       
       
    ),
    ),
           )
           ,
Padding(
             padding: EdgeInsetsDirectional.fromSTEB(
       10.0,
       0.0,
       10.0,
       0.0
  ),
             child: Container(
      
      width: 120.0  ,height: 120.0  ,
      clipBehavior: Clip.antiAlias,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
      ),
      child: Image.asset(      
      'assets/images/Mujer.jpeg',
      
      fit: BoxFit.cover,
      
      
       
       
    ),
    ),
           )
           ,],
    ),
           )
           ,
Padding(
             padding: EdgeInsetsDirectional.fromSTEB(
       0.0,
       100.0,
       0.0,
       0.0
  ),
             child: FFButtonWidget(
      
      onPressed:  () async {    
    context.pushNamed(
      'userHome'
      
      
      
      
      
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
    fontWeight: FontWeight.w500,
    
    
    
    
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
    ),],
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
