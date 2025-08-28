import 'package:flutter/material.dart';
import 'package:news_app2/models/item_model.dart';

class ItemNews extends StatelessWidget {
  const ItemNews({super.key, required this.item});
  final ItemModel item;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          height: 170,
          width: double.infinity,
          decoration: BoxDecoration(
            image: DecorationImage(
                image: NetworkImage(item.imageurl ??
                    "https://groups.google.com/group/digital-services-2024/attach/25a9aa043ccfb/6.jpg?part=0.1&view=1"),
                fit: BoxFit.cover),
            borderRadius: BorderRadius.circular(10),
            // color: Colors.white,
          ),
        ),
        Text("Title:${item.title}",
            overflow: TextOverflow.ellipsis,
            maxLines: 1,
            style: Theme.of(context).textTheme.titleLarge!.copyWith(
                  fontSize: 20,
                  // color: Colors.black,
                )),
        Text(
          "Description:${item.description ?? ""}",
          overflow: TextOverflow.ellipsis,
          maxLines: 2,
          style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                color: Colors.grey,
              ),
        ),
      ],
    );
  }
}
