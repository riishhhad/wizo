part of 'wizo_bloc.dart';

@immutable
sealed class WizoState {}

final class WizoInitial extends WizoState {}
class WizoBlocloading extends WizoState {}
class WizoBlocloaded extends WizoState {}
class WizoBlocerror extends WizoState {}