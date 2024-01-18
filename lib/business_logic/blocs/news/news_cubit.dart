import '../../repo/news_repository.dart';
import 'news_events.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'news_states.dart';

class NewsCubit extends Bloc<NewsEvent, NewsState> {
  final NewsRepository _newsRepository;

  NewsCubit(this._newsRepository) : super(NewsLoadedState(const [])) {
    on<LoadNewsEvent>((event, emit) async {
      emit(NewsLoadedState(const []));
      try {
        final newsArticles = await _newsRepository.getToStoriesByCountry();
        emit(NewsLoadedState(newsArticles));
      } catch (e) {
        emit(NewsErrorState(e.toString()));
      }
    });
  }
}