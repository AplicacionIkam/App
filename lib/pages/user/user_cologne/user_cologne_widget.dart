import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
      import 'user_cologne_model.dart';
      export 'user_cologne_model.dart';
    
class UserCologneWidget extends StatefulWidget {
  const UserCologneWidget({super.key , required this.municipio, }) ;

  final DocumentReference? municipio;

  @override
  State<UserCologneWidget> createState() => _UserCologneWidgetState();
}

class _UserCologneWidgetState extends State<UserCologneWidget>  {
  late UserCologneModel _model;

final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => UserCologneModel());

    
    
  }


  @override
  void dispose() {
    _model.dispose();

    
    super.dispose();
  }

  
  @override
  Widget build(BuildContext context) {
    
    return StreamBuilder<MunicipioRecord>(
              stream: MunicipioRecord.getDocument(widget.municipio!),
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
                final userCologneMunicipioRecord = snapshot.data!;
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
       15.0
  ),
             child: SingleChildScrollView(
        
        
        
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
      mainAxisAlignment: MainAxisAlignment.center,
      
      children: [Text(
      
       'Colonias'  ,
      
      
      style: FlutterFlowTheme.of(context).displaySmall.override(    fontFamily: 'Poppins',
    color:  Color(0xFFF1F4F8)  ,
    
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
      mainAxisAlignment: MainAxisAlignment.start,
      
      children: [Padding(
             padding: EdgeInsets.all( 15.0),
             child: StreamBuilder<List<ColoniaRecord>>(
      stream: queryColoniaRecord(queryBuilder: (coloniaRecord) => coloniaRecord.where('refMunicipio', isEqualTo: userCologneMunicipioRecord.reference, ).orderBy('nombreCol'),),
      builder: (context, snapshot) {
        // Customize what your widget looks like when it's loading.
        if (!snapshot.hasData) {
          return Center(child: SizedBox(
          width: 50.0,
          height: 50.0,
          child: CircularProgressIndicator(valueColor: AlwaysStoppedAnimation<Color>(FlutterFlowTheme.of(context).primary,),),
        ),);
        }
        List<ColoniaRecord> listViewColoniaRecordList = snapshot.data!;
         return ListView.builder(
      
      padding: EdgeInsets.zero,
      
      primary: false,
      shrinkWrap: true,
      scrollDirection: Axis.vertical,
      itemCount: listViewColoniaRecordList.length,
      
      itemBuilder: (context,  listViewIndex) {
    final listViewColoniaRecord = listViewColoniaRecordList[listViewIndex];
            return Padding(
             padding: EdgeInsets.all( 10.0),
             child: InkWell(
      splashColor: Colors.transparent,
      focusColor: Colors.transparent,
      hoverColor: Colors.transparent,
      highlightColor: Colors.transparent,
      onTap:  () async {    
    context.pushNamed(
      'userfilCologne',
      
      
      queryParameters: {'colonia': serializeParam(listViewColoniaRecord.reference, ParamType.DocumentReference, ),}.withoutNulls,
      
      
    );
  },
      
      
      child: Material(
    color: Colors.transparent,
    elevation: 3.0  ,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.only(
      bottomLeft: Radius.circular( 5.0  ),
      bottomRight: Radius.circular( 5.0  ),
      topLeft: Radius.circular( 5.0  ),
      topRight: Radius.circular( 5.0  ),
    ),),
    child: Container(
      
      width: 48.0  ,height: 50.0  ,
      
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).secondaryBackground  ,
        
        
        
        borderRadius: BorderRadius.only(
      bottomLeft: Radius.circular( 5.0  ),
      bottomRight: Radius.circular( 5.0  ),
      topLeft: Radius.circular( 5.0  ),
      topRight: Radius.circular( 5.0  ),
    ),
        
        
      ),
    
      
      child: Row(
      
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      
      children: [Padding(
             padding: EdgeInsetsDirectional.fromSTEB(
       15.0,
       0.0,
       0.0,
       0.0
  ),
             child:  Icon(
      
      Icons.share_location_rounded,
      color: Color(0xFF222C57)  ,
      size: 30.0  ,
    )  ,
           )
           ,
Padding(
             padding: EdgeInsetsDirectional.fromSTEB(
       25.0,
       0.0,
       25.0,
       0.0
  ),
             child: Text(
      
       listViewColoniaRecord.nombreCol  ,
      
      
      style: FlutterFlowTheme.of(context).bodyMedium.override(    fontFamily: 'Noto Sans Old Permic',
    
    fontSize: 18.0,
    letterSpacing: 0.0,
    fontWeight: FontWeight.w600,
    
    
    
    
  ),
      
      
    ),
           )
           ,
Align(
      alignment: AlignmentDirectional( 1.0  ,  0.0  ),
      child: Padding(
             padding: EdgeInsetsDirectional.fromSTEB(
       0.0,
       0.0,
       15.0,
       0.0
  ),
             child:  Icon(
      
      Icons.chevron_right_rounded,
      color: Color(0xFF222C57)  ,
      size: 24.0  ,
    )  ,
           )
           ,
    )
    ,],
    ),
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
