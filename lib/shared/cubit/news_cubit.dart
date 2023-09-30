import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';
import 'package:news_project/modules/business.dart';
import 'package:news_project/modules/science.dart';
import 'package:news_project/modules/settings.dart';
import 'package:news_project/modules/sports.dart';

part 'news_state.dart';

class NewsCubit extends Cubit<NewsState> {
  NewsCubit() : super(NewsInitial());

  static NewsCubit get(context) => BlocProvider.of(context);
  List screans=[
    const Business(),
    const Sports(),
    const Science(),
    const Settings()
  ];

  int currentIndex=0;

  void changeBottomNavBar(int index){
    currentIndex=index;
    emit(AppChangeBottomVavBar());
  }

}
