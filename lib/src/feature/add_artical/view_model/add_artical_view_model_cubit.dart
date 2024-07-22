import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'add_artical_view_model_state.dart';

class AddArticalViewModelCubit extends Cubit<AddArticalViewModelState> {
  AddArticalViewModelCubit() : super(AddArticalViewModelInitial());

  
}
