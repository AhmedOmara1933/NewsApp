import 'package:flutter/material.dart';

class DefaultCard extends StatelessWidget {
 final Map model;
  const DefaultCard({super.key, required this.model});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(20.0),
      height: 150.0,
      child: Row(
        children: [
          Container(
            margin: const EdgeInsets.only(right: 20.0),
            height: 150.0,
            width: 150.0,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                image:  DecorationImage(
                    image: NetworkImage(
                      '${model['urlToImage']}'
                    ),
                    fit: BoxFit.cover)),
          ),
           Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Text(
                    '${model['title']}',
                    style: TextStyle(
                      fontSize: 20.0,
                    ),
                    maxLines: 5,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                Text(
                  '${model['publishedAt']}',
                  style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w900),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
