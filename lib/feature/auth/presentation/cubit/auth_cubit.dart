import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:todoapp/feature/auth/data/repo/auth_repo.dart';

part 'auth_state.dart';

class AuthCubit extends Cubit<AuthState> {
  AuthCubit(this.authRepo) : super(AuthInitial());
  final AuthRepo authRepo;
  void navigate() async {
    final bool isvisited = await isVisited();
    Future.delayed(const Duration(seconds: 3), () {
      emit(OnBordingSucess(isvisited));
    });
  }

  Future<bool> isVisited() async {
    return await authRepo.isVisited();
  }

  savedata() async {
    await authRepo.savedata();
    emit(OnBordingSucess(true));
  }
}
