import 'package:equatable/equatable.dart';

abstract class SecureGuardState extends Equatable {
  @override
  List<Object?> get props => [];
}

class SecureGuardGranted extends SecureGuardState {
  final String token;
  SecureGuardGranted(this.token);
  @override
  List<Object?> get props => [token];
}

class SecureGuardDenied extends SecureGuardState {}
