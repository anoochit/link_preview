import 'dart:developer';

import 'package:any_link_preview/any_link_preview.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import 'package:get/get.dart';
import 'package:linkfy_text/linkfy_text.dart';
import 'package:linkify/linkify.dart';
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
    List<LinkifyElement> list = linkify(item.content);
    List<String> links = [];
    String cleanContent = item.content;

    for (var i in list) {
      if (i.runtimeType == UrlElement) {
        links.add(i.originText);
        cleanContent = cleanContent.replaceAll(i.originText, '');
      }
    }

    return Card(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // user info
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                // avatar
                const CircleAvatar(
                  child: Text('S'),
                ),
                const Gap(8),
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
            child: Text(cleanContent),
          ),

          // TODO : add link preview item
          (links.length > 0)
              ? AnyLinkPreview(
                  link: links.first,
                  bodyMaxLines: 5,
                  previewHeight: MediaQuery.of(context).size.width * 0.8,
                  displayDirection: UIDirection.uiDirectionVertical,
                  backgroundColor: Colors.white,
                  boxShadow: [],
                )
              : Container()
        ],
      ),
    );
  }
}
