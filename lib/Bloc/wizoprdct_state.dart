part of 'wizoprdct_bloc.dart';

@immutable
sealed class WizoprdctState {}

final class WizoprdctInitial extends WizoprdctState {}
class Wizoprdctblocloading extends WizoprdctState {}
class Wizoprdctblocerror extends WizoprdctState{}
class Wizoprdctblocloaded extends WizoprdctState{}
