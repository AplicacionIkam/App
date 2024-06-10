import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_expanded_image_view.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_video_player.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/pages/componentes/whatsapp/whatsapp_widget.dart';
import 'pyme_home_widget.dart' show PymeHomeWidget;
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher.dart';
class PymeHomeModel extends FlutterFlowModel<PymeHomeWidget> {
  
  

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for Carousel widget.
      CarouselController? carouselController;

      int carouselCurrentIndex = 1;
      

  
  

  @override
  void initState(BuildContext context) {
    

    
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    
    
  }

  

  
  
  
}
