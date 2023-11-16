mixin class ValidationMixin
{
 String? validateEmail  (value){
        if (!value!.contains('@')){
          return 'Please enter a valid email';
        }else {
          return null;
}}
String? validatePassword (value){
        if (value!.length < 8){
          return 'Password must contains at least 8 characters';
        }else
        {return null;}
      }
}