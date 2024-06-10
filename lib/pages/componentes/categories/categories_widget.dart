import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
      import 'categories_model.dart';
      export 'categories_model.dart';
    
class CategoriesWidget extends StatefulWidget {
  const CategoriesWidget({super.key }) ;

  

  @override
  State<CategoriesWidget> createState() => _CategoriesWidgetState();
}

class _CategoriesWidgetState extends State<CategoriesWidget>  {
  late CategoriesModel _model;



@override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }


  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CategoriesModel());

    
    
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
       25.0,
       0.0,
       0.0
  ),
             child: Container(
      
      width: double.infinity  ,height: double.infinity  ,
      
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).secondaryBackground  ,
        
        
        
        borderRadius: BorderRadius.only(
      bottomLeft: Radius.circular( 0.0  ),
      bottomRight: Radius.circular( 0.0  ),
      topLeft: Radius.circular( 10.0  ),
      topRight: Radius.circular( 10.0  ),
    ),
        
        
      ),
    
      
      child: Padding(
             padding: EdgeInsets.all( 15.0),
             child: Column(
      
      mainAxisSize: MainAxisSize.max,
      
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [Align(
      alignment: AlignmentDirectional( 0.0  ,  0.0  ),
      child: Row(
      
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      
      children: [Align(
      alignment: AlignmentDirectional( 0.0  ,  0.0  ),
      child: Padding(
             padding: EdgeInsetsDirectional.fromSTEB(
       130.0,
       0.0,
       0.0,
       0.0
  ),
             child: Text(
      
       'Ver más'  ,
      
      
      style: FlutterFlowTheme.of(context).titleSmall.override(    fontFamily: 'Poppins',
    color:  Colors.black  ,
    fontSize: 18.0,
    letterSpacing: 0.0,
    fontWeight: FontWeight.bold,
    
    
    
    
  ),
      
      
    ),
           )
           ,
    )
    ,
FlutterFlowIconButton(
      
      
      borderRadius: 20.0  ,
      borderWidth: 1.0  ,
      buttonSize: 40.0  ,
      
      
      
      
      
      icon:  Icon(
      
      Icons.close_rounded,
      color: FlutterFlowTheme.of(context).secondaryText  ,
      size: 24.0  ,
    )  ,
      
      onPressed:  () async {context.safePop();},
    ),],
    ),
    )
    ,
Expanded(
      
      child: StreamBuilder<List<CategoriaRecord>>(
      stream: queryCategoriaRecord(),
      builder: (context, snapshot) {
        // Customize what your widget looks like when it's loading.
        if (!snapshot.hasData) {
          return Center(child: SizedBox(
          width: 50.0,
          height: 50.0,
          child: CircularProgressIndicator(valueColor: AlwaysStoppedAnimation<Color>(FlutterFlowTheme.of(context).primary,),),
        ),);
        }
        List<CategoriaRecord> gridViewCategoriaRecordList = snapshot.data!;
         return GridView.builder(
      
      padding: EdgeInsets.zero,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
      crossAxisCount: 2  ,
      crossAxisSpacing: 10.0  ,
      mainAxisSpacing: 10.0  ,
      childAspectRatio: 1.0  ,
    ),
    
      
      
      scrollDirection: Axis.vertical,
      itemCount: gridViewCategoriaRecordList.length,
      itemBuilder: (context,  gridViewIndex) {
    final gridViewCategoriaRecord = gridViewCategoriaRecordList[gridViewIndex];
            return ListView(
      
      padding: EdgeInsets.zero,
      
      
      
      scrollDirection: Axis.vertical,
      
      
      children: [Padding(
             padding: EdgeInsets.all( 10.0),
             child: Container(
      
      width: double.infinity  ,height: 100.0  ,
      
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).secondaryBackground  ,
        
        
        
        
        
        
      ),
    
      
      child: Column(
      
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.start,
      
      children: [Container(
      
      width: 100.0  ,height: 100.0  ,
      
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).secondaryBackground  ,
        
        
        
        
        
        
      ),
    
      
      child: Column(
      
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.start,
      
      children: [Row(
      
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.center,
      
      children: [Text(
      
       gridViewCategoriaRecord.nombreCate  ,
      
      
      style: FlutterFlowTheme.of(context).titleSmall.override(    fontFamily: 'Noto Sans Old Permic',
    color:  Colors.black  ,
    fontSize: 14.0,
    letterSpacing: 0.0,
    fontWeight: FontWeight.w600,
    
    
    
    
  ),
      
      
    ),],
    ),
Padding(
             padding: EdgeInsetsDirectional.fromSTEB(
       5.0,
       10.0,
       5.0,
       5.0
  ),
             child: Row(
      
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.center,
      
      children: [ClipRRect(
              
              borderRadius: BorderRadius.circular( 8.0),
              child: Image.network(      
       gridViewCategoriaRecord.imagenCat  ,
      width: 80.0  ,height: 70.0  ,
      fit: BoxFit.contain,
      
      
       
       
    ),
             ),],
    ),
           )
           ,],
    ),
    ),],
    ),
    ),
           )
           ,],
      
      
    );
  },
      
    );
      },
    )
    ,
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
