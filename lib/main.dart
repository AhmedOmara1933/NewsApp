import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_project/shared/cubit/bloc_observer.dart';
import 'package:news_project/shared/network/remote/dio_helper.dart';
import 'package:news_project/src/app_root.dart';
void main()
{
  Bloc.observer = MyBlocObserver();
  DioHelper.init();
  runApp(const AppRoot());
}


//change bottomNavBar
//error in run
//error in cutting network