import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_expanded_image_view.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_video_player.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher.dart';
      import 'admin_description_model.dart';
      export 'admin_description_model.dart';
    
class AdminDescriptionWidget extends StatefulWidget {
  const AdminDescriptionWidget({super.key , required this.pyme, }) ;

  final DocumentReference? pyme;

  @override
  State<AdminDescriptionWidget> createState() => _AdminDescriptionWidgetState();
}

class _AdminDescriptionWidgetState extends State<AdminDescriptionWidget>  {
  late AdminDescriptionModel _model;

final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AdminDescriptionModel());

    
    
  }


  @override
  void dispose() {
    _model.dispose();

    
    super.dispose();
  }

  
  @override
  Widget build(BuildContext context) {
    
    return StreamBuilder<PymeRecord>(
              stream: PymeRecord.getDocument(widget.pyme!),
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
                final adminDescriptionPymeRecord = snapshot.data!;
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
      iconTheme: IconThemeData(color:  Colors.white  ),
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
        child: Padding(
             padding: EdgeInsets.all( 15.0),
             child: SingleChildScrollView(
        
        
        
        child: Column(
      
      mainAxisSize: MainAxisSize.max,
      
      
      children: [Align(
      alignment: AlignmentDirectional( 1.0  ,  0.0  ),
      child: Padding(
             padding: EdgeInsetsDirectional.fromSTEB(
       0.0,
       15.0,
       0.0,
       0.0
  ),
             child: Row(
      
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.end,
      
      children: [Align(
      alignment: AlignmentDirectional( 1.0  ,  0.0  ),
      child: Padding(
             padding: EdgeInsetsDirectional.fromSTEB(
       0.0,
       0.0,
       10.0,
       0.0
  ),
             child: InkWell(
      splashColor: Colors.transparent,
      focusColor: Colors.transparent,
      hoverColor: Colors.transparent,
      highlightColor: Colors.transparent,
      onTap:  () async {    
    context.pushNamed(
      'adminUpdate',
      
      
      queryParameters: {'userRef': serializeParam(adminDescriptionPymeRecord.reference, ParamType.DocumentReference, ),}.withoutNulls,
      
      
    );
  },
      
      
      child:  FaIcon(
        
        FontAwesomeIcons.edit,
        color: Color(0xFF222C57)  ,
        size: 25.0  ,
      )  ,
    )
    ,
           )
           ,
    )
    ,
Align(
      alignment: AlignmentDirectional( 1.0  ,  0.0  ),
      child: InkWell(
      splashColor: Colors.transparent,
      focusColor: Colors.transparent,
      hoverColor: Colors.transparent,
      highlightColor: Colors.transparent,
      onTap:  () async {await adminDescriptionPymeRecord.reference.delete();
context.safePop();},
      
      
      child:  Icon(
      
      Icons.delete,
      color: Color(0xFFD50F16)  ,
      size: 30.0  ,
    )  ,
    )
    ,
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
       5.0,
       0.0,
       0.0
  ),
             child: Stack(
      
      
      children: [Align(
      alignment: AlignmentDirectional( 0.0  ,  0.0  ),
      child: Text(
      
       adminDescriptionPymeRecord.nombrePyme  ,
      
      
      style: FlutterFlowTheme.of(context).displaySmall.override(    fontFamily: 'Noto Sans Old Permic',
    color:  Colors.black  ,
    fontSize: 20.0,
    letterSpacing: 0.0,
    fontWeight: FontWeight.w900,
    
    
    
    
  ),
      
      
    ),
    )
    ,],
    ),
           )
           ,
if (adminDescriptionPymeRecord.hasVideo()) Padding(
             padding: EdgeInsets.all( 20.0),
             child:     FlutterFlowVideoPlayer(
      
      path:  adminDescriptionPymeRecord.video  ,
      videoType: VideoType.network,
      
      
      autoPlay: false,
      looping: true,
      showControls: true,
      allowFullScreen: true,
      allowPlaybackSpeedMenu: true,
      
      
    ),
           )
           ,
Padding(
             padding: EdgeInsetsDirectional.fromSTEB(
       0.0,
       10.0,
       0.0,
       10.0
  ),
             child: Container(
        width: double.infinity  ,height: 180.0  ,
        child:       CarouselSlider(
        
        
        items: [InkWell(
      splashColor: Colors.transparent,
      focusColor: Colors.transparent,
      hoverColor: Colors.transparent,
      highlightColor: Colors.transparent,
      onTap:  () async {await Navigator.push(
    context,
    PageTransition(
      type: PageTransitionType.fade,
      child: FlutterFlowExpandedImageView(
        image: Image.network(      
       adminDescriptionPymeRecord.imagen1  ,
      
      fit: BoxFit.contain,
      
      
       
       
    ),
        allowRotation: false,
        tag:  adminDescriptionPymeRecord.imagen1  ,
        useHeroAnimation: true,
      ),
    ),
  );},
      
      
      child: Hero(tag:  adminDescriptionPymeRecord.imagen1  , transitionOnUserGestures: true, child: ClipRRect(
              
              borderRadius: BorderRadius.circular( 8.0),
              child: Image.network(      
       adminDescriptionPymeRecord.imagen1  ,
      height: double.infinity  ,
      fit: BoxFit.cover,
      
      
       
       
    ),
             ),),
    )
    ,
InkWell(
      splashColor: Colors.transparent,
      focusColor: Colors.transparent,
      hoverColor: Colors.transparent,
      highlightColor: Colors.transparent,
      onTap:  () async {await Navigator.push(
    context,
    PageTransition(
      type: PageTransitionType.fade,
      child: FlutterFlowExpandedImageView(
        image: Image.network(      
       adminDescriptionPymeRecord.imagen2  ,
      
      fit: BoxFit.contain,
      
      
       
       
    ),
        allowRotation: false,
        tag:  adminDescriptionPymeRecord.imagen2  ,
        useHeroAnimation: true,
      ),
    ),
  );},
      
      
      child: Hero(tag:  adminDescriptionPymeRecord.imagen2  , transitionOnUserGestures: true, child: ClipRRect(
              
              borderRadius: BorderRadius.circular( 8.0),
              child: Image.network(      
       adminDescriptionPymeRecord.imagen2  ,
      width: 300.0  ,height: 200.0  ,
      fit: BoxFit.cover,
      
      
       
       
    ),
             ),),
    )
    ,
InkWell(
      splashColor: Colors.transparent,
      focusColor: Colors.transparent,
      hoverColor: Colors.transparent,
      highlightColor: Colors.transparent,
      onTap:  () async {await Navigator.push(
    context,
    PageTransition(
      type: PageTransitionType.fade,
      child: FlutterFlowExpandedImageView(
        image: Image.network(      
       adminDescriptionPymeRecord.imagen3  ,
      
      fit: BoxFit.contain,
      
      
       
       
    ),
        allowRotation: false,
        tag:  adminDescriptionPymeRecord.imagen3  ,
        useHeroAnimation: true,
      ),
    ),
  );},
      
      
      child: Hero(tag:  adminDescriptionPymeRecord.imagen3  , transitionOnUserGestures: true, child: ClipRRect(
              
              borderRadius: BorderRadius.circular( 8.0),
              child: Image.network(      
       adminDescriptionPymeRecord.imagen3  ,
      width: 300.0  ,height: 200.0  ,
      fit: BoxFit.cover,
      
      
       
       
    ),
             ),),
    )
    ,],
        carouselController: _model.carouselController ??= CarouselController(),
        options: CarouselOptions(
          initialPage: 1,
          viewportFraction: 0.5,
          disableCenter: true,
          enlargeCenterPage: true,
          enlargeFactor: 0.25,
          enableInfiniteScroll: true,
          scrollDirection: Axis.horizontal,
          autoPlay:  false  ,
          
          onPageChanged: (index, _) => _model.carouselCurrentIndex = index,
        ),
      )
    ,
      ),
           )
           ,
Align(
      alignment: AlignmentDirectional( 0.0  ,  0.0  ),
      child: Padding(
             padding: EdgeInsets.all( 10.0),
             child: Text(
      
       adminDescriptionPymeRecord.nombreEncargado  ,
      textAlign: TextAlign.center,
      
      style: FlutterFlowTheme.of(context).labelMedium.override(    fontFamily: 'Noto Sans Old Permic',
    color:  Colors.black  ,
    fontSize: 14.0,
    letterSpacing: 0.0,
    fontWeight: FontWeight.w500,
    
    
    
    
  ),
      
      
    ),
           )
           ,
    )
    ,
Align(
      alignment: AlignmentDirectional( 0.0  ,  0.0  ),
      child: Padding(
             padding: EdgeInsets.all( 10.0),
             child: Text(
      
       'Dirección: ${adminDescriptionPymeRecord.direccion}'  ,
      textAlign: TextAlign.center,
      
      style: FlutterFlowTheme.of(context).bodyMedium.override(    fontFamily: 'Noto Sans Old Permic',
    color:  Colors.black  ,
    
    letterSpacing: 0.0,
    fontWeight: FontWeight.w500,
    
    
    
    
  ),
      
      
    ),
           )
           ,
    )
    ,
Padding(
             padding: EdgeInsets.all( 10.0),
             child: Text(
      
       'Horario de atención'  ,
      
      
      style: FlutterFlowTheme.of(context).bodyMedium.override(    fontFamily: 'Noto Sans Old Permic',
    color:  Colors.black  ,
    
    letterSpacing: 0.0,
    fontWeight: FontWeight.w500,
    
    
    
    
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
             child: SingleChildScrollView(scrollDirection: Axis.horizontal,  child: Row(
      
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.center,
      
      children: [Padding(
             padding: EdgeInsets.all( 10.0),
             child: Text(
      
       adminDescriptionPymeRecord.horarioApertura  ,
      
      
      style: FlutterFlowTheme.of(context).bodyMedium.override(    fontFamily: 'Noto Sans Old Permic',
    color:  Colors.black  ,
    
    letterSpacing: 0.0,
    fontWeight: FontWeight.w500,
    
    
    
    
  ),
      
      
    ),
           )
           ,],
    ),),
           )
           ,
Padding(
             padding: EdgeInsetsDirectional.fromSTEB(
       10.0,
       0.0,
       10.0,
       0.0
  ),
             child: SingleChildScrollView(scrollDirection: Axis.horizontal,  child: Row(
      
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.center,
      
      children: [Padding(
             padding: EdgeInsetsDirectional.fromSTEB(
       10.0,
       0.0,
       10.0,
       10.0
  ),
             child: Text(
      
       adminDescriptionPymeRecord.horarioCierre  ,
      
      
      style: FlutterFlowTheme.of(context).bodyMedium.override(    fontFamily: 'Noto Sans Old Permic',
    color:  Colors.black  ,
    
    letterSpacing: 0.0,
    fontWeight: FontWeight.w500,
    
    
    
    
  ),
      
      
    ),
           )
           ,],
    ),),
           )
           ,
Padding(
             padding: EdgeInsets.all( 15.0),
             child: Text(
      
       'Redes sociales:'  ,
      
      
      style: FlutterFlowTheme.of(context).bodyMedium.override(    fontFamily: 'Noto Sans Old Permic',
    color:  Colors.black  ,
    
    letterSpacing: 0.0,
    fontWeight: FontWeight.w500,
    
    
    
    
  ),
      
      
    ),
           )
           ,
Padding(
             padding: EdgeInsetsDirectional.fromSTEB(
       0.0,
       0.0,
       0.0,
       15.0
  ),
             child: Row(
      
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.center,
      
      children: [Padding(
             padding: EdgeInsets.all( 10.0),
             child: InkWell(
      splashColor: Colors.transparent,
      focusColor: Colors.transparent,
      hoverColor: Colors.transparent,
      highlightColor: Colors.transparent,
      onTap:  () async {await launchUrl(Uri(
      scheme: 'tel',
      path: adminDescriptionPymeRecord.numeroLocal,
    ));},
      
      
      child:  Icon(
      
      Icons.call_rounded,
      color: Color(0xFF1405BA)  ,
      size: 24.0  ,
    )  ,
    )
    ,
           )
           ,
Padding(
             padding: EdgeInsets.all( 10.0),
             child: InkWell(
      splashColor: Colors.transparent,
      focusColor: Colors.transparent,
      hoverColor: Colors.transparent,
      highlightColor: Colors.transparent,
      onTap:  () async {await launchURL('https://api.whatsapp.com/send?phone=${adminDescriptionPymeRecord.numeroCel}&text=');},
      
      
      child:  FaIcon(
        
        FontAwesomeIcons.whatsappSquare,
        color: Color(0xFF0CB200)  ,
        size: 24.0  ,
      )  ,
    )
    ,
           )
           ,
Padding(
             padding: EdgeInsets.all( 10.0),
             child: InkWell(
      splashColor: Colors.transparent,
      focusColor: Colors.transparent,
      hoverColor: Colors.transparent,
      highlightColor: Colors.transparent,
      onTap:  () async {await launchURL(adminDescriptionPymeRecord.urlFacebook);},
      
      
      child:  FaIcon(
        
        FontAwesomeIcons.facebookSquare,
        color: Color(0xFF1E28F2)  ,
        size: 24.0  ,
      )  ,
    )
    ,
           )
           ,
Padding(
             padding: EdgeInsets.all( 10.0),
             child: InkWell(
      splashColor: Colors.transparent,
      focusColor: Colors.transparent,
      hoverColor: Colors.transparent,
      highlightColor: Colors.transparent,
      onTap:  () async {await launchURL(adminDescriptionPymeRecord.urlInstagram);},
      
      
      child:  FaIcon(
        
        FontAwesomeIcons.instagramSquare,
        color: Color(0xFFEE10EE)  ,
        size: 24.0  ,
      )  ,
    )
    ,
           )
           ,
Padding(
             padding: EdgeInsets.all( 10.0),
             child: InkWell(
      splashColor: Colors.transparent,
      focusColor: Colors.transparent,
      hoverColor: Colors.transparent,
      highlightColor: Colors.transparent,
      onTap:  () async {await launchURL(adminDescriptionPymeRecord.urlTiktok);},
      
      
      child:  FaIcon(
        
        FontAwesomeIcons.tiktok,
        color: Colors.black  ,
        size: 24.0  ,
      )  ,
    )
    ,
           )
           ,
Padding(
             padding: EdgeInsets.all( 10.0),
             child: InkWell(
      splashColor: Colors.transparent,
      focusColor: Colors.transparent,
      hoverColor: Colors.transparent,
      highlightColor: Colors.transparent,
      onTap:  () async {await launchURL(adminDescriptionPymeRecord.urlTwitter);},
      
      
      child:  FaIcon(
        
        FontAwesomeIcons.mapMarkerAlt,
        color: Color(0xFF26A141)  ,
        size: 24.0  ,
      )  ,
    )
    ,
           )
           ,],
    ),
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
            );
  }

  
}
