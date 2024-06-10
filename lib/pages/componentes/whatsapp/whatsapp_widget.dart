import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
      import 'whatsapp_model.dart';
      export 'whatsapp_model.dart';
    
class WhatsappWidget extends StatefulWidget {
  const WhatsappWidget({super.key }) ;

  

  @override
  State<WhatsappWidget> createState() => _WhatsappWidgetState();
}

class _WhatsappWidgetState extends State<WhatsappWidget>  {
  late WhatsappModel _model;



@override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }


  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => WhatsappModel());

    _model.textFieldTextController ??= TextEditingController();
_model.textFieldFocusNode ??= FocusNode();

    
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
      
      width: double.infinity  ,height: 400.0  ,
      
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
      
      
      children: [Padding(
             padding: EdgeInsetsDirectional.fromSTEB(
       0.0,
       0.0,
       0.0,
       45.0
  ),
             child: Row(
      
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      
      children: [Align(
      alignment: AlignmentDirectional( 0.0  ,  0.0  ),
      child: Text(
      
       'WhatsApp'  ,
      textAlign: TextAlign.start,
      
      style: FlutterFlowTheme.of(context).headlineSmall.override(    fontFamily: 'Poppins',
    
    fontSize: 20.0,
    letterSpacing: 0.0,
    fontWeight: FontWeight.bold,
    
    
    
    
  ),
      
      
    ),
    )
    ,
FlutterFlowIconButton(
      
      borderColor: Colors.transparent  ,
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
           )
           ,
    FlutterFlowDropDown<String>(
      
      controller: _model.dropDownValueController ??= FormFieldController<String>(null),
      options:  ['Dirección Ejecutiva IKAM - 5563484957','Producción IKAM - 5636687514','Atención IKAM - 5549945574']  ,
      
      onChanged: (val) => setState(() => _model.dropDownValue = val),
      width: 410.0  ,height: 50.0  ,
      
      
      
      textStyle: FlutterFlowTheme.of(context).bodyMedium.override(    fontFamily: 'Noto Sans Old Permic',
    
    
    letterSpacing: 0.0,
    
    
    
    
    
  ),
      hintText: 'Selecciona el número'  ,
      
      
      icon:  Icon(
      
      Icons.keyboard_arrow_down_rounded,
      color: FlutterFlowTheme.of(context).secondaryText  ,
      size: 24.0  ,
    )  ,
      fillColor: FlutterFlowTheme.of(context).secondaryBackground  ,
      elevation: 2.0,
      borderColor: FlutterFlowTheme.of(context).alternate  ,
      borderWidth: 2.0,
      borderRadius: 8.0,
      margin: EdgeInsetsDirectional.fromSTEB(
       16.0,
       4.0,
       16.0,
       4.0
  ),
      hidesUnderline: true,
      
      isOverButton: true,
      isSearchable: false,
      isMultiSelect: false,
      
      
      
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
      
      
      controller: _model.textFieldTextController ,
      focusNode: _model.textFieldFocusNode,
      
      
      
      autofocus: false  ,
      
      
      
      
      obscureText: false,
      decoration: InputDecoration(
    
    labelText: 'Mensaje'  ,
    labelStyle: FlutterFlowTheme.of(context).titleSmall.override(    fontFamily: 'Noto Sans Old Permic',
    color:  FlutterFlowTheme.of(context).secondaryText  ,
    fontSize: 14.0,
    letterSpacing: 0.0,
    
    
    
    
    
  ),
    
    
    hintStyle: FlutterFlowTheme.of(context).bodyMedium.override(    fontFamily: 'Noto Sans Old Permic',
    
    
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
    
    
  ),
      style: FlutterFlowTheme.of(context).bodyMedium.override(    fontFamily: 'Noto Sans Old Permic',
    
    
    letterSpacing: 0.0,
    
    
    
    
    
  ),
      
      maxLines: 15  ,
      minLines: 1  ,
      
      
      
      
      
      validator: _model.textFieldTextControllerValidator.asValidator(context),
      
    ),),
           )
           ,
Align(
      alignment: AlignmentDirectional( 0.0  ,  0.0  ),
      child: Padding(
             padding: EdgeInsets.all( 40.0),
             child: FFButtonWidget(
      
      onPressed:  () async {await launchURL('https://api.whatsapp.com/send?phone=${_model.dropDownValue}&text=${_model.textFieldTextController.text}');},
      text: 'Enviar Mensaje'  ,
      
      options: FFButtonOptions(
        width: 180.0  ,
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
    fontSize: 20.0,
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
