import 'package:Vhelp2/app/model/usuario_model.dart';
import 'package:get_it/get_it.dart';
import 'package:mobx/mobx.dart';
part 'usuario_controller.g.dart';

class UsuarioController = _UsuarioControllerBase with _$UsuarioController;

abstract class _UsuarioControllerBase with Store {
  final UsuarioModel usuarioModel = GetIt.I<UsuarioModel>();

  setUsuario() {
    usuarioModel.setSenha("123456789");
    usuarioModel.setEmail("aandersonn_ribeiro.a@hotmail.com");
    usuarioModel.setNome("Anderson Ribeiro Alves");
  }

  loginComEmailEsenha() {
    try {
      usuarioModel.loginEmailPassword(usuarioModel);
    } catch (e) {
      print(e);
    }
  }

  criarUsuario() {
    setUsuario();
    try {
      usuarioModel.createUserModel(usuarioModel);
    } catch (e) {
      print(e);
    }
  }

  recuperarSenha() {
    try {
      usuarioModel.recoveryPass(usuarioModel);
    } catch (e) {
      print(e);
    }
  }

  loginComGoogle() {
    try {
      usuarioModel.loginWithGoogle();
    } catch (e) {
      print(e);
    }
  }
}
