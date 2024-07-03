
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

import '../Repository/API/api_main.dart';
import '../Repository/Modelclass/ProductModel.dart';

part 'wizo_event.dart';
part 'wizo_state.dart';

class WizoBloc extends Bloc<WizoEvent, WizoState> {
  late ProductModel  productModel;
  Wizoapi wizoapi= Wizoapi();
  WizoBloc() : super(WizoInitial()) {
    on<WizoEvent>((event, emit) async{
    emit (WizoBlocloading());
    try{
      productModel= await wizoapi.getwizo();
      emit(WizoBlocloaded());

    }
        catch(a){
      emit(WizoBlocerror());
        }
      // TODO: implement event handler
    });
  }
}
