import 'package:Vhelp2/app/controller/usuario_controller.dart';
import 'package:Vhelp2/app/repositories/usuario_repository.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

class ViewTeste extends StatelessWidget {
  final UsuarioController usuarioController = GetIt.I<UsuarioController>();
  final UserRepository userRepository = UserRepository();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          RaisedButton(
            onPressed: () {
              usuarioController.criarUsuario();
            },
            child: Text("Cadastrar"),
          ),
          RaisedButton(
            onPressed: () {
              usuarioController.loginComEmailEsenha();
            },
            child: Text("Login"),
          ),
          RaisedButton(
            onPressed: () {
              usuarioController.loginComGoogle();
            },
            child: Text("Login com Google"),
          ),
        ],
      ),
    );
  }
}
