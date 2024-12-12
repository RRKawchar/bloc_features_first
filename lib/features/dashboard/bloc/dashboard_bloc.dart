import 'package:bloc/bloc.dart';
import 'package:clean_arch_layers/features/dashboard/bloc/dashboard_event.dart';
import 'package:clean_arch_layers/features/dashboard/bloc/dashboard_state.dart';

class DashboardBloc extends Bloc<DashboardEvent, DashboardState> {
  DashboardBloc() : super(DashboardState()) {
    on<ChangeTabEvent>(_changeTab);
  }


  void _changeTab(ChangeTabEvent event, Emitter<DashboardState> emit){
    emit(DashboardTabChanged(event.index));
  }
}
