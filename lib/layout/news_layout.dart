import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_project/shared/components/components/bottomNavBar.dart';
import 'package:news_project/shared/cubit/news_cubit.dart';

class NewsLayout extends StatelessWidget {
  const NewsLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<NewsCubit, NewsState>(
      listener: (context, state) {
        // TODO: implement listener
      },
      builder: (context, state) {
        var cubit = NewsCubit.get(context);
        return Scaffold(
          bottomNavigationBar: BottomNavBar(
              selectedItemColor: Colors.orange,
              unselectedItemColor: Colors.grey[600],
              selectedIndex: cubit.currentIndex,
              onItemSelected: (value) {
                cubit.changeBottomNavBar(value);
              }),
          body: cubit.screans[cubit.currentIndex],
        );
      },
    );
  }
}
