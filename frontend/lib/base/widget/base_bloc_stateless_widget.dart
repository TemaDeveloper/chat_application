import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:chat_app/base/bloc/base_bloc_impl.dart';
import 'package:chat_app/base/bloc/bloc_helper.dart';
import 'package:chat_app/di/injector.dart';

/// B - bloc, E - event, S - state

abstract base class BaseBlocStatelessWidget<
        B extends BaseBlocImpl<E, S>,
        E extends BaseBlocEvent,
        S extends BaseBlocState> extends StatelessWidget
    with BlocHelper<B, E, S>
    implements AutoRouteWrapper {
  const BaseBlocStatelessWidget({super.key});

  @override
  Widget wrappedRoute(context) {
    return BlocProvider(
      create: (BuildContext context) => getIt.get<B>(),
      child: this,
    );
  }
}