import 'package:Vhelp2/app/model/usuario_model.dart';

abstract class IRepository {
  Future getUser();
  Future getGoogleLogin();
  Future getEmailPasswwordLogin(UsuarioModel usuarioModel);
  Future createUser(UsuarioModel usuarioModel);
  Future recoveryPassword(UsuarioModel usuarioModel);
}
