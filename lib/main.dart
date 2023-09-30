import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_project/shared/cubit/news_cubit.dart';
import 'layout/news_layout.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: MultiBlocProvider(
        providers: [
          BlocProvider(create: (context) => NewsCubit(),)
        ],
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            bottomNavigationBarTheme: BottomNavigationBarThemeData(
              unselectedItemColor: Colors.grey[600]
            )
          ),
          home: NewsLayout(),
        ),
      ),
    );
  }
}




