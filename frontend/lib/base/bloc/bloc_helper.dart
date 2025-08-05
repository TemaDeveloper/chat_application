import 'package:chat_app/base/bloc/base_bloc_impl.dart';
import 'package:chat_app/entities/snacbar_data.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

mixin BlocHelper<B extends BaseBlocImpl<E, S>, E extends BaseBlocEvent, S extends BaseBlocState> {
  BlocBuilder makeBlocWidget(
      {bool Function(S, S)? buildWhen, required Widget Function(S) buildWidget}) {
    return BlocBuilder<B, S>(buildWhen: (previous, current) {
      return buildWhen != null ? buildWhen(previous, current) : true;
    }, builder: (context, state) {
      return buildWidget(state);
    });
  }

  makeBlocEvent({required E event, required BuildContext context}) {
    context.read<B>().add(event);
  }

  showSnackbar({required BuildContext context, required SnackbarData snackbarData}) {
    ScaffoldMessenger.of(context).removeCurrentSnackBar();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(snackbarData.title)));
    });
  }
}