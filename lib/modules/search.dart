import 'package:flutter/material.dart';
import 'package:news_project/shared/components/components/textFormField.dart';

class Search extends StatelessWidget {
  const Search({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          DefaultTextFormField(
              text: 'Search',
              prefixicon: Icons.search,
              validate: (value){
                if(value!.isEmpty){
                  return'search must be fill';
                }
                return null;
              },
            onChanged: (value){
                print(value);
            },
          )
        ],
      ),
    );
  }
}
