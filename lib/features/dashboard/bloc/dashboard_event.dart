import 'package:equatable/equatable.dart';

abstract class DashboardEvent extends Equatable {

  @override
  List<Object?> get props => [];
}

class ChangeTabEvent extends DashboardEvent {
  final int index;

  ChangeTabEvent(this.index);

  @override
  List<Object?> get props => [index];
}
