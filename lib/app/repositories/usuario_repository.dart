import 'package:Vhelp2/app/model/usuario_model.dart';
import 'package:Vhelp2/app/repositories/usuario_interface_repository.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

class UserRepository implements IRepository {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  FirebaseUser user;
  final GoogleSignIn _googleSignIn = GoogleSignIn();

  @override
  Future getEmailPasswwordLogin(UsuarioModel usuarioModel) async {
    user = (await _auth.signInWithEmailAndPassword(
            email: usuarioModel.email, password: usuarioModel.senha))
        .user;
    print(user.uid);
    return user;
  }

  @override
  Future getGoogleLogin() async {
    final GoogleSignInAccount googleUser = await _googleSignIn.signIn();
    final GoogleSignInAuthentication googleAuth =
        await googleUser.authentication;

    final AuthCredential credential = GoogleAuthProvider.getCredential(
      accessToken: googleAuth.accessToken,
      idToken: googleAuth.idToken,
    );

    user = (await _auth.signInWithCredential(credential)).user;
    Firestore.instance.collection("usuarios").document(user.uid).setData({
      'nome': user.displayName,
      'email': user.email,
    });
    return user;
  }

  @override
  Future getUser() async {
    return _auth.currentUser();
  }

  @override
  Future createUser(UsuarioModel usuarioModel) async {
    user = (await _auth.createUserWithEmailAndPassword(
      email: usuarioModel.email,
      password: usuarioModel.senha,
    ))
        .user;

    Firestore.instance.collection("usuarios").document(user.uid).setData({
      'nome': usuarioModel.nome,
      'email': usuarioModel.email,
      'senha': usuarioModel.senha
    });
    return user;
  }

  @override
  Future recoveryPassword(UsuarioModel usuarioModel) {
    return _auth.sendPasswordResetEmail(email: usuarioModel.email);
  }
}
