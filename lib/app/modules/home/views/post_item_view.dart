import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import 'package:get/get.dart';
import 'package:linkfy_text/linkfy_text.dart';
import 'package:linkpreview/app/data/models/post.dart';

import 'package:timeago/timeago.dart' as timeago;

class PostItemView extends GetView {
  const PostItemView({Key? key, required this.item}) : super(key: key);

  final Post item;

  @override
  Widget build(BuildContext context) {
    // time duration
    timeago.setLocaleMessages('th', timeago.ThMessages());
    final timestamp = item.timestamp;
    final duration = timeago.format(timestamp, locale: 'th');

    // TODO : get links

    return Card(
      child: Column(
        children: [
          // user info
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                // avatar
                CircleAvatar(
                  child: Text('S'),
                ),
                Gap(8),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Sample user',
                      style: Theme.of(context)
                          .textTheme
                          .bodyMedium!
                          .copyWith(fontWeight: FontWeight.w500),
                    ),
                    Text(duration),
                  ],
                )
              ],
            ),
          ),

          // post
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: LinkifyText(
              item.content,
              linkStyle: TextStyle(
                color: Theme.of(context).colorScheme.primary,
              ),
              onTap: (url) {
                // open url
              },
            ),
          ),

          // TODO : add link preview item
        ],
      ),
    );
  }
}
