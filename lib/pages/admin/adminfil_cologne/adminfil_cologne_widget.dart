import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
      import 'adminfil_cologne_model.dart';
      export 'adminfil_cologne_model.dart';
    
class AdminfilCologneWidget extends StatefulWidget {
  const AdminfilCologneWidget({super.key , required this.colonia, }) ;

  final DocumentReference? colonia;

  @override
  State<AdminfilCologneWidget> createState() => _AdminfilCologneWidgetState();
}

class _AdminfilCologneWidgetState extends State<AdminfilCologneWidget>  {
  late AdminfilCologneModel _model;

final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AdminfilCologneModel());

    
    
  }


  @override
  void dispose() {
    _model.dispose();

    
    super.dispose();
  }

  
  @override
  Widget build(BuildContext context) {
    
    return StreamBuilder<ColoniaRecord>(
              stream: ColoniaRecord.getDocument(widget.colonia!),
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
                final adminfilCologneColoniaRecord = snapshot.data!;
                return GestureDetector(
  onTap: () =>
    _model.unfocusNode.canRequestFocus
      ? FocusScope.of(context).requestFocus(_model.unfocusNode)
      : FocusScope.of(context).unfocus(),
  child: Scaffold(
      key: scaffoldKey,
      
      backgroundColor: Colors.white  ,
      
      
      
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
       25.0
  ),
             child: Column(
      
      mainAxisSize: MainAxisSize.max,
      
      
      children: [Column(
      
      mainAxisSize: MainAxisSize.max,
      
      
      children: [Container(
      
      width: double.infinity  ,height: 70.0  ,
      
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
      
      children: [Padding(
             padding: EdgeInsetsDirectional.fromSTEB(
       24.0,
       4.0,
       24.0,
       4.0
  ),
             child: Row(
      
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.center,
      
      children: [Text(
      
       adminfilCologneColoniaRecord.nombreCol  ,
      
      
      style: FlutterFlowTheme.of(context).displaySmall.override(    fontFamily: 'Poppins',
    color:  Color(0xFFF1F4F8)  ,
    fontSize: 25.0,
    letterSpacing: 0.0,
    
    
    
    
    
  ),
      
      
    ),],
    ),
           )
           ,],
    ),
    ),],
    ),
SingleChildScrollView(
        primary: false,
        
        
        child: Column(
      
      mainAxisSize: MainAxisSize.max,
      
      
      children: [Padding(
             padding: EdgeInsetsDirectional.fromSTEB(
       0.0,
       25.0,
       0.0,
       0.0
  ),
             child: StreamBuilder<List<PymeRecord>>(
      stream: queryPymeRecord(queryBuilder: (pymeRecord) => pymeRecord.where('coloniaPyme', isEqualTo: adminfilCologneColoniaRecord.nombreCol, ),),
      builder: (context, snapshot) {
        // Customize what your widget looks like when it's loading.
        if (!snapshot.hasData) {
          return Center(child: SizedBox(
          width: 50.0,
          height: 50.0,
          child: CircularProgressIndicator(valueColor: AlwaysStoppedAnimation<Color>(FlutterFlowTheme.of(context).primary,),),
        ),);
        }
        List<PymeRecord> listViewPymeRecordList = snapshot.data!;
         return ListView.builder(
      
      padding: EdgeInsets.zero,
      
      primary: false,
      shrinkWrap: true,
      scrollDirection: Axis.vertical,
      itemCount: listViewPymeRecordList.length,
      
      itemBuilder: (context,  listViewIndex) {
    final listViewPymeRecord = listViewPymeRecordList[listViewIndex];
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
      'adminDescription',
      
      
      queryParameters: {'pyme': serializeParam(listViewPymeRecord.reference, ParamType.DocumentReference, ),}.withoutNulls,
      
      
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
       listViewPymeRecord.imagen1  ,
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
      
       listViewPymeRecord.nombrePyme  ,
      
      
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
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      
      children: [Text(
      
       '${listViewPymeRecord.municipioPyme}, ${listViewPymeRecord.estadoPyme}'  ,
      
      
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
           ,],
    ),
      ),],
    ),
           )
           ,
      ),
    ),
)
;
              },
            );
  }

  
}
