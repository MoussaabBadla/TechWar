import 'package:flutter/material.dart';

class CustomTextfield extends StatelessWidget {
  const CustomTextfield(
      {super.key,
      required this.registerData,
      required this.mapkey,
      this.loginData,
      required this.selectedindex,
      required this.textInputType,
      this.validator});

  final Map registerData;
  final Map? loginData;
  final int selectedindex;
  final TextInputType textInputType;
  final String mapkey;
  final String? Function(String?)? validator;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12),
      child: TextFormField(
        style: TextStyle(
          color: Color(0xffA1A1A1),
          fontSize: 17,
        ),
        keyboardType: textInputType,
        onSaved: (value) {
          selectedindex == 1
              ? registerData[mapkey] = value
              : loginData![mapkey] = value;
        },
        validator: validator,
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(10.0),
          ),
          filled: true,
          fillColor: const Color(0xff3D3658).withOpacity(0.47),
          iconColor: Colors.black,
          focusedErrorBorder: outlineInputBorder(Colors.red),
          contentPadding:
              const EdgeInsets.symmetric(vertical: 4, horizontal: 16),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(10.0),
          ),
          errorBorder: InputBorder.none,
          hintStyle: TextStyle(
            color: Color(0xffA1A1A1),
            fontSize: 17,
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(10.0),
          ),
          hintText: mapkey[0].toUpperCase() + mapkey.substring(1),
        ),
      ),
    );
  }
}

OutlineInputBorder outlineInputBorder(Color color) {
  return OutlineInputBorder(
      borderSide: BorderSide(color: color),
      borderRadius: BorderRadius.circular(20));
}

class PasswordTextfield extends StatefulWidget {
  final Key? fkey;
  final String? Function(String?)? fvalidator;

  final Map registerData;
  final Map? loginData;
  final int selectedindex;
  final bool confirme ; 
  const PasswordTextfield({
    Key? key,
    this.fkey,
    this.fvalidator,
    required this.registerData,
    this.loginData,
    required this.selectedindex, required this.confirme,
    
  }) : super(key: key);
  String? validatePassword(String value) {
    if (value.isEmpty) {
      return 'Please enter password';
    } else {
      if (value.length < 8) {
        return 'Password  must be of 10 character';
      } else {
        return null;
      }
    }
  }

  @override
  State<PasswordTextfield> createState() => _PasswordTextfieldState();
}

class _PasswordTextfieldState extends State<PasswordTextfield> {
  bool _viewPassword = false;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 12,
      ),
      child: TextFormField(
        style: TextStyle(
          color: Color(0xffA1A1A1),
          fontSize: 17,
        ),
        key: widget.fkey,
        validator:            widget.confirme ?
  (val) {
          if(val != widget.registerData['password']){
            return 'Wrong !! ';
          } 
          
        } : (vall) => widget.validatePassword(vall!) ,
        onSaved: (value) {
          widget.selectedindex == 1
              ? widget.registerData['password'] = value
              : widget.loginData!['password'] = value;
        },
        obscureText: (_viewPassword ? false : true),
        keyboardType: TextInputType.visiblePassword,
        decoration: InputDecoration(
            suffixIcon: IconButton(
                icon: Icon(
                  _viewPassword ? Icons.visibility : Icons.visibility_off,
                  color: Color(0xffA1A1A1),
                ),
                onPressed: () {
                  setState(() {
                    _viewPassword = !_viewPassword;
                  });
                }),
            border: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.circular(10.0),
            ),
            contentPadding:
                const EdgeInsets.symmetric(vertical: 4, horizontal: 16),
            filled: true,
            fillColor: const Color(0xff3D3658).withOpacity(0.47),
            iconColor: Colors.black,
            focusedErrorBorder: outlineInputBorder(Colors.red),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.circular(10.0),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.circular(10.0),
            ),
            errorBorder: InputBorder.none,
            hintStyle: TextStyle(
              color: Color(0xffA1A1A1),
              fontSize: 17,
            ),
            hintText: widget.confirme? 'Confirm Password' :  'Password'),
      ),
    );
  }
}
