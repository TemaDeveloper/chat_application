part of 'base_bloc_impl.dart';

enum BaseBlocStatus{
  initial,
  success,
  failure,
  loading;

  bool get isInitial => this == BaseBlocStatus.initial;
  bool get isSuccess => this == BaseBlocStatus.success;
  bool get isFailure => this == BaseBlocStatus.failure;
  bool get isLoading => this == BaseBlocStatus.loading;

}

@immutable
abstract class BaseBlocState<BS, ST> extends Equatable {

  List<Object?> get props;

  BS copyWith({ST? status, SnackbarData? snackbarData});

}

