import 'package:equatable/equatable.dart';
import 'package:chat_app/entities/snacbar_data.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'base_bloc_event.dart';
part 'base_bloc_state.dart';

abstract class BaseBlocImpl<E extends BaseBlocEvent, S extends BaseBlocState> extends Bloc<E, S>{

  BaseBlocImpl(super.initialState) {
    on<E>((event, emit) async => await handleEvent(event, emit));
  }

  @override
  void add(E event) {
    if (!isClosed) super.add(event);
  }

  Future<void> handleEvent(E event, Emitter<S> emit);

  setSnacbarData({
    required String title,
    String? message,
    VoidCallback? action,
    required Emitter<S> emit,
  }) {

    emit(
      state.copyWith(
        snackbarData: SnackbarData(
          title: title
        ),
      ),
    );
    clearSnackbarData(emit);
  }

  clearSnackbarData(Emitter<S> emit) {
    emit(state.copyWith());
  }
}

