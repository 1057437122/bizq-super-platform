import 'package:bizqplatform/model/error_model.dart';
import 'package:equatable/equatable.dart';

abstract class SignInState extends Equatable {
  @override
  List<Object?> get props => [];
}

class SignInInitial extends SignInState {}

class SignInFetching extends SignInState {}

class SignInSuccess extends SignInState {
  final String token;
  SignInSuccess(this.token);
  @override
  List<Object?> get props => [token];
}

class SignInError extends SignInState {
  final ErrorModel errorModel;
  SignInError(this.errorModel);

  @override
  List<Object?> get props => [errorModel];
}
