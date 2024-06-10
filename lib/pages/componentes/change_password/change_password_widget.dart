import '/auth/firebase_auth/auth_util.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/custom_code/actions/index.dart' as actions;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
      import 'change_password_model.dart';
      export 'change_password_model.dart';
    
class ChangePasswordWidget extends StatefulWidget {
  const ChangePasswordWidget({super.key }) ;

  

  @override
  State<ChangePasswordWidget> createState() => _ChangePasswordWidgetState();
}

class _ChangePasswordWidgetState extends State<ChangePasswordWidget>  {
  late ChangePasswordModel _model;



@override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }


  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ChangePasswordModel());

    _model.contraActualTextController ??= TextEditingController();
_model.contraActualFocusNode ??= FocusNode();

_model.contraNuevaTextController ??= TextEditingController();
_model.contraNuevaFocusNode ??= FocusNode();

    
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
       16.0,
       0.0,
       0.0
  ),
             child: Container(
      
      width: double.infinity  ,height: double.infinity  ,
      
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).secondaryBackground  ,
        
        boxShadow: [    BoxShadow(
      blurRadius: 4.0  ,
      color: Color(0x33000000)  ,
      offset: Offset( 0.0  ,  -2.0  ,),
      
    )
  ],
        
        borderRadius: BorderRadius.only(
      bottomLeft: Radius.circular( 0.0  ),
      bottomRight: Radius.circular( 0.0  ),
      topLeft: Radius.circular( 16.0  ),
      topRight: Radius.circular( 16.0  ),
    ),
        
        
      ),
    
      
      child: Padding(
             padding: EdgeInsets.all( 16.0),
             child: Column(
      
      mainAxisSize: MainAxisSize.max,
      
      
      children: [Row(
      
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      
      children: [Text(
      
       'Cambiar contraseña.'  ,
      textAlign: TextAlign.start,
      
      style: FlutterFlowTheme.of(context).headlineSmall.override(    fontFamily: 'Poppins',
    
    fontSize: 20.0,
    letterSpacing: 0.0,
    fontWeight: FontWeight.bold,
    
    
    
    
  ),
      
      
    ),
FlutterFlowIconButton(
      
      
      borderRadius: 30.0  ,
      borderWidth: 1.0  ,
      buttonSize: 40.0  ,
      
      
      
      
      
      icon:  Icon(
      
      Icons.close_rounded,
      color: Color(0xFF95A1AC)  ,
      size: 24.0  ,
    )  ,
      
      onPressed:  () async {context.safePop();},
    ),],
    ),
Align(
      alignment: AlignmentDirectional( -1.0  ,  0.0  ),
      child: Padding(
             padding: EdgeInsetsDirectional.fromSTEB(
       0.0,
       0.0,
       0.0,
       40.0
  ),
             child: Text(
      
       'Ingresa los datos a continuación'  ,
      textAlign: TextAlign.start,
      
      style: FlutterFlowTheme.of(context).bodySmall.override(    fontFamily: 'Noto Sans Old Permic',
    color:  Color(0xFF57636C)  ,
    
    letterSpacing: 0.0,
    fontWeight: FontWeight.bold,
    
    
    
    
  ),
      
      
    ),
           )
           ,
    )
    ,
Padding(
             padding: EdgeInsetsDirectional.fromSTEB(
       8.0,
       24.0,
       8.0,
       0.0
  ),
             child: Container(width: double.infinity  , child: TextFormField(
      
      
      controller: _model.contraActualTextController ,
      focusNode: _model.contraActualFocusNode,
      
      
      
      autofocus: true  ,
       autofillHints: [AutofillHints.password],
      
      
      
      obscureText: !_model.contraActualVisibility,
      decoration: InputDecoration(
    
    labelText: 'Contraseña actual'  ,
    labelStyle: FlutterFlowTheme.of(context).titleSmall.override(    fontFamily: 'Noto Sans Old Permic',
    color:  FlutterFlowTheme.of(context).secondaryText  ,
    
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
    contentPadding: EdgeInsets.all( 15.0),
    
          suffixIcon: InkWell(
        onTap: () => setState(
          () => _model.contraActualVisibility = !_model.contraActualVisibility,
        ),
        focusNode: FocusNode(skipTraversal: true),
        child: Icon(
          _model.contraActualVisibility ? Icons.visibility_outlined : Icons.visibility_off_outlined,
          color: FlutterFlowTheme.of(context).secondaryText  ,
          size: 24.0,
        ),
      ),
  ),
      style: FlutterFlowTheme.of(context).bodyMedium.override(    fontFamily: 'Noto Sans Old Permic',
    
    
    letterSpacing: 0.0,
    
    
    
    
    
  ),
      
      
      
      
      
      
      
      
      validator: _model.contraActualTextControllerValidator.asValidator(context),
      
    ),),
           )
           ,
Padding(
             padding: EdgeInsetsDirectional.fromSTEB(
       8.0,
       24.0,
       8.0,
       0.0
  ),
             child: Container(width: double.infinity  , child: TextFormField(
      
      
      controller: _model.contraNuevaTextController ,
      focusNode: _model.contraNuevaFocusNode,
      
      
      
      autofocus: true  ,
       autofillHints: [AutofillHints.password],
      
      
      
      obscureText: !_model.contraNuevaVisibility,
      decoration: InputDecoration(
    
    labelText: 'Contraseña nueva'  ,
    labelStyle: FlutterFlowTheme.of(context).titleSmall.override(    fontFamily: 'Noto Sans Old Permic',
    color:  FlutterFlowTheme.of(context).secondaryText  ,
    
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
    contentPadding: EdgeInsets.all( 15.0),
    
          suffixIcon: InkWell(
        onTap: () => setState(
          () => _model.contraNuevaVisibility = !_model.contraNuevaVisibility,
        ),
        focusNode: FocusNode(skipTraversal: true),
        child: Icon(
          _model.contraNuevaVisibility ? Icons.visibility_outlined : Icons.visibility_off_outlined,
          color: FlutterFlowTheme.of(context).secondaryText  ,
          size: 24.0,
        ),
      ),
  ),
      style: FlutterFlowTheme.of(context).bodyMedium.override(    fontFamily: 'Noto Sans Old Permic',
    
    
    letterSpacing: 0.0,
    
    
    
    
    
  ),
      
      
      
      
      
      
      
      
      validator: _model.contraNuevaTextControllerValidator.asValidator(context),
      
    ),),
           )
           ,
Padding(
             padding: EdgeInsetsDirectional.fromSTEB(
       0.0,
       35.0,
       0.0,
       0.0
  ),
             child: FFButtonWidget(
      
      onPressed:  () async {Function() _navigate = ()  {};
_model.isChange = await actions.changePassword(context, _model.contraActualTextController.text, _model.contraNuevaTextController.text,);
if (_model.isChange!) {
  GoRouter.of(context).prepareAuthEvent();
await authManager.signOut();
GoRouter.of(context).clearRedirectLocation();

_navigate = () =>     
    context.goNamedAuth(
      'pageHome',
      context.mounted
      
      
      
      
    )
  ;
 ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
        content: Text(
          'Contraseña actualizada!',
          style: TextStyle(      
      color: FlutterFlowTheme.of(context).primaryText,
      
      
      
      
      
    ),
        ),
        duration: Duration(milliseconds: 4000),
        backgroundColor: FlutterFlowTheme.of(context).secondary,
        
    ),
  );
}
else {
  await showDialog(
            context: context,
            builder: (alertDialogContext) {
              return AlertDialog(
                title: Text('Contraseña incorrecta'),
                content: Text('La contraseña actual ingresa es incorrecta o esta vacía!'),
                actions: [
                  TextButton(
                    onPressed: () => Navigator.pop(alertDialogContext),
                    child: Text('Ok'),
                  ),
                ],
              );
            },
          );
setState(() { _model.contraActualTextController?.clear();
 _model.contraNuevaTextController?.clear();
});
}



_navigate();


setState(() {});},
      text: 'Cambiar contraseña'  ,
      
      options: FFButtonOptions(
        width: 250.0  ,
        height: 45.0  ,
        padding: EdgeInsets.all( 0.0),
        iconPadding: EdgeInsetsDirectional.fromSTEB(
       0.0,
       0.0,
       0.0,
       0.0
  ),
        color: Color(0xFF222C57)  ,
        textStyle: FlutterFlowTheme.of(context).headlineSmall.override(    fontFamily: 'Noto Sans Old Permic',
    color:  Colors.white  ,
    fontSize: 18.0,
    letterSpacing: 0.0,
    fontWeight: FontWeight.bold,
    
    
    
    
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
    ),
           )
           ;
  }

  
}
