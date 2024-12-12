import 'package:equatable/equatable.dart';

 class DashboardState extends Equatable {
  @override
  List<Object?> get props => [];
}

class DashboardTabChanged extends DashboardState {
  final int selectedIndex;

  DashboardTabChanged(this.selectedIndex);

  @override
  List<Object?> get props => [selectedIndex];
}
