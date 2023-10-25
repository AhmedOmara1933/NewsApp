import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_project/shared/components/components/news_article.dart';
import 'package:news_project/shared/components/components/textFormField.dart';
import 'package:news_project/shared/cubit/news_cubit.dart';
import 'package:news_project/shared/cubit/news_state.dart';

class Search extends StatelessWidget {
  const Search({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<NewsCubit, NewsState>(
      listener: (context, state) {
        // TODO: implement listener
      },
      builder: (context, state) {
        var cubit=NewsCubit.get(context);
        var list=cubit.search;
        return Scaffold(
          appBar: AppBar(
            leading: const Icon(
              Icons.arrow_back_ios_sharp,
              color: Colors.black,
            ),
          ),
          body: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: DefaultTextFormField(
                  text: 'Search',
                  prefixicon: Icons.search,
                  validate: (value) {
                    if (value!.isEmpty) {
                      return 'search must be fill';
                    }
                    return null;
                  },
                  onChanged: (value) {
                    if (kDebugMode) {
                      print(value);
                    }
                    cubit.getSearchData(value: value);
                  },
                ),
              ),
             ConditionalBuilder(
                 condition: list.isNotEmpty,
                 builder: (context) =>Expanded(
                   child: ListView.separated(
                     physics: const BouncingScrollPhysics(),
                       itemBuilder: (context, index) =>NewsArticle(model: list[index]),
                       separatorBuilder: (context, index) => const SizedBox(
                         width: 20.0,
                       ),
                       itemCount: list.length
                   ),
                 ),
                 fallback: (context) => const Expanded(
                   child: Image(
                     image:AssetImage(
                       'assets/images/3371471.jpg'
                     ) ,
                   ),
                 ),
             )
            ],
          ),
        );
      },
    );
  }
}
