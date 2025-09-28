import 'package:bloc_example/domain/use_cases/get_user_use_case.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'dashboard_bloc.freezed.dart';

@freezed
abstract class DashboardEvent with _$DashboardEvent {
  const factory DashboardEvent.init(String email) = Init;  
}


@freezed
 abstract class DashboardState with _$DashboardState {
  const factory DashboardState({@Default("") String userId,
  @Default(false) bool isGettingUser,
  
  })=_DashboardState;
}

@injectable
class DashboardBloc extends Bloc<DashboardEvent,DashboardState>{
  final GetUserUseCase _getUserUseCase;
  DashboardBloc(this._getUserUseCase) : super(const DashboardState()){

    on<Init>((event, emit)async{
      emit(state.copyWith(isGettingUser: true));
      final res= await _getUserUseCase.call(event.email);
      if(res != null){
        emit(state.copyWith(userId: res.userId));
      }
      emit(state.copyWith(isGettingUser: false));
    });
    
  }
}