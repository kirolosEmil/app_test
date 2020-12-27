import 'package:flutter_app/Screens/signUp/cubit/states.dart';
import 'package:flutter_app/Shared/components/remote/dio_helper.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RegisterCubit extends Cubit<RegisterStates> {
  RegisterCubit() : super(RegisterStateInitial());

  static RegisterCubit get(context) => BlocProvider.of(context);

  register({first,last,email,pass,city})
  {
    emit(RegisterStateLoading());

    DioHelper.postData(
      path: 'lms/api/v1/auth/signup-save',
      data: {
        'first_name': '$first',
        'last_name': '$last',
        'email': '$email',
        'password': '$pass',
        'ci':''
      },
    ).then((value) {
      emit(RegisterStateSucess());
    }).catchError((e){
      emit(RegisterStateError(e.toString()));
    });
  }
}
