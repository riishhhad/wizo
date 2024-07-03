import 'package:bloc/bloc.dart';
import 'package:http/http.dart';
import 'package:meta/meta.dart';
import 'package:wizo/Bloc/wizo_bloc.dart';
import 'package:wizo/Repository/API/api_main.dart';
import 'package:wizo/Repository/API/apiprdct_main.dart';
import 'package:wizo/Repository/Modelclass/Wizoprdct.dart';

part 'wizoprdct_event.dart';
part 'wizoprdct_state.dart';

class WizoprdctBloc extends Bloc<WizoprdctEvent, WizoprdctState> {
  late Wizoprdct wizoprdct;
  Wizoprdctapi wizoapi = Wizoprdctapi();
  WizoprdctBloc() : super(WizoprdctInitial()) {
    on<FetcwizoEvent>((event, emit)async {
  emit (Wizoprdctblocloading());
  try{
    wizoprdct = await wizoapi.getwizo(event.productId);
    emit(Wizoprdctblocloaded());
  } catch (b){
    emit(Wizoprdctblocerror());
  }
      // TODO: implement event handler
    });
  }
}
