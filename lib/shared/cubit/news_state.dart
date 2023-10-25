abstract class NewsState {}

class NewsInitial extends NewsState {}

class AppChangeBottomVavBar extends NewsState {}

//todo///////////////business///////////////////////////////////////
class AppGetBusinessLoadingState extends NewsState {}

class AppGetBusinessSuccessState extends NewsState {}

class AppGetBusinessErrorState extends NewsState {}
//todo///////////////search///////////////////////////////////////

class AppGetSearchLoadingState extends NewsState {}

class AppGetSearchSuccessState extends NewsState {}

class AppGetSearchErrorState extends NewsState {}
//todo///////////////science///////////////////////////////////////

class AppGetScienceLoadingState extends NewsState {}

class AppGetScienceSuccessState extends NewsState {}

class AppGetScienceErrorState extends NewsState {}
//todo///////////////sports///////////////////////////////////////

class AppGetSportsLoadingState extends NewsState {}

class AppGetSportsSuccessState extends NewsState {}

class AppGetSportsErrorState extends NewsState {}
//todo///////////////mode///////////////////////////////////////

class AppChangeModeState extends NewsState {}
