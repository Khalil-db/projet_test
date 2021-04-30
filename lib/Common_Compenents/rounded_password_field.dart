import 'package:flutter/material.dart';
import 'package:gestion_docs_fpo/Common_Compenents/text_field_container.dart';
import '../constants.dart';



class RoundedPasswordField extends StatefulWidget {
   RoundedPasswordField({
    Key key,
    this.onChanged,
    
    
  }) : super(key: key);

  final ValueChanged<String> onChanged;
  

  @override
  _RoundedPasswordFieldState createState() => _RoundedPasswordFieldState();
}

class _RoundedPasswordFieldState extends State<RoundedPasswordField> {
  bool x = true;
  @override
  Widget build(BuildContext context) {

    return TextFieldContainer(
      
       child: TextField(
        obscureText:this.x, 
        decoration: InputDecoration(
            hintText: "Entez votre mot de passe",
            labelText: "mot de passe",
            
            prefixIcon: Icon(
              Icons.lock,
              color: kPrimaryColor,
            ),
            suffixIcon:IconButton(
              onPressed: (){
                setState(() => this.x =! this.x);
                
              },
              icon:  Icon(this.x?
              Icons.visibility_off:Icons.visibility,
              color: kPrimaryColor,
            ), 
              

            ),
            border: InputBorder.none
        ),
        onChanged: widget.onChanged,
      ),
    );
  }
}