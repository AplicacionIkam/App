import 'package:flutter/material.dart';
import '/backend/backend.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {
    
    
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  

      bool _Buscar  = false;
    bool get Buscar => _Buscar;
    set Buscar(bool _value) {
      _Buscar = _value;
      
    }
    
    
  
    bool _BuscarA  = false;
    bool get BuscarA => _BuscarA;
    set BuscarA(bool _value) {
      _BuscarA = _value;
      
    }
    
    
  
    bool _BuscarM  = false;
    bool get BuscarM => _BuscarM;
    set BuscarM(bool _value) {
      _BuscarM = _value;
      
    }
    
    
  
    String _img  = '';
    String get img => _img;
    set img(String _value) {
      _img = _value;
      
    }
    
    
  
    String _img2  = '';
    String get img2 => _img2;
    set img2(String _value) {
      _img2 = _value;
      
    }
    
    
  
    String _img3  = '';
    String get img3 => _img3;
    set img3(String _value) {
      _img3 = _value;
      
    }
    
    
  
    String _img4  = '';
    String get img4 => _img4;
    set img4(String _value) {
      _img4 = _value;
      
    }
    
    
  
    String _video  = '';
    String get video => _video;
    set video(String _value) {
      _video = _value;
      
    }
    
    
  

  
}








