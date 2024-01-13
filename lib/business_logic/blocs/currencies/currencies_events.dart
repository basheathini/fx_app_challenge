import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';

@immutable
abstract class CurrenciesEvent extends Equatable {
  const CurrenciesEvent();
}

class LoadCurrenciesEvent extends CurrenciesEvent {
  @override
  List<Object?> get props => [];
}