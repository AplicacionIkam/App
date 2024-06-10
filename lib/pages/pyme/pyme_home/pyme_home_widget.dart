import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_expanded_image_view.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_video_player.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/pages/componentes/whatsapp/whatsapp_widget.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher.dart';
      import 'pyme_home_model.dart';
      export 'pyme_home_model.dart';
    
class PymeHomeWidget extends StatefulWidget {
  const PymeHomeWidget({super.key }) ;

  

  @override
  State<PymeHomeWidget> createState() => _PymeHomeWidgetState();
}

class _PymeHomeWidgetState extends State<PymeHomeWidget>  {
  late PymeHomeModel _model;

final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PymeHomeModel());

    
    
  }


  @override
  void dispose() {
    _model.dispose();

    
    super.dispose();
  }

  
  @override
  Widget build(BuildContext context) {
    
    return StreamBuilder<List<PymeRecord>>(
      stream: queryPymeRecord(singleRecord: true,),
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
        List<PymeRecord> pymeHomePymeRecordList = snapshot.data!;
        // Return an empty Container when the item does not exist.
           if (snapshot.data!.isEmpty) {
             return Container();
           }final pymeHomePymeRecord = pymeHomePymeRecordList.isNotEmpty ? pymeHomePymeRecordList.first : null; return GestureDetector(
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
      'pymeHome'
      
      
      
      
      
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
      onTap:  () async {await showModalBottomSheet(
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
        child: WhatsappWidget(  ),
      )
,
)
;
    },
  ).then((value) => safeSetState(() {}));
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
      
      
      children: [ FaIcon(
        
        FontAwesomeIcons.whatsapp,
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
      
       'WhatsApp'  ,
      
      
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
      
      
      children: [Padding(
             padding: EdgeInsetsDirectional.fromSTEB(
       0.0,
       20.0,
       0.0,
       0.0
  ),
             child: Stack(
      
      
      children: [Align(
      alignment: AlignmentDirectional( 0.0  ,  0.0  ),
      child: Text(
      
       pymeHomePymeRecord!.nombrePyme  ,
      
      
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
if (pymeHomePymeRecord?.hasVideo() ?? true) Padding(
             padding: EdgeInsets.all( 20.0),
             child:     FlutterFlowVideoPlayer(
      
      path:  pymeHomePymeRecord!.video  ,
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
       pymeHomePymeRecord!.imagen1  ,
      
      fit: BoxFit.contain,
      
      
       
       
    ),
        allowRotation: false,
        tag:  pymeHomePymeRecord!.imagen1  ,
        useHeroAnimation: true,
      ),
    ),
  );},
      
      
      child: Hero(tag:  pymeHomePymeRecord!.imagen1  , transitionOnUserGestures: true, child: ClipRRect(
              
              borderRadius: BorderRadius.circular( 8.0),
              child: Image.network(      
       pymeHomePymeRecord!.imagen1  ,
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
       pymeHomePymeRecord!.imagen2  ,
      
      fit: BoxFit.contain,
      
      
       
       
    ),
        allowRotation: false,
        tag:  pymeHomePymeRecord!.imagen2  ,
        useHeroAnimation: true,
      ),
    ),
  );},
      
      
      child: Hero(tag:  pymeHomePymeRecord!.imagen2  , transitionOnUserGestures: true, child: ClipRRect(
              
              borderRadius: BorderRadius.circular( 8.0),
              child: Image.network(      
       pymeHomePymeRecord!.imagen2  ,
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
       pymeHomePymeRecord!.imagen3  ,
      
      fit: BoxFit.contain,
      
      
       
       
    ),
        allowRotation: false,
        tag:  pymeHomePymeRecord!.imagen3  ,
        useHeroAnimation: true,
      ),
    ),
  );},
      
      
      child: Hero(tag:  pymeHomePymeRecord!.imagen3  , transitionOnUserGestures: true, child: ClipRRect(
              
              borderRadius: BorderRadius.circular( 8.0),
              child: Image.network(      
       pymeHomePymeRecord!.imagen3  ,
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
      
       valueOrDefault<String>(pymeHomePymeRecord?.nombreEncargado, 'true',)  ,
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
      
       'Dirección: ${pymeHomePymeRecord?.direccion}'  ,
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
      
       pymeHomePymeRecord!.horarioApertura  ,
      
      
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
      
       pymeHomePymeRecord!.horarioCierre  ,
      
      
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
      path: pymeHomePymeRecord!.numeroLocal,
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
      onTap:  () async {await launchURL('https://api.whatsapp.com/send?phone=${pymeHomePymeRecord?.numeroCel}&text=');},
      
      
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
      onTap:  () async {await launchURL(pymeHomePymeRecord!.urlFacebook);},
      
      
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
      onTap:  () async {await launchURL(pymeHomePymeRecord!.urlInstagram);},
      
      
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
      onTap:  () async {await launchURL(pymeHomePymeRecord!.urlTiktok);},
      
      
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
      onTap:  () async {await launchURL(pymeHomePymeRecord!.urlTwitter);},
      
      
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
    )
    ;
  }

  
}
