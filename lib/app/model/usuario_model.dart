import 'package:Vhelp2/app/repositories/usuario_repository.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:mobx/mobx.dart';
part 'usuario_model.g.dart';

class UsuarioModel = _UsuarioModelBase with _$UsuarioModel;

abstract class _UsuarioModelBase with Store {
  UserRepository _userRepository = UserRepository();

  @observable
  String nome;

  @action
  void setNome(String value) => nome = value;

  @observable
  String email;

  @action
  void setEmail(String value) => email = value;

  @observable
  String senha;

  @action
  void setSenha(String value) => senha = value;

  @action
  loginEmailPassword(UsuarioModel usuarioModel) async {
    return await _userRepository.getEmailPasswwordLogin(usuarioModel);
  }

  @action
  Future<FirebaseUser> createUserModel(UsuarioModel usuarioModel) async {
    return await _userRepository.createUser(usuarioModel);
  }

  @action
  Future recoveryPass(UsuarioModel usuarioModel) async {
    return await _userRepository.recoveryPassword(usuarioModel);
  }

  @action
  Future loginWithGoogle() async {
    return await _userRepository.getGoogleLogin();
  }
}
