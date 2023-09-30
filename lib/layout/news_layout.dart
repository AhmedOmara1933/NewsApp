import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_project/shared/components/components/bottomNavBar.dart';
import 'package:news_project/shared/cubit/news_cubit.dart';
import 'package:news_project/shared/cubit/news_state.dart';
import 'package:news_project/shared/network/remote/dio_helper.dart';

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
          floatingActionButton: FloatingActionButton(
            onPressed: (){
             DioHelper.getData(
                 url: " v2/top-headlines",
                 query: {
                   'country': 'eg',
                   'apiKey':'3c7b76511d6d41ba85797bf56777f19d',
                   'category':'business'
                 }).then((value){
                   print( value.data.toString());
             }).catchError((error){
               print('error is $error');
             });
            },
            child: Icon(
              Icons.add
            ),
          ),
          body: cubit.screans[cubit.currentIndex],
        );
      },
    );
  }
}
