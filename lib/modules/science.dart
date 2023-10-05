import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_project/shared/cubit/news_cubit.dart';
import 'package:news_project/shared/cubit/news_state.dart';
import '../shared/components/components/news_article.dart';



// ignore: must_be_immutable
class Science extends StatelessWidget {
  const Science({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<NewsCubit, NewsState>(
      listener: (context, state) {
        // TODO: implement listener
      },
      builder: (context, state)  {
        var cubit=NewsCubit.get(context);
        var list=cubit.science;
        return ConditionalBuilder(
            condition: state is! AppGetScienceLoadingState,
            builder: (context) => ListView.separated(
                physics: const BouncingScrollPhysics(),
                itemBuilder: (context, index) => NewsArticle(model:list[index]),
                separatorBuilder: (context, index) => Container(
                  margin: const EdgeInsets.symmetric(horizontal: 10.0),
                  height: 1.0,
                  color: Colors.grey[400],
                ),
                itemCount:list.length
            ),
            fallback: (context) =>const Center(child: CircularProgressIndicator(
              color: Colors.deepOrange,
            ))
        );
      },
    );

  }
}
