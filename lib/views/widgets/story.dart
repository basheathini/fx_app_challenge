import 'package:fast_cached_network_image/fast_cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:fx_app_challenge/business_logic/models/article.dart';
import 'package:fx_app_challenge/theme/styles.dart';
import 'package:get_time_ago/get_time_ago.dart';

import '../../theme/colors.dart';

class Story extends StatelessWidget {
  final Article article;
  const Story({super.key, required this.article});

  @override
  Widget build(BuildContext context) {
    var deviceSize = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 20),
      child: GestureDetector(
        onTap: () => {
          showModalBottomSheet(
              context: context,
              isScrollControlled: true,
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(15),
                    topRight: Radius.circular(15)),
              ),
              builder: (context) => StatefulBuilder(
                      builder: (BuildContext context, StateSetter setState) {
                    return FractionallySizedBox(
                      heightFactor: 0.70,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 15.0, right: 15.0),
                        child: Column(
                          children: [

                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only( bottom: 15, top: 15),
                                    child: Text(
                                      article.source.name,
                                      style: TextStyles.text.copyWith(color: black, fontWeight: FontWeight.w600, fontSize: 18),
                                    ),
                                  ),
                                  GestureDetector(
                                      onTap: () => {
                                        Navigator.pop(context)
                                      },
                                      child: const Icon(Icons.close))
                                ],
                              ),
                            ),
                            SizedBox(
                              height: deviceSize.height * 0.60,
                              width: deviceSize.width,
                              child: SingleChildScrollView(
                                child: Column(
                                  children: [
                                    article.urlToImage.isNotEmpty ? ClipRRect(
                                      borderRadius: const BorderRadius.only(
                                          topLeft: Radius.circular(10),
                                          bottomLeft: Radius.circular(10)),
                                      child: FastCachedImage(
                                        url: article.urlToImage,
                                        fit: BoxFit.cover,
                                        width: deviceSize.width,
                                        height: 220,
                                      ),
                                    ) : const SizedBox(),


                                    Column(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(top: 5.0),
                                          child: Text(
                                            'written by : ${article.author}',
                                            style: TextStyles.textSmall.copyWith(fontSize: 12),),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(top: 5.0),
                                          child: Text(
                                            GetTimeAgo.parse(DateTime.parse(article.publishedAt)),
                                            style: TextStyles.textSmall,),
                                        ),

                                        Padding(
                                          padding: const EdgeInsets.only(top: 8.0),
                                          child: Text(
                                            article.title.trim(),
                                            style: TextStyles.header.copyWith(fontSize: 16),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(top: 3.0),
                                          child: Text(
                                            article.description,
                                            style: TextStyles.text,
                                          ),
                                        ),

                                      ],
                                    )


                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  })),
        },
        child: Card(
            child: SizedBox(
          height: 140,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              article.urlToImage.isNotEmpty ? ClipRRect(
                      borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(10),
                          bottomLeft: Radius.circular(10)),
                      child: FastCachedImage(
                        url: article.urlToImage,
                        fit: BoxFit.cover,
                        width: 175,
                        height: 140,
                      ),
                    )
                  : const SizedBox(),
              Flexible(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 8.0),
                        child: Text(
                          article.title.trim(),
                          overflow: TextOverflow.ellipsis,
                          maxLines: 2,
                          style: TextStyles.header.copyWith(fontSize: 16),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 3.0),
                        child: Text(
                          article.description.trim(),
                          overflow: TextOverflow.ellipsis,
                          maxLines: 2,
                          style: TextStyles.text,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 5.0),
                        child: Text(
                          GetTimeAgo.parse(DateTime.parse(article.publishedAt)),
                          overflow: TextOverflow.ellipsis,
                          maxLines: 1,
                          style: TextStyles.textSmall,
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        )),
      ),
    );
  }
}
