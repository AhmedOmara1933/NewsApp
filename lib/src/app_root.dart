import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:news_project/shared/cubit/news_state.dart';
import '../layout/news_layout.dart';
import '../shared/cubit/news_cubit.dart';

class AppRoot extends StatelessWidget {
  const AppRoot({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => NewsCubit()
            ..getBusinessData()
            ..getScienceData()
            ..getSportsData(),
        ),
      ],
      child: BlocConsumer<NewsCubit, NewsState>(
        listener: (context, state) {
          // TODO: implement listener
        },
        builder: (context, state) {
          var cubit = NewsCubit.get(context);
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            theme: ThemeData(
              appBarTheme: const AppBarTheme(
                  systemOverlayStyle: SystemUiOverlayStyle(
                      statusBarColor: Colors.white,
                      statusBarIconBrightness: Brightness.dark),
                  backgroundColor: Colors.white,
                  titleTextStyle: TextStyle(
                      color: Colors.black,
                      fontSize: 25.0,
                      fontWeight: FontWeight.w800),
                  actionsIconTheme:
                      IconThemeData(color: Colors.black, size: 30.0),
                  elevation: 0.0),
              textTheme: TextTheme(
                  bodyLarge: GoogleFonts.agdasima(
                      fontSize: 25.0, fontWeight: FontWeight.w800)),
              scaffoldBackgroundColor: Colors.white,
            ),
            darkTheme: ThemeData(
              appBarTheme: AppBarTheme(
                  systemOverlayStyle: SystemUiOverlayStyle(
                      statusBarColor: Colors.grey[900],
                      statusBarIconBrightness: Brightness.light),
                  backgroundColor: Colors.grey[900],
                  titleTextStyle: const TextStyle(
                      color: Colors.white,
                      fontSize: 25.0,
                      fontWeight: FontWeight.w800),
                  actionsIconTheme:
                      const IconThemeData(color: Colors.white, size: 30.0),
                  elevation: 0.0),
              textTheme: TextTheme(
                bodyLarge: GoogleFonts.agdasima(
                    fontSize: 25.0,
                    fontWeight: FontWeight.w800,
                    color: Colors.white),
              ),
              scaffoldBackgroundColor: Colors.grey[900],
            ),
            themeMode:cubit.isBrightness == false ? ThemeMode.light : ThemeMode.dark,
            home: const NewsLayout(),
          );
        },
      ),
    );
  }
}
