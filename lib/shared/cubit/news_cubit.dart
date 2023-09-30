import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

part 'news_state.dart';

class NewsCubit extends Cubit<NewsState> {
  NewsCubit() : super(NewsInitial());

  static NewsCubit get(context) => BlocProvider.of(context);

  int currentIndex=0;

  void changeBottomNavBar(int index){
    currentIndex=index;
    emit(AppChangeBottomVavBar());
  }

}
