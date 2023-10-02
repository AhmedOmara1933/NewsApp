abstract class NewsState {}

class NewsInitial extends NewsState {}

class AppChangeBottomVavBar extends NewsState {}

class AppGetBusinessLoadingState extends NewsState {}
class AppGetBusinessSuccessState extends NewsState {}
class AppGetBusinessErrorState extends NewsState {}

class AppGetScienceLoadingState extends NewsState {}
class AppGetScienceSuccessState extends NewsState {}
class AppGetScienceErrorState extends NewsState {}

class AppGetSportsLoadingState extends NewsState {}
class AppGetSportsSuccessState extends NewsState {}
class AppGetSportsErrorState extends NewsState {}
