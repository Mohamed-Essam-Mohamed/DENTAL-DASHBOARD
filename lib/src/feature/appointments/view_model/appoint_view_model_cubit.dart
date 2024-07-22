import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'appoint_view_model_state.dart';

class AppointViewModelCubit extends Cubit<AppointViewModelState> {
  AppointViewModelCubit() : super(AppointViewModelInitial());

  
}
