import 'package:mobx/mobx.dart';

part 'signup_store.g.dart';

class SignupStore = _SignupStore with _$SignupStore;

abstract class _SignupStore with Store {

@observable
String name = "";

@action

void setName(String value) => name = value;

@computed

String? get nameError{
if(name == "" || name.length > 4){
return null;
}else if(name.isEmpty ){
  return 'Campo obrigatorio';
}else{
  return 'Nome muito curto';
}
}
}