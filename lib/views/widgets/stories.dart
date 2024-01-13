import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fx_app_challenge/business_logic/models/article.dart';
import 'package:fx_app_challenge/views/widgets/story.dart';
import '../../business_logic/blocs/news/news_blocs.dart';
import '../../business_logic/blocs/news/news_events.dart';
import '../../business_logic/blocs/news/news_states.dart';
import '../../business_logic/repo/news_repository.dart';

class ArticlesWidget extends StatelessWidget {

  const ArticlesWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => NewsBloc(
        NewsRepository(),
      )..add(LoadNewsEvent()),
      child: BlocBuilder<NewsBloc, NewsState>(
        builder: (context, state) {
          if (state is NewsLoadingState) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
          if (state is NewsErrorState) {
            return const Center(child:  Text("Error"));
          }
          if (state is NewsLoadedState) {
            List<dynamic> articles = state.articles;
            return ListView.builder(
                itemCount: articles.length,
                itemBuilder: (_, index) {
                  return Story(article: articles[index] as Article);
                });
          }
          return const SizedBox();
        },
      ),
    );
  }
}