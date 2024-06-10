import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:text_search/text_search.dart';
      import 'guest_home_model.dart';
      export 'guest_home_model.dart';
    
class GuestHomeWidget extends StatefulWidget {
  const GuestHomeWidget({super.key }) ;

  

  @override
  State<GuestHomeWidget> createState() => _GuestHomeWidgetState();
}

class _GuestHomeWidgetState extends State<GuestHomeWidget>  {
  late GuestHomeModel _model;

final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => GuestHomeModel());

    _model.textController ??= TextEditingController();
_model.textFieldFocusNode ??= FocusNode();

    
  }


  @override
  void dispose() {
    _model.dispose();

    
    super.dispose();
  }

  
  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return StreamBuilder<List<PymeRecord>>(
      stream: queryPymeRecord(),
      builder: (context, snapshot) {
        // Customize what your widget looks like when it's loading.
        if (!snapshot.hasData) {
          return   Scaffold(
    backgroundColor: Colors.white  ,
    body: Center(child: SizedBox(
          width: 50.0,
          height: 50.0,
          child: CircularProgressIndicator(valueColor: AlwaysStoppedAnimation<Color>(FlutterFlowTheme.of(context).primary,),),
        ),),
  )
;
        }
        List<PymeRecord> guestHomePymeRecordList = snapshot.data!;
         return GestureDetector(
  onTap: () =>
    _model.unfocusNode.canRequestFocus
      ? FocusScope.of(context).requestFocus(_model.unfocusNode)
      : FocusScope.of(context).unfocus(),
  child: Scaffold(
      key: scaffoldKey,
      
      backgroundColor: Colors.white  ,
      
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
      'guestHome'
      
      
      
      
      
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
      'guestStates'
      
      
      
      
      
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
      'guestCategory'
      
      
      
      
      
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
      
       'Cerrar sesión'  ,
      
      
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
      
      elevation: 2.0,

          ),
body: SafeArea(
        top: true,
        child: Padding(
             padding: EdgeInsetsDirectional.fromSTEB(
       0.0,
       0.0,
       0.0,
       15.0
  ),
             child: SingleChildScrollView(
        
        
        
        child: Column(
      
      mainAxisSize: MainAxisSize.max,
      
      
      children: [Column(
      
      mainAxisSize: MainAxisSize.max,
      
      
      children: [Container(
      
      width: double.infinity  ,height: 100.0  ,
      
      decoration: BoxDecoration(
        color: Color(0xFF222C57)  ,
        
        boxShadow: [    BoxShadow(
      blurRadius: 4.0  ,
      color: Color(0x33000000)  ,
      offset: Offset( 0.0  ,  2.0  ,),
      
    )
  ],
        
        
        
        
      ),
    
      
      child: Column(
      
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [Padding(
             padding: EdgeInsetsDirectional.fromSTEB(
       24.0,
       4.0,
       24.0,
       4.0
  ),
             child: Row(
      
      mainAxisSize: MainAxisSize.max,
      
      
      children: [Text(
      
       'Bienvenid@ '  ,
      
      
      style: FlutterFlowTheme.of(context).displaySmall.override(    fontFamily: 'Poppins',
    color:  Color(0xFFF1F4F8)  ,
    fontSize: 16.0,
    letterSpacing: 0.0,
    
    
    
    
    
  ),
      
      
    ),],
    ),
           )
           ,
Padding(
             padding: EdgeInsetsDirectional.fromSTEB(
       16.0,
       0.0,
       16.0,
       0.0
  ),
             child: Container(
      
      width: double.infinity  ,height: 40.0  ,
      
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).secondaryBackground  ,
        
        
        
        borderRadius: BorderRadius.circular( 8.0  ),
        
        
      ),
    
      
      child: Row(
      
      mainAxisSize: MainAxisSize.max,
      
      
      children: [Expanded(
      
      child: Align(
      alignment: AlignmentDirectional( 0.0  ,  0.0  ),
      child: Padding(
             padding: EdgeInsetsDirectional.fromSTEB(
       4.0,
       0.0,
       4.0,
       0.0
  ),
             child: TextFormField(
      
      
      controller: _model.textController ,
      focusNode: _model.textFieldFocusNode,
      
      onChanged: (_) => EasyDebounce.debounce(
                '_model.textController',
                Duration(milliseconds: 100),
                 () async {safeSetState(() {
          _model.simpleSearchResults = TextSearch(
            guestHomePymeRecordList
              .map((record) =>
                      TextSearchItem.fromTerms(record, [record.nombrePyme!, record.nombreEncargado!, record.numeroLocal!, record.numeroCel!, record.direccion!, record.urlTiktok!, record.urlFacebook!, record.urlInstagram!, record.estadoPyme!, record.municipioPyme!, record.categoriaPyme!, record.coloniaPyme!, record.subcatPyme!]),)
                  .toList(),
          )
          .search(_model.textController.text)
          .map((r) => r.object)
          
          .toList();;
});
setState(() { FFAppState().BuscarA = true; } );},
              ),
      
      autofocus: false  ,
      
      
      
      
      obscureText: false,
      decoration: InputDecoration(
    
    labelText: 'Buscar negocio...'  ,
    labelStyle: FlutterFlowTheme.of(context).bodyMedium.override(    fontFamily: 'Noto Sans Old Permic',
    color:  Color(0xFF95A1AC)  ,
    
    letterSpacing: 0.0,
    
    
    
    
    
  ),
    alignLabelWithHint: true  ,
    
    
    
    
    enabledBorder: OutlineInputBorder(borderSide:     BorderSide(
      color:  Color(0x00000000)  ,
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
    
    
    
    
    
  ),
      style: FlutterFlowTheme.of(context).bodyMedium.override(    fontFamily: 'Noto Sans Old Permic',
    
    
    letterSpacing: 0.0,
    
    
    
    
    
  ),
      
      
      
      
      
      
      
      
      validator: _model.textControllerValidator.asValidator(context),
      
    ),
           )
           ,
    )
    ,
    )
    ,
Padding(
             padding: EdgeInsetsDirectional.fromSTEB(
       0.0,
       0.0,
       5.0,
       0.0
  ),
             child: InkWell(
      splashColor: Colors.transparent,
      focusColor: Colors.transparent,
      hoverColor: Colors.transparent,
      highlightColor: Colors.transparent,
      onTap:  () async {setState(() { _model.textController?.clear();
});
setState(() { FFAppState().BuscarA = false; } );},
      
      
      child:  Icon(
      
      Icons.close_rounded,
      color: FlutterFlowTheme.of(context).secondaryText  ,
      size: 28.0  ,
    )  ,
    )
    ,
           )
           ,],
    ),
    ),
           )
           ,],
    ),
    ),],
    ),
if (!FFAppState().BuscarA) Padding(
             padding: EdgeInsetsDirectional.fromSTEB(
       0.0,
       25.0,
       0.0,
       0.0
  ),
             child: Builder(builder: (context) {
      
      final pymesPrime = guestHomePymeRecordList.map((e) => e).toList();
      return ListView.builder(
      
      padding: EdgeInsets.zero,
      
      primary: false,
      shrinkWrap: true,
      scrollDirection: Axis.vertical,
      itemCount: pymesPrime.length,
      
      itemBuilder: (context,  pymesPrimeIndex) {
    final pymesPrimeItem = pymesPrime[pymesPrimeIndex];
            return Padding(
             padding: EdgeInsetsDirectional.fromSTEB(
       16.0,
       0.0,
       16.0,
       12.0
  ),
             child: InkWell(
      splashColor: Colors.transparent,
      focusColor: Colors.transparent,
      hoverColor: Colors.transparent,
      highlightColor: Colors.transparent,
      onTap:  () async {    
    context.pushNamed(
      'guestDescription',
      
      
      queryParameters: {'pyme': serializeParam(pymesPrimeItem.reference, ParamType.DocumentReference, ),}.withoutNulls,
      
      
    );
  },
      
      
      child: Container(
      
      width: double.infinity  ,
      
      decoration: BoxDecoration(
        color: Colors.white  ,
        
        
        
        borderRadius: BorderRadius.circular( 8.0  ),
        
        
      ),
    
      
      child: Column(
      
      mainAxisSize: MainAxisSize.max,
      
      
      children: [Stack(
      
      
      children: [ClipRRect(
              
              borderRadius: BorderRadius.circular( 8.0),
              child: Image.network(      
       pymesPrimeItem.imagen1  ,
      width: double.infinity  ,height: 300.0  ,
      fit: BoxFit.contain,
      
      
       
       
    ),
             ),],
    ),
Padding(
             padding: EdgeInsetsDirectional.fromSTEB(
       16.0,
       12.0,
       16.0,
       8.0
  ),
             child: Row(
      
      mainAxisSize: MainAxisSize.max,
      
      
      children: [Text(
      
       pymesPrimeItem.nombrePyme  ,
      
      
      style: FlutterFlowTheme.of(context).bodySmall.override(    fontFamily: 'Poppins',
    
    fontSize: 15.0,
    letterSpacing: 0.0,
    fontWeight: FontWeight.bold,
    
    
    
    
  ),
      
      
    ),],
    ),
           )
           ,
Padding(
             padding: EdgeInsetsDirectional.fromSTEB(
       16.0,
       0.0,
       16.0,
       8.0
  ),
             child: Row(
      
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      
      children: [Text(
      
       '${pymesPrimeItem.municipioPyme}, ${pymesPrimeItem.estadoPyme}'  ,
      
      
      style: FlutterFlowTheme.of(context).bodySmall.override(    fontFamily: 'Poppins',
    
    fontSize: 14.0,
    letterSpacing: 0.0,
    fontWeight: FontWeight.w500,
    
    
    
    
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
           ;
  },
      
      
    );
    },
  )
  ,
           )
           ,
if (FFAppState().BuscarA) Padding(
             padding: EdgeInsetsDirectional.fromSTEB(
       0.0,
       25.0,
       0.0,
       0.0
  ),
             child: Builder(builder: (context) {
      
      final pymesPrimeBuscador = _model.simpleSearchResults.map((e) => e).toList();
      return ListView.builder(
      
      padding: EdgeInsets.zero,
      
      primary: false,
      shrinkWrap: true,
      scrollDirection: Axis.vertical,
      itemCount: pymesPrimeBuscador.length,
      
      itemBuilder: (context,  pymesPrimeBuscadorIndex) {
    final pymesPrimeBuscadorItem = pymesPrimeBuscador[pymesPrimeBuscadorIndex];
            return Padding(
             padding: EdgeInsetsDirectional.fromSTEB(
       16.0,
       0.0,
       16.0,
       12.0
  ),
             child: InkWell(
      splashColor: Colors.transparent,
      focusColor: Colors.transparent,
      hoverColor: Colors.transparent,
      highlightColor: Colors.transparent,
      onTap:  () async {    
    context.pushNamed(
      'guestDescription',
      
      
      queryParameters: {'pyme': serializeParam(pymesPrimeBuscadorItem.reference, ParamType.DocumentReference, ),}.withoutNulls,
      
      
    );
  },
      
      
      child: Container(
      
      width: double.infinity  ,
      
      decoration: BoxDecoration(
        color: Colors.white  ,
        
        
        
        borderRadius: BorderRadius.circular( 8.0  ),
        
        
      ),
    
      
      child: Column(
      
      mainAxisSize: MainAxisSize.max,
      
      
      children: [Stack(
      
      
      children: [ClipRRect(
              
              borderRadius: BorderRadius.circular( 8.0),
              child: Image.network(      
       pymesPrimeBuscadorItem.imagen1  ,
      width: double.infinity  ,height: 300.0  ,
      fit: BoxFit.contain,
      
      
       
       
    ),
             ),],
    ),
Padding(
             padding: EdgeInsetsDirectional.fromSTEB(
       16.0,
       12.0,
       16.0,
       8.0
  ),
             child: Row(
      
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      
      children: [Text(
      
       '${pymesPrimeBuscadorItem.municipioPyme}, ${pymesPrimeBuscadorItem.estadoPyme}'  ,
      
      
      style: FlutterFlowTheme.of(context).bodySmall.override(    fontFamily: 'Poppins',
    
    fontSize: 16.0,
    letterSpacing: 0.0,
    fontWeight: FontWeight.bold,
    
    
    
    
  ),
      
      
    ),],
    ),
           )
           ,
Padding(
             padding: EdgeInsetsDirectional.fromSTEB(
       16.0,
       0.0,
       16.0,
       8.0
  ),
             child: Row(
      
      mainAxisSize: MainAxisSize.max,
      
      
      children: [Text(
      
       pymesPrimeBuscadorItem.nombrePyme  ,
      
      
      style: FlutterFlowTheme.of(context).bodySmall.override(    fontFamily: 'Poppins',
    
    fontSize: 15.0,
    letterSpacing: 0.0,
    fontWeight: FontWeight.bold,
    
    
    
    
  ),
      
      
    ),],
    ),
           )
           ,
Padding(
             padding: EdgeInsetsDirectional.fromSTEB(
       16.0,
       0.0,
       16.0,
       8.0
  ),
             child: Row(
      
      mainAxisSize: MainAxisSize.max,
      
      
      children: [Text(
      
       pymesPrimeBuscadorItem.nombreEncargado  ,
      
      
      style: FlutterFlowTheme.of(context).bodyMedium.override(    fontFamily: 'Noto Sans Old Permic',
    
    
    letterSpacing: 0.0,
    fontWeight: FontWeight.bold,
    
    
    
    
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
           ;
  },
      
      
    );
    },
  )
  ,
           )
           ,],
    ),
      ),
           )
           ,
      ),
    ),
)
;
      },
    )
    ;
  }

  
}
