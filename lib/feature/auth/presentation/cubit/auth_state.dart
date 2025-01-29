part of 'auth_cubit.dart';

@immutable
sealed class AuthState {}

final class AuthInitial extends AuthState {}

final class OnBordingSucess extends AuthState {
  final bool onbarding;
  OnBordingSucess(this.onbarding);
}
