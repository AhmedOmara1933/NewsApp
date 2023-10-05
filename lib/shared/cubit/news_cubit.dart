import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_project/modules/business.dart';
import 'package:news_project/modules/science.dart';
import 'package:news_project/modules/settings.dart';
import 'package:news_project/modules/sports.dart';
import 'package:news_project/shared/cubit/news_state.dart';
import '../network/remote/dio_helper.dart';


class NewsCubit extends Cubit<NewsState> {
  NewsCubit() : super(NewsInitial());

  static NewsCubit get(context) => BlocProvider.of(context);
  List screans = [
    const Business(),
    const Sports(),
    const Science(),
    const Settings()
  ];
  List<String> titles = [
    'Business',
    'Sports  ',
    'Science ',
    'Settings',
  ];

//todo//////////////////////////////////////////////////////////////////////
  int currentIndex = 0;

  void changeBottomNavBar(int index) {
    currentIndex = index;
    emit(AppChangeBottomVavBar());
  }

//todo//////////////////////////////////////////////////////////////////////
  List<dynamic> business = [];
  List<dynamic> science = [];
  List<dynamic> sports = [];

  void getBusinessData() {
    emit(AppGetBusinessLoadingState());
    DioHelper.getData(url: 'v2/top-headlines', query: {
      'country': 'us',
      'apiKey': '049c1660a02b492d8d3b37b503608683',
      'category': 'business'
    }).then((value) {
      emit(AppGetBusinessSuccessState());
      business = value.data['articles'];
    }).catchError((error) {
      emit(AppGetBusinessErrorState());
    });
  }

  void getScienceData() {
    emit(AppGetSportsLoadingState());
    DioHelper.getData(url: 'v2/top-headlines', query: {
      'country': 'us',
      'apiKey': '049c1660a02b492d8d3b37b503608683',
      'category': 'sports'
    }).then((value) {
      emit(AppGetSportsSuccessState());
      sports = value.data['articles'];
    }).catchError((error) {
      emit(AppGetSportsErrorState());
    });
  }

  void getSportsData() {
    emit(AppGetScienceLoadingState());
    DioHelper.getData(url: 'v2/top-headlines', query: {
      'country': 'us',
      'apiKey': '049c1660a02b492d8d3b37b503608683',
      'category': 'science'
    }).then((value) {
      emit(AppGetScienceSuccessState());
      science = value.data['articles'];
    }).catchError((error) {
      emit(AppGetScienceErrorState());
    });
  }

//todo//////////////////////////////////////////////////////////////////////

  bool isBrightness = false;

  void changeAppMode() {
    isBrightness = !isBrightness;
    emit(AppChangeModeState());
  }
}
