import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
      import 'signup_model.dart';
      export 'signup_model.dart';
    
class SignupWidget extends StatefulWidget {
  const SignupWidget({super.key }) ;

  

  @override
  State<SignupWidget> createState() => _SignupWidgetState();
}

class _SignupWidgetState extends State<SignupWidget>  {
  late SignupModel _model;

final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SignupModel());

    _model.emailTextController ??= TextEditingController();
_model.emailFocusNode ??= FocusNode();

_model.passwordTextController ??= TextEditingController();
_model.passwordFocusNode ??= FocusNode();

_model.confirmPasswordTextController ??= TextEditingController();
_model.confirmPasswordFocusNode ??= FocusNode();

_model.nameTextController ??= TextEditingController();
_model.nameFocusNode ??= FocusNode();

_model.lastNameTextController ??= TextEditingController();
_model.lastNameFocusNode ??= FocusNode();

_model.nickNameTextController ??= TextEditingController();
_model.nickNameFocusNode ??= FocusNode();

_model.ageTextController ??= TextEditingController();
_model.ageFocusNode ??= FocusNode();

    
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
      
      width: MediaQuery.sizeOf(context).width * 1.0  ,height: double.infinity  ,
      
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).secondaryBackground  ,
        
        
        
        
        
        
      ),
    
      
      child: SingleChildScrollView(
        
        
        
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
Padding(
             padding: EdgeInsetsDirectional.fromSTEB(
       0.0,
       30.0,
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
       12.0,
       40.0,
       12.0,
       0.0
  ),
             child: Container(
      
      width: MediaQuery.sizeOf(context).width * 0.9  ,
      
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).secondaryBackground  ,
        
        
        
        
        
        
      ),
    
      
      child: Column(
      
      mainAxisSize: MainAxisSize.max,
      
      
      children: [Text(
      
       'Crea una cuenta'  ,
      
      
      style: FlutterFlowTheme.of(context).bodyMedium.override(    fontFamily: 'Poppins',
    
    fontSize: 24.0,
    letterSpacing: 0.0,
    fontWeight: FontWeight.w800,
    
    
    
    
  ),
      
      
    ),
Padding(
             padding: EdgeInsetsDirectional.fromSTEB(
       8.0,
       20.0,
       8.0,
       8.0
  ),
             child: TextFormField(
      
      
      controller: _model.emailTextController ,
      focusNode: _model.emailFocusNode,
      
      
      
      autofocus: false  ,
       autofillHints: [AutofillHints.email],
      textCapitalization: TextCapitalization.none,
      
      
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
      
      
      
      
      
      
      
      
      validator: _model.emailTextControllerValidator.asValidator(context),
      
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
      
      
      controller: _model.passwordTextController ,
      focusNode: _model.passwordFocusNode,
      
      
      
      autofocus: false  ,
       autofillHints: [AutofillHints.password],
      
      
      
      obscureText: !_model.passwordVisibility,
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
          () => _model.passwordVisibility = !_model.passwordVisibility,
        ),
        focusNode: FocusNode(skipTraversal: true),
        child: Icon(
          _model.passwordVisibility ? Icons.visibility_outlined : Icons.visibility_off_outlined,
          color: FlutterFlowTheme.of(context).secondaryText  ,
          size: 24.0,
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
       8.0,
       10.0,
       8.0,
       8.0
  ),
             child: TextFormField(
      
      
      controller: _model.confirmPasswordTextController ,
      focusNode: _model.confirmPasswordFocusNode,
      
      
      
      autofocus: false  ,
       autofillHints: [AutofillHints.password],
      
      
      
      obscureText: !_model.confirmPasswordVisibility,
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
          () => _model.confirmPasswordVisibility = !_model.confirmPasswordVisibility,
        ),
        focusNode: FocusNode(skipTraversal: true),
        child: Icon(
          _model.confirmPasswordVisibility ? Icons.visibility_outlined : Icons.visibility_off_outlined,
          color: FlutterFlowTheme.of(context).secondaryText  ,
          size: 24.0,
        ),
      ),
  ),
      style: FlutterFlowTheme.of(context).bodyMedium.override(    fontFamily: 'Noto Sans Old Permic',
    
    
    letterSpacing: 0.0,
    
    
    
    
    
  ),
      
      
      
      
      
      
      
      
      validator: _model.confirmPasswordTextControllerValidator.asValidator(context),
      
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
      
      
      controller: _model.nameTextController ,
      focusNode: _model.nameFocusNode,
      
      
      
      autofocus: false  ,
       autofillHints: [AutofillHints.name],
      
      
      
      obscureText: false,
      decoration: InputDecoration(
    
    labelText: 'Nombre'  ,
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
      
      
      
      
      
      
      
      
      validator: _model.nameTextControllerValidator.asValidator(context),
      
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
      
      
      controller: _model.lastNameTextController ,
      focusNode: _model.lastNameFocusNode,
      
      
      
      autofocus: false  ,
       autofillHints: [AutofillHints.name],
      
      
      
      obscureText: false,
      decoration: InputDecoration(
    
    labelText: 'Apellido'  ,
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
      
      
      
      
      
      
      
      
      validator: _model.lastNameTextControllerValidator.asValidator(context),
      
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
      
      
      controller: _model.nickNameTextController ,
      focusNode: _model.nickNameFocusNode,
      
      
      
      autofocus: false  ,
       autofillHints: [AutofillHints.username],
      
      
      
      obscureText: false,
      decoration: InputDecoration(
    
    labelText: 'Nombre de usuario'  ,
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
      
      
      
      
      
      
      
      
      validator: _model.nickNameTextControllerValidator.asValidator(context),
      
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
      
      
      controller: _model.ageTextController ,
      focusNode: _model.ageFocusNode,
      
      
      
      autofocus: false  ,
      
      textCapitalization: TextCapitalization.none,
      
      
      obscureText: false,
      decoration: InputDecoration(
    
    labelText: 'Edad'  ,
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
      
      
      
      
      
      
      
      
      validator: _model.ageTextControllerValidator.asValidator(context),
      
    ),
           )
           ,],
    ),
    ),
           )
           ,
Padding(
             padding: EdgeInsetsDirectional.fromSTEB(
       0.0,
       15.0,
       0.0,
       12.0
  ),
             child: Row(
      
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.center,
      
      children: [FFButtonWidget(
      
      onPressed:  () async {GoRouter.of(context).prepareAuthEvent();
          if (_model.passwordTextController.text != _model.confirmPasswordTextController.text) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(
              'Passwords don\'t match!',
            ),
          ),
        );
        return;
      }
    
    final user = await authManager.createAccountWithEmail(
      context,
      _model.emailTextController.text,
      _model.passwordTextController.text,
    );
    if (user == null) { return; }
    

await UserRecord.collection.doc(user.uid).update({...createUserRecordData(email: _model.emailTextController.text,displayName: _model.nameTextController.text,lastName: _model.lastNameTextController.text,nickName: _model.nickNameTextController.text,age: int.tryParse(_model.ageTextController.text),isPyme: false,uid: '',isAdmin: false,), ...mapToFirestore({'created_time': FieldValue.serverTimestamp(),},),});

  
await authManager.sendEmailVerification();
 ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
        content: Text(
          'Correo de verificación enviado!',
          style: GoogleFonts.getFont('Noto Sans Old Permic',       
      color: FlutterFlowTheme.of(context).primaryText,
      
      
      
      
      
    ),
        ),
        duration: Duration(milliseconds: 4000),
        backgroundColor: FlutterFlowTheme.of(context).secondary,
        
    ),
  );
    
    context.goNamedAuth(
      'login',
      context.mounted,
      
      
      extra: <String, dynamic>{kTransitionInfoKey: TransitionInfo(
  hasTransition: true,
  transitionType: PageTransitionType.fade,
  
  duration: Duration(milliseconds: 0),
)
,},
      
    );
  },
      text: 'Crear cuenta'  ,
      
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
      
    ),],
    ),
           )
           ,
Padding(
             padding: EdgeInsetsDirectional.fromSTEB(
       0.0,
       12.0,
       0.0,
       25.0
  ),
             child: Row(
      
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.center,
      
      children: [Padding(
             padding: EdgeInsetsDirectional.fromSTEB(
       20.0,
       0.0,
       5.0,
       0.0
  ),
             child: Text(
      
       '¿Ya tienes una cuenta?'  ,
      
      
      style: FlutterFlowTheme.of(context).bodyMedium.override(    fontFamily: 'Noto Sans Old Permic',
    color:  Color(0xFF95A1A1)  ,
    
    letterSpacing: 0.0,
    
    
    
    
    
  ),
      
      
    ),
           )
           ,
Padding(
             padding: EdgeInsetsDirectional.fromSTEB(
       5.0,
       0.0,
       0.0,
       0.0
  ),
             child: FFButtonWidget(
      
      onPressed:  () async {    
    context.pushNamed(
      'login'
      
      
      
      
      
    );
  },
      text: 'Iniciar Sesión'  ,
      
      options: FFButtonOptions(
        width: 110.0  ,
        height: 30.0  ,
        padding: EdgeInsets.all( 0.0),
        iconPadding: EdgeInsetsDirectional.fromSTEB(
       0.0,
       0.0,
       0.0,
       0.0
  ),
        color: Colors.transparent  ,
        textStyle: FlutterFlowTheme.of(context).titleSmall.override(    fontFamily: 'Noto Sans Old Permic',
    color:  Color(0xFF222C57)  ,
    fontSize: 14.0,
    letterSpacing: 0.0,
    fontWeight: FontWeight.bold,
    
    
    
    
  ),
        elevation: 0.0  ,
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
           )
           ,],
    ),
      ),
    ),
    ),
)
;
  }

  
}
