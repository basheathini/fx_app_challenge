import 'package:fx_app_challenge/business_logic/blocs/currencies/currencies_states.dart';
import '../../repo/trading_rates_repository.dart';
import 'currencies_events.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CurrenciesCubit extends Bloc<CurrenciesEvent, CurrenciesState> {
  final CurrenciesRepository _currenciesRepository;

  CurrenciesCubit(this._currenciesRepository) : super(CurrenciesLoadedState(const [])) {
    on<LoadCurrenciesEvent>((event, emit) async {
      emit(CurrenciesLoadedState(const []));
      try {
        final _currencies = await _currenciesRepository.getAllCurrencies();
        emit(CurrenciesLoadedState(const []));
      } catch (e) {
        emit(CurrenciesErrorState(e.toString()));
      }
    });
  }
}