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
    prefs = await SharedPreferences.getInstance();
    _safeInit(() {
      _nomeUser = prefs.getString('ff_nomeUser') ?? _nomeUser;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  PagamentosStruct _PagRed = PagamentosStruct();
  PagamentosStruct get PagRed => _PagRed;
  set PagRed(PagamentosStruct value) {
    _PagRed = value;
  }

  void updatePagRedStruct(Function(PagamentosStruct) updateFn) {
    updateFn(_PagRed);
  }

  int _cahveAlea = 0;
  int get cahveAlea => _cahveAlea;
  set cahveAlea(int value) {
    _cahveAlea = value;
  }

  FormasdepagStruct _FormasdePagRef = FormasdepagStruct.fromSerializableMap(
      jsonDecode('{"pix":"pix","cardaodecredito":"cartao"}'));
  FormasdepagStruct get FormasdePagRef => _FormasdePagRef;
  set FormasdePagRef(FormasdepagStruct value) {
    _FormasdePagRef = value;
  }

  void updateFormasdePagRefStruct(Function(FormasdepagStruct) updateFn) {
    updateFn(_FormasdePagRef);
  }

  String _FormadePag = 'nada';
  String get FormadePag => _FormadePag;
  set FormadePag(String value) {
    _FormadePag = value;
  }

  String _GerarUUID = '';
  String get GerarUUID => _GerarUUID;
  set GerarUUID(String value) {
    _GerarUUID = value;
  }

  int _deDoubleToInteger = 0;
  int get deDoubleToInteger => _deDoubleToInteger;
  set deDoubleToInteger(int value) {
    _deDoubleToInteger = value;
  }

  String _AppBar = 'home';
  String get AppBar => _AppBar;
  set AppBar(String value) {
    _AppBar = value;
  }

  String _nomeUser = '';
  String get nomeUser => _nomeUser;
  set nomeUser(String value) {
    _nomeUser = value;
    prefs.setString('ff_nomeUser', value);
  }

  String _statusCartaodeCredito = '';
  String get statusCartaodeCredito => _statusCartaodeCredito;
  set statusCartaodeCredito(String value) {
    _statusCartaodeCredito = value;
  }

  String _UsarCartaoSalvo = '0';
  String get UsarCartaoSalvo => _UsarCartaoSalvo;
  set UsarCartaoSalvo(String value) {
    _UsarCartaoSalvo = value;
  }
}

LatLng? _latLngFromString(String? val) {
  if (val == null) {
    return null;
  }
  final split = val.split(',');
  final lat = double.parse(split.first);
  final lng = double.parse(split.last);
  return LatLng(lat, lng);
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}
