import 'package:Vhelp2/app/controller/usuario_controller.dart';
import 'package:Vhelp2/app/model/usuario_model.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'app/app_module.dart';

void main() {
  GetIt getIt = GetIt.I;
  getIt.registerSingleton(UsuarioModel());
  getIt.registerSingleton(UsuarioController());

  runApp(Vhelp2());
}
