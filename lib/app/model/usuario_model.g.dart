// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'usuario_model.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$UsuarioModel on _UsuarioModelBase, Store {
  final _$nomeAtom = Atom(name: '_UsuarioModelBase.nome');

  @override
  String get nome {
    _$nomeAtom.reportRead();
    return super.nome;
  }

  @override
  set nome(String value) {
    _$nomeAtom.reportWrite(value, super.nome, () {
      super.nome = value;
    });
  }

  final _$emailAtom = Atom(name: '_UsuarioModelBase.email');

  @override
  String get email {
    _$emailAtom.reportRead();
    return super.email;
  }

  @override
  set email(String value) {
    _$emailAtom.reportWrite(value, super.email, () {
      super.email = value;
    });
  }

  final _$senhaAtom = Atom(name: '_UsuarioModelBase.senha');

  @override
  String get senha {
    _$senhaAtom.reportRead();
    return super.senha;
  }

  @override
  set senha(String value) {
    _$senhaAtom.reportWrite(value, super.senha, () {
      super.senha = value;
    });
  }

  final _$loginEmailPasswordAsyncAction =
      AsyncAction('_UsuarioModelBase.loginEmailPassword');

  @override
  Future loginEmailPassword(UsuarioModel usuarioModel) {
    return _$loginEmailPasswordAsyncAction
        .run(() => super.loginEmailPassword(usuarioModel));
  }

  final _$createUserModelAsyncAction =
      AsyncAction('_UsuarioModelBase.createUserModel');

  @override
  Future<FirebaseUser> createUserModel(UsuarioModel usuarioModel) {
    return _$createUserModelAsyncAction
        .run(() => super.createUserModel(usuarioModel));
  }

  final _$recoveryPassAsyncAction =
      AsyncAction('_UsuarioModelBase.recoveryPass');

  @override
  Future<dynamic> recoveryPass(UsuarioModel usuarioModel) {
    return _$recoveryPassAsyncAction
        .run(() => super.recoveryPass(usuarioModel));
  }

  final _$loginWithGoogleAsyncAction =
      AsyncAction('_UsuarioModelBase.loginWithGoogle');

  @override
  Future<dynamic> loginWithGoogle() {
    return _$loginWithGoogleAsyncAction.run(() => super.loginWithGoogle());
  }

  final _$_UsuarioModelBaseActionController =
      ActionController(name: '_UsuarioModelBase');

  @override
  void setNome(String value) {
    final _$actionInfo = _$_UsuarioModelBaseActionController.startAction(
        name: '_UsuarioModelBase.setNome');
    try {
      return super.setNome(value);
    } finally {
      _$_UsuarioModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setEmail(String value) {
    final _$actionInfo = _$_UsuarioModelBaseActionController.startAction(
        name: '_UsuarioModelBase.setEmail');
    try {
      return super.setEmail(value);
    } finally {
      _$_UsuarioModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setSenha(String value) {
    final _$actionInfo = _$_UsuarioModelBaseActionController.startAction(
        name: '_UsuarioModelBase.setSenha');
    try {
      return super.setSenha(value);
    } finally {
      _$_UsuarioModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
nome: ${nome},
email: ${email},
senha: ${senha}
    ''';
  }
}
