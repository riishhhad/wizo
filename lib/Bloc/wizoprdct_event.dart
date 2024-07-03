part of 'wizoprdct_bloc.dart';

@immutable
sealed class WizoprdctEvent {}
class FetcwizoEvent extends WizoprdctEvent{
  final String productId;
  FetcwizoEvent({required this.productId});
}