import '/auth/firebase_auth/auth_util.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/pages/componentes/change_password/change_password_widget.dart';
import '/pages/componentes/change_photo/change_photo_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
      import 'user_account_model.dart';
      export 'user_account_model.dart';
    
class UserAccountWidget extends StatefulWidget {
  const UserAccountWidget({super.key }) ;

  

  @override
  State<UserAccountWidget> createState() => _UserAccountWidgetState();
}

class _UserAccountWidgetState extends State<UserAccountWidget>  {
  late UserAccountModel _model;

final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => UserAccountModel());

    
    
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
      
      backgroundColor: Color(0xFF222C57)  ,
      
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
      'userHome'
      
      
      
      
      
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
      size: 28.0  ,
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
      'userStates'
      
      
      
      
      
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
      
      Icons.share_location_sharp,
      color: Color(0xFF222C57)  ,
      size: 28.0  ,
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
      'userCategory'
      
      
      
      
      
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
      size: 28.0  ,
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
Divider(
      
      height: 12.0,
      thickness: 2.0,
      
      
      color: FlutterFlowTheme.of(context).alternate  ,
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
      onTap:  () async {    
    context.pushNamed(
      'userAccount'
      
      
      
      
      
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
      
      Icons.account_circle_rounded,
      color: Color(0xFF222C57)  ,
      size: 28.0  ,
    )  ,
Padding(
             padding: EdgeInsetsDirectional.fromSTEB(
       12.0,
       0.0,
       0.0,
       0.0
  ),
             child: Text(
      
       'Cuenta'  ,
      
      
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
      size: 28.0  ,
    )  ,
Padding(
             padding: EdgeInsetsDirectional.fromSTEB(
       12.0,
       0.0,
       0.0,
       0.0
  ),
             child: Text(
      
       'Cerrar Sesión'  ,
      
      
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
      iconTheme: IconThemeData(color:  Color(0xFFE1EDF9)  ),
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
      
      

          ),
body: SafeArea(
        top: true,
        child: Align(
      alignment: AlignmentDirectional( 0.0  ,  0.0  ),
      child: Column(
      
      mainAxisSize: MainAxisSize.max,
      
      
      children: [Padding(
             padding: EdgeInsetsDirectional.fromSTEB(
       0.0,
       10.0,
       0.0,
       0.0
  ),
             child: Row(
      
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      
      children: [Align(
      alignment: AlignmentDirectional( 0.0  ,  0.0  ),
      child: Padding(
             padding: EdgeInsetsDirectional.fromSTEB(
       0.0,
       12.0,
       0.0,
       0.0
  ),
             child: Container(
      
      width: 100.0  ,height: 100.0  ,
      
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).secondaryBackground  ,
        
        
        
        
        shape: BoxShape.circle,
        
      ),
    
      
      child: Padding(
             padding: EdgeInsets.all( 2.0),
             child: AuthUserStreamWidget(builder: (context) => ClipRRect(
              
              borderRadius: BorderRadius.circular( 50.0),
              child: Image.network(      
       currentUserPhoto  ,
      width: 100.0  ,height: 100.0  ,
      fit: BoxFit.cover,
      
          errorBuilder: (context, error, stackTrace) =>
          Image.asset(
            'assets/images/error_image.png',
             width: 100.0  ,height: 100.0  ,
             fit: BoxFit.cover,
             
            ),
    
       
       
    ),
             ),),
           )
           ,
    ),
           )
           ,
    )
    ,
Column(
      
      mainAxisSize: MainAxisSize.max,
      
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [Padding(
             padding: EdgeInsetsDirectional.fromSTEB(
       0.0,
       16.0,
       0.0,
       12.0
  ),
             child: AuthUserStreamWidget(builder: (context) => Text(
      
       '${currentUserDisplayName} ${valueOrDefault(currentUserDocument?.lastName, '')}'  ,
      textAlign: TextAlign.center,
      
      style: FlutterFlowTheme.of(context).headlineSmall.override(    fontFamily: 'Poppins',
    color:  Colors.white  ,
    
    letterSpacing: 0.0,
    fontWeight: FontWeight.w500,
    
    
    
    
  ),
      
      
    ),),
           )
           ,
AuthUserStreamWidget(builder: (context) => Text(
      
       valueOrDefault(currentUserDocument?.nickName, '')  ,
      
      
      style: FlutterFlowTheme.of(context).titleSmall.override(    fontFamily: 'Poppins',
    color:  Colors.white  ,
    
    letterSpacing: 0.0,
    fontWeight: FontWeight.w500,
    
    
    
    
  ),
      
      
    ),),],
    ),],
    ),
           )
           ,
Padding(
             padding: EdgeInsetsDirectional.fromSTEB(
       40.0,
       24.0,
       16.0,
       32.0
  ),
             child: Row(
      
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.start,
      
      children: [ Icon(
      
      Icons.email,
      color: FlutterFlowTheme.of(context).primaryBackground  ,
      size: 24.0  ,
    )  ,
Padding(
             padding: EdgeInsetsDirectional.fromSTEB(
       10.0,
       0.0,
       0.0,
       0.0
  ),
             child: Text(
      
       currentUserEmail  ,
      
      
      style: FlutterFlowTheme.of(context).titleSmall.override(    fontFamily: 'Poppins',
    color:  Colors.white  ,
    fontSize: 12.0,
    letterSpacing: 0.0,
    fontWeight: FontWeight.w500,
    
    
    
    
  ),
      
      
    ),
           )
           ,],
    ),
           )
           ,
Container(
      
      width: double.infinity  ,height: 540.0  ,
      
      decoration: BoxDecoration(
        color: Colors.white  ,
        
        boxShadow: [    BoxShadow(
      blurRadius: 3.0  ,
      color: Color(0x33000000)  ,
      offset: Offset( 0.0  ,  -1.0  ,),
      
    )
  ],
        
        borderRadius: BorderRadius.only(
      bottomLeft: Radius.circular( 0.0  ),
      bottomRight: Radius.circular( 0.0  ),
      topLeft: Radius.circular( 16.0  ),
      topRight: Radius.circular( 16.0  ),
    ),
        
        
      ),
    
      
      child: SingleChildScrollView(
        
        
        
        child: Column(
      
      mainAxisSize: MainAxisSize.max,
      
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [Padding(
             padding: EdgeInsetsDirectional.fromSTEB(
       16.0,
       16.0,
       16.0,
       0.0
  ),
             child: Column(
      
      mainAxisSize: MainAxisSize.max,
      
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [Padding(
             padding: EdgeInsetsDirectional.fromSTEB(
       0.0,
       0.0,
       0.0,
       12.0
  ),
             child: Text(
      
       'Ajustes'  ,
      
      
      style: FlutterFlowTheme.of(context).headlineSmall.override(    fontFamily: 'Poppins',
    
    fontSize: 25.0,
    letterSpacing: 0.0,
    fontWeight: FontWeight.w900,
    
    
    
    
  ),
      
      
    ),
           )
           ,
Padding(
             padding: EdgeInsetsDirectional.fromSTEB(
       0.0,
       25.0,
       0.0,
       8.0
  ),
             child: Row(
      
      mainAxisSize: MainAxisSize.max,
      
      
      children: [Padding(
             padding: EdgeInsetsDirectional.fromSTEB(
       0.0,
       8.0,
       16.0,
       8.0
  ),
             child:  Icon(
      
      Icons.password,
      color: FlutterFlowTheme.of(context).secondaryText  ,
      size: 24.0  ,
    )  ,
           )
           ,
Expanded(
      
      child: Padding(
             padding: EdgeInsetsDirectional.fromSTEB(
       0.0,
       0.0,
       12.0,
       0.0
  ),
             child: Text(
      
       'Cambiar contraseña'  ,
      textAlign: TextAlign.start,
      
      style: FlutterFlowTheme.of(context).bodyMedium.override(    fontFamily: 'Noto Sans Old Permic',
    
    
    letterSpacing: 0.0,
    fontWeight: FontWeight.bold,
    
    
    
    
  ),
      
      
    ),
           )
           ,
    )
    ,
InkWell(
      splashColor: Colors.transparent,
      focusColor: Colors.transparent,
      hoverColor: Colors.transparent,
      highlightColor: Colors.transparent,
      onTap:  () async {await showModalBottomSheet(
    isScrollControlled: true,
    backgroundColor: Colors.transparent,
    
    
    
    
    context: context, 
    builder: (context) {
      return GestureDetector(
  onTap: () =>
    _model.unfocusNode.canRequestFocus
      ? FocusScope.of(context).requestFocus(_model.unfocusNode)
      : FocusScope.of(context).unfocus(),
  child: Padding(
        padding: MediaQuery.viewInsetsOf(context),
        child: Container(height: 470.0, child: ChangePasswordWidget(  ),),
      )
,
)
;
    },
  ).then((value) => safeSetState(() {}));
  },
      
      
      child:  Icon(
      
      Icons.chevron_right_rounded,
      color: FlutterFlowTheme.of(context).secondaryText  ,
      size: 24.0  ,
    )  ,
    )
    ,],
    ),
           )
           ,
Padding(
             padding: EdgeInsetsDirectional.fromSTEB(
       0.0,
       25.0,
       0.0,
       8.0
  ),
             child: Row(
      
      mainAxisSize: MainAxisSize.max,
      
      
      children: [Padding(
             padding: EdgeInsetsDirectional.fromSTEB(
       0.0,
       8.0,
       16.0,
       8.0
  ),
             child:  Icon(
      
      Icons.photo_outlined,
      color: FlutterFlowTheme.of(context).secondaryText  ,
      size: 24.0  ,
    )  ,
           )
           ,
Expanded(
      
      child: Padding(
             padding: EdgeInsetsDirectional.fromSTEB(
       0.0,
       0.0,
       12.0,
       0.0
  ),
             child: Text(
      
       'Cambiar foto'  ,
      textAlign: TextAlign.start,
      
      style: FlutterFlowTheme.of(context).bodyMedium.override(    fontFamily: 'Noto Sans Old Permic',
    
    
    letterSpacing: 0.0,
    fontWeight: FontWeight.bold,
    
    
    
    
  ),
      
      
    ),
           )
           ,
    )
    ,
InkWell(
      splashColor: Colors.transparent,
      focusColor: Colors.transparent,
      hoverColor: Colors.transparent,
      highlightColor: Colors.transparent,
      onTap:  () async {await showModalBottomSheet(
    isScrollControlled: true,
    backgroundColor: Colors.transparent,
    
    
    
    
    context: context, 
    builder: (context) {
      return GestureDetector(
  onTap: () =>
    _model.unfocusNode.canRequestFocus
      ? FocusScope.of(context).requestFocus(_model.unfocusNode)
      : FocusScope.of(context).unfocus(),
  child: Padding(
        padding: MediaQuery.viewInsetsOf(context),
        child: Container(height: 470.0, child: ChangePhotoWidget(  ),),
      )
,
)
;
    },
  ).then((value) => safeSetState(() {}));
  },
      
      
      child:  Icon(
      
      Icons.chevron_right_rounded,
      color: FlutterFlowTheme.of(context).secondaryText  ,
      size: 24.0  ,
    )  ,
    )
    ,],
    ),
           )
           ,
Padding(
             padding: EdgeInsetsDirectional.fromSTEB(
       80.0,
       50.0,
       80.0,
       20.0
  ),
             child: FFButtonWidget(
      
      onPressed:  () async {GoRouter.of(context).prepareAuthEvent();
await authManager.signOut();
GoRouter.of(context).clearRedirectLocation();

await showDialog(
            context: context,
            builder: (alertDialogContext) {
              return AlertDialog(
                
                content: Text('Vuelve pronto!'),
                actions: [
                  TextButton(
                    onPressed: () => Navigator.pop(alertDialogContext),
                    child: Text('Ok'),
                  ),
                ],
              );
            },
          );
    
    context.goNamedAuth(
      'pageHome',
      context.mounted
      
      
      
      
    );
  },
      text: 'Salir de la cuenta'  ,
      icon:  Icon(
      
      Icons.logout,
      
      size: 15.0  ,
    )  ,
      options: FFButtonOptions(
        width: 200.0  ,
        height: 50.0  ,
        padding: EdgeInsets.all( 0.0),
        iconPadding: EdgeInsetsDirectional.fromSTEB(
       0.0,
       0.0,
       0.0,
       0.0
  ),
        color: FlutterFlowTheme.of(context).secondaryBackground  ,
        textStyle: FlutterFlowTheme.of(context).titleSmall.override(    fontFamily: 'Noto Sans Old Permic',
    color:  FlutterFlowTheme.of(context).secondaryText  ,
    
    letterSpacing: 0.0,
    fontWeight: FontWeight.w500,
    
    
    
    
  ),
        elevation: 3.0  ,
        borderSide: BorderSide(
      color: FlutterFlowTheme.of(context).secondaryBackground  ,
      width: 1.0  ,
    ),
        borderRadius: BorderRadius.circular( 8.0  ),
        
        
        
        
        
        
      ),
      
    ),
           )
           ,],
    ),
           )
           ,],
    ),
      ),
    ),],
    ),
    )
    ,
      ),
    ),
)
;
  }

  
}
