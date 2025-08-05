import 'package:auto_route/auto_route.dart';
import 'package:chat_app/base/bloc/base_bloc_impl.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

abstract base class BaseBlocChildStatefulWidget<B extends BaseBlocImpl<E, S>,
        E extends BaseBlocEvent, S extends BaseBlocState> extends StatefulWidget
    implements AutoRouteWrapper {
  const BaseBlocChildStatefulWidget({super.key});

  @override
  Widget wrappedRoute(context) {
    return BlocProvider(
      create: (BuildContext context) => context.read<B>(),
      child: this,
    );
  }
}