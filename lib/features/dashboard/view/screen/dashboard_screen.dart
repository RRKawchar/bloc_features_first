import 'package:clean_arch_layers/features/dashboard/bloc/dashboard_bloc.dart';
import 'package:clean_arch_layers/features/dashboard/bloc/dashboard_event.dart';
import 'package:clean_arch_layers/features/dashboard/bloc/dashboard_state.dart';
import 'package:clean_arch_layers/features/dashboard/view/widgets/custom_bottom_navbar.dart';
import 'package:clean_arch_layers/features/dashboard/view/widgets/dashboard_appbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DashboardScreen extends StatelessWidget {
  DashboardScreen({super.key});

  final List<Widget> screens = [
    const Text("Home Screen"),
    const Text("Cart Screen"),
    const Text("Favorite Screen"),
    const Text("Profile Screen"),
  ];




  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => DashboardBloc(),
      child: BlocBuilder<DashboardBloc, DashboardState>(
        builder: (context, state) {
          int currentIndex = 0;
          if (state is DashboardTabChanged) {
            currentIndex = state.selectedIndex;
          }

          return Scaffold(
            appBar: const PreferredSize(
                preferredSize: Size(double.infinity, 100),
                child: DashboardAppbar()
            ),
            body: screens[currentIndex],
            bottomNavigationBar: CustomBottomNavBar(
                currentIndex: currentIndex,
                onTabSelected: (index) => context.read<DashboardBloc>().add(ChangeTabEvent(index)),
            )
          );
        },
      ),
    );
  }
}
