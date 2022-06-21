import 'package:mobx/mobx.dart';
import 'package:xlo_mobx/helpers/extensions.dart';
part 'signup_store.g.dart';

class SignupStore = _SignupStore with _$SignupStore;

abstract class _SignupStore with Store {

@observable
String name = "";

@action

void setName(String value) => name = value;

@computed

String? get nameError{
if(name == "" || name.length > 3){
return null;
}else if(name.isEmpty ){
  return 'Campo obrigatorio';
}else{
  return 'Nome muito curto';
}
}

@observable
String email = "";

@action

void setEmail(String value) => email = value;

@computed
bool get emailValid => email != "" && email.isEmailValid(); //ta com erro
String? get emailError {
if(emailValid || email == ''){
return null;
}else if(email.isEmpty){
  return 'Campo obrigatorio';
}else{
  return 'Email Invalido';
}


}
@observable
String phone = "";

@action

void setPhone(String value) => phone = value;

@computed
bool get phoneValid => phone.length >= 9;
String? get phoneError {
if(phoneValid || phone == ''){
return null;
}else if(phone.isEmpty){
  return 'Campo obrigatorio';
}else{
  return 'telefone invalido';
}


}

}