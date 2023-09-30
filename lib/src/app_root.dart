import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../layout/news_layout.dart';
import '../shared/cubit/news_cubit.dart';

class AppRoot extends StatelessWidget {
  const AppRoot({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) => NewsCubit(),
          )
        ],
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
              bottomNavigationBarTheme: BottomNavigationBarThemeData(
                  unselectedItemColor: Colors.grey[600]),
              appBarTheme:
                  const AppBarTheme(backgroundColor: Colors.white, elevation: 0.0),
              scaffoldBackgroundColor: Colors.white,
              floatingActionButtonTheme: const FloatingActionButtonThemeData(
                  backgroundColor: Colors.deepOrange)),
          home: const NewsLayout(),
        ),
      ),
    );
  }
}
