import 'package:flutter/material.dart';

class DashboardAppbar extends StatelessWidget {
  const DashboardAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(onPressed: (){}, icon: const Icon(Icons.menu,size: 30,)),
           Text("Products",),
          IconButton(onPressed: (){}, icon: const Icon(Icons.filter_alt_outlined,size: 30,))
        ],),
    );
  }
}
