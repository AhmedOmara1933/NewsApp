import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_project/shared/components/components/bottomNavBar.dart';
import 'package:news_project/shared/cubit/news_cubit.dart';
import 'package:news_project/shared/cubit/news_state.dart';

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
          appBar: AppBar(
            centerTitle: true,
            title:Container(
              padding: EdgeInsets.symmetric(horizontal:60.0,vertical: 10.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15.0),
                color: Colors.orange.withOpacity(0.4)
              ),
              child: Text(
                cubit.titles[cubit.currentIndex],
                style:TextStyle(
                  color: Colors.grey[700],
                  fontWeight: FontWeight.w900,
                  fontSize: 25.0
                ) ,
              ),
            )
          ),
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
