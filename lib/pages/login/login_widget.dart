import '/auth/firebase_auth/auth_util.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/pages/componentes/check_email/check_email_widget.dart';
import '/pages/componentes/recover_password/recover_password_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
      import 'login_model.dart';
      export 'login_model.dart';
    
class LoginWidget extends StatefulWidget {
  const LoginWidget({super.key }) ;

  

  @override
  State<LoginWidget> createState() => _LoginWidgetState();
}

class _LoginWidgetState extends State<LoginWidget>  {
  late LoginModel _model;

final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => LoginModel());

    _model.emailTextController ??= TextEditingController();
_model.emailFocusNode ??= FocusNode();

_model.passwordTextController ??= TextEditingController();
_model.passwordFocusNode ??= FocusNode();

    
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
      onTap:  () async {    
    context.pushNamed(
      'pageHome'
      
      
      
      
      
    );
  },
      
      
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
Padding(
             padding: EdgeInsetsDirectional.fromSTEB(
       25.0,
       35.0,
       20.0,
       0.0
  ),
             child: Row(
      
      mainAxisSize: MainAxisSize.max,
      
      
      children: [Column(
      
      mainAxisSize: MainAxisSize.max,
      
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [Text(
      
       'Bienvenido!'  ,
      
      
      style: FlutterFlowTheme.of(context).bodyMedium.override(    fontFamily: 'Poppins',
    
    fontSize: 30.0,
    letterSpacing: 0.0,
    fontWeight: FontWeight.bold,
    
    
    
    
  ),
      
      
    ),
Padding(
             padding: EdgeInsetsDirectional.fromSTEB(
       0.0,
       10.0,
       0.0,
       0.0
  ),
             child: Text(
      
       'Inicia sesión para continuar'  ,
      
      
      style: FlutterFlowTheme.of(context).bodyMedium.override(    fontFamily: 'Noto Sans Old Permic',
    
    fontSize: 18.0,
    letterSpacing: 0.0,
    fontWeight: FontWeight.w500,
    
    
    
    
  ),
      
      
    ),
           )
           ,],
    ),],
    ),
           )
           ,
Align(
      alignment: AlignmentDirectional( 0.0  ,  0.0  ),
      child: Padding(
             padding: EdgeInsetsDirectional.fromSTEB(
       0.0,
       80.0,
       0.0,
       0.0
  ),
             child: Column(
      
      mainAxisSize: MainAxisSize.max,
      
      
      children: [Padding(
             padding: EdgeInsetsDirectional.fromSTEB(
       35.0,
       0.0,
       35.0,
       0.0
  ),
             child: TextFormField(
      
      
      controller: _model.emailTextController ,
      focusNode: _model.emailFocusNode,
      
      
      
      autofocus: true  ,
       autofillHints: [AutofillHints.email],
      
      
      
      obscureText: false,
      decoration: InputDecoration(
    
    labelText: 'Correo Electrónico'  ,
    labelStyle: FlutterFlowTheme.of(context).labelMedium.override(    fontFamily: 'Noto Sans Old Permic',
    
    
    letterSpacing: 0.0,
    fontWeight: FontWeight.w500,
    
    
    
    
  ),
    
    
    hintStyle: FlutterFlowTheme.of(context).labelMedium.override(    fontFamily: 'Noto Sans Old Permic',
    
    
    letterSpacing: 0.0,
    
    
    
    
    
  ),
    
    
    enabledBorder: OutlineInputBorder(borderSide:     BorderSide(
      color:  FlutterFlowTheme.of(context).alternate  ,
      width: 2.0,
    )
  , borderRadius: BorderRadius.circular( 16.0  ),),
    focusedBorder: OutlineInputBorder(borderSide:     BorderSide(
      color:  Color(0x00000000)  ,
      width: 2.0,
    )
  , borderRadius: BorderRadius.circular( 16.0  ),),
    errorBorder: OutlineInputBorder(borderSide:     BorderSide(
      color:  Color(0x00000000)  ,
      width: 2.0,
    )
  , borderRadius: BorderRadius.circular( 16.0  ),),
    focusedErrorBorder: OutlineInputBorder(borderSide:     BorderSide(
      color:  Color(0x00000000)  ,
      width: 2.0,
    )
  , borderRadius: BorderRadius.circular( 16.0  ),),
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
      
      
      
      
      
      
      keyboardType: TextInputType.emailAddress,
      
      validator: _model.emailTextControllerValidator.asValidator(context),
      
    ),
           )
           ,
Padding(
             padding: EdgeInsetsDirectional.fromSTEB(
       35.0,
       55.0,
       35.0,
       0.0
  ),
             child: TextFormField(
      
      
      controller: _model.passwordTextController ,
      focusNode: _model.passwordFocusNode,
      
      
      
      autofocus: true  ,
       autofillHints: [AutofillHints.password],
      
      
      
      obscureText: !_model.passwordVisibility,
      decoration: InputDecoration(
    
    labelText: 'Contraseña'  ,
    labelStyle: FlutterFlowTheme.of(context).labelMedium.override(    fontFamily: 'Noto Sans Old Permic',
    
    
    letterSpacing: 0.0,
    
    
    
    
    
  ),
    
    
    hintStyle: FlutterFlowTheme.of(context).labelMedium.override(    fontFamily: 'Noto Sans Old Permic',
    
    
    letterSpacing: 0.0,
    
    
    
    
    
  ),
    
    
    enabledBorder: OutlineInputBorder(borderSide:     BorderSide(
      color:  FlutterFlowTheme.of(context).alternate  ,
      width: 2.0,
    )
  , borderRadius: BorderRadius.circular( 16.0  ),),
    focusedBorder: OutlineInputBorder(borderSide:     BorderSide(
      color:  Color(0x00000000)  ,
      width: 2.0,
    )
  , borderRadius: BorderRadius.circular( 16.0  ),),
    errorBorder: OutlineInputBorder(borderSide:     BorderSide(
      color:  Color(0x00000000)  ,
      width: 2.0,
    )
  , borderRadius: BorderRadius.circular( 16.0  ),),
    focusedErrorBorder: OutlineInputBorder(borderSide:     BorderSide(
      color:  Color(0x00000000)  ,
      width: 2.0,
    )
  , borderRadius: BorderRadius.circular( 16.0  ),),
    filled: true  ,
    fillColor: FlutterFlowTheme.of(context).secondaryBackground  ,
    contentPadding: EdgeInsetsDirectional.fromSTEB(
       16.0,
       24.0,
       24.0,
       24.0
  ),
    
          suffixIcon: InkWell(
        onTap: () => setState(
          () => _model.passwordVisibility = !_model.passwordVisibility,
        ),
        focusNode: FocusNode(skipTraversal: true),
        child: Icon(
          _model.passwordVisibility ? Icons.visibility_outlined : Icons.visibility_off_outlined,
          color: Color(0xFF95A1AC)  ,
          size: 22.0,
        ),
      ),
  ),
      style: FlutterFlowTheme.of(context).bodyMedium.override(    fontFamily: 'Noto Sans Old Permic',
    
    
    letterSpacing: 0.0,
    
    
    
    
    
  ),
      
      
      
      
      
      
      
      
      validator: _model.passwordTextControllerValidator.asValidator(context),
      
    ),
           )
           ,
Padding(
             padding: EdgeInsetsDirectional.fromSTEB(
       0.0,
       55.0,
       0.0,
       0.0
  ),
             child: FFButtonWidget(
      
      onPressed:  () async {await authManager.refreshUser();
GoRouter.of(context).prepareAuthEvent();
    
    final user = await authManager.signInWithEmail(
      context,
      _model.emailTextController.text,
      _model.passwordTextController.text,
    );
    if (user == null) { return; }
    
  
if (currentUserEmailVerified == true) {
      
    context.pushNamedAuth(
      'userHome',
      context.mounted
      
      
      
      
    );
  
setState(() { _model.emailTextController?.clear();
 _model.passwordTextController?.clear();
});
}
else {
  await showModalBottomSheet(
    isScrollControlled: true,
    backgroundColor: Colors.transparent,
    
    
    enableDrag: false,
    
    context: context, 
    builder: (context) {
      return GestureDetector(
  onTap: () =>
    _model.unfocusNode.canRequestFocus
      ? FocusScope.of(context).requestFocus(_model.unfocusNode)
      : FocusScope.of(context).unfocus(),
  child: Padding(
        padding: MediaQuery.viewInsetsOf(context),
        child: CheckEmailWidget(  ),
      )
,
)
;
    },
  ).then((value) => safeSetState(() {}));
  
setState(() { _model.emailTextController?.clear();
 _model.passwordTextController?.clear();
});
}
},
      text: 'Ingresar'  ,
      
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
    fontSize: 18.0,
    letterSpacing: 0.0,
    fontWeight: FontWeight.w600,
    
    
    
    
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
       40.0,
       0.0,
       0.0
  ),
             child: FFButtonWidget(
      
      onPressed:  () async {await showModalBottomSheet(
    isScrollControlled: true,
    backgroundColor: Colors.transparent,
    
    
    enableDrag: false,
    
    context: context, 
    builder: (context) {
      return GestureDetector(
  onTap: () =>
    _model.unfocusNode.canRequestFocus
      ? FocusScope.of(context).requestFocus(_model.unfocusNode)
      : FocusScope.of(context).unfocus(),
  child: Padding(
        padding: MediaQuery.viewInsetsOf(context),
        child: RecoverPasswordWidget(  ),
      )
,
)
;
    },
  ).then((value) => safeSetState(() {}));
  },
      text: '¿Olvidaste tu contraseña?'  ,
      
      options: FFButtonOptions(
        
        height: 30.0  ,
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
        color: Color(0x00FFFFFF)  ,
        textStyle: FlutterFlowTheme.of(context).titleSmall.override(    fontFamily: 'Noto Sans Old Permic',
    color:  FlutterFlowTheme.of(context).primaryText  ,
    fontSize: 17.0,
    letterSpacing: 0.0,
    fontWeight: FontWeight.bold,
    
    
    
    
  ),
        elevation: 0.0  ,
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
Padding(
             padding: EdgeInsetsDirectional.fromSTEB(
       0.0,
       40.0,
       0.0,
       0.0
  ),
             child: Column(
      
      mainAxisSize: MainAxisSize.max,
      
      
      children: [Padding(
             padding: EdgeInsetsDirectional.fromSTEB(
       0.0,
       35.0,
       0.0,
       0.0
  ),
             child: Row(
      
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.center,
      
      children: [Text(
      
       '¿No tienes una cuenta?'  ,
      
      
      style: FlutterFlowTheme.of(context).bodyMedium.override(    fontFamily: 'Noto Sans Old Permic',
    
    
    letterSpacing: 0.0,
    fontWeight: FontWeight.w600,
    
    
    
    
  ),
      
      
    ),
FFButtonWidget(
      
      onPressed:  () async {    
    context.pushNamed(
      'signup'
      
      
      
      
      
    );
  },
      text: 'Registrarse'  ,
      
      options: FFButtonOptions(
        
        height: 30.0  ,
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
        color: Color(0x00FFFFFF)  ,
        textStyle: FlutterFlowTheme.of(context).bodyMedium.override(    fontFamily: 'Noto Sans Old Permic',
    color:  Color(0xFF222C57)  ,
    fontSize: 20.0,
    letterSpacing: 0.0,
    fontWeight: FontWeight.w900,
    
    
    
    
  ),
        elevation: 0.0  ,
        borderSide: BorderSide(
      color: Colors.transparent  ,
      width: 1.0  ,
    ),
        borderRadius: BorderRadius.circular( 8.0  ),
        
        
        
        
        
        
      ),
      
    ),],
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
