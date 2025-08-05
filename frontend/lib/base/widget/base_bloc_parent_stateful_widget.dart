import 'package:auto_route/auto_route.dart';
import 'package:chat_app/base/bloc/base_bloc_impl.dart';
import 'package:chat_app/service_locator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/single_child_widget.dart';

/// B - bloc, E - event, S - state

abstract base class BaseBlocParentStatefulWidget<
    B extends BaseBlocImpl<E, S>,
    E extends BaseBlocEvent,
    S extends BaseBlocState> extends StatefulWidget implements AutoRouteWrapper {
  const BaseBlocParentStatefulWidget({super.key});

  @override
  Widget wrappedRoute(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (BuildContext context) {
          return isRootParent() ? getIt.get<B>() : context.read<B>();
        }),
        ...childBlocs(),
      ],
      child: this,
    );
  }

  bool isRootParent() => true;

  List<SingleChildWidget> childBlocs();

  SingleChildWidget createChildBloc<CB extends Bloc<Object, Object>>() {
    return BlocProvider(create: (BuildContext context) => getIt.get<CB>());
  }
}