import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';
import 'package:fx_app_challenge/business_logic/models/article.dart';

@immutable
abstract class NewsState extends Equatable {}

class NewsLoadingState extends NewsState {
  @override
  List<Object?> get props => [];
}

class NewsLoadedState extends NewsState {
  final List<Article> articles;
  NewsLoadedState(this.articles);
  @override
  List<Object?> get props => [articles];
}

class NewsErrorState extends NewsState {
  final String error;
  NewsErrorState(this.error);
  @override
  List<Object?> get props => [error];
}