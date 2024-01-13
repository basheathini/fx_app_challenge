import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';

import '../../models/currencies.dart';

@immutable
abstract class CurrenciesState extends Equatable {}


class CurrenciesLoadingState extends CurrenciesState {
  @override
  List<Object?> get props => [];
}

class CurrenciesLoadedState extends CurrenciesState {
  final List<Currency> currencies;
  CurrenciesLoadedState(this.currencies);
  @override
  List<Object?> get props => [currencies];
}

class CurrenciesErrorState extends CurrenciesState {
  final String error;
  CurrenciesErrorState(this.error);
  @override
  List<Object?> get props => [error];
}