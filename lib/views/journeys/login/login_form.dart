import 'package:flutter/material.dart';
import 'package:task_app/view_models/common/validators.dart';
import 'package:task_app/views/common_widgets/costume_button.dart';
import 'package:task_app/views/common_widgets/loading_widget.dart';

class LogInForm extends StatefulWidget {
  final Function(String name, String password) onLoginPressed;
  final bool loading;
  final double screenWidth;
  final double screenHaight;

  const LogInForm(
      {Key? key,
      required this.onLoginPressed,
      required this.loading,
      required this.screenWidth,
      required this.screenHaight})
      : super(key: key);

  @override
  _LogInFormState createState() => _LogInFormState();
}

class _LogInFormState extends State<LogInForm> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  bool _isObscure = true;
  String _name = '';
  String _password = '';

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
        buildInputForm('Nama', false),
        buildInputForm('Password', true),
        SizedBox(
          height: widget.screenHaight * 0.02,
        ),
        Text(
          'Forgot your password?',
          style: Theme.of(context).textTheme.subtitle1,
        ),
        SizedBox(
          height: widget.screenHaight * 0.015,
        ),
        widget.loading
            ? LoadingWidget(
                color: Colors.white,
              )
            : CostumeButton(
                text: 'Log in',
                onPressed: () {
                  if (!_formKey.currentState!.validate()) {
                    return;
                  }

                  _formKey.currentState?.save();

                  widget.onLoginPressed(_name, _password);
                },
                width: widget.screenWidth * 0.35)
      ]),
    );
  }

  Widget buildInputForm(
    String label,
    bool pass,
  ) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: widget.screenHaight * 0.005),
      child: TextFormField(
        obscureText: pass ? _isObscure : false,
        style: TextStyle(
          color: Colors.white,
        ),
        decoration: InputDecoration(
            labelText: label,
            border: UnderlineInputBorder(
                borderSide: BorderSide(
              color: Colors.red,
            )),
            labelStyle: Theme.of(context).textTheme.subtitle1,
            suffixIcon: pass
                ? IconButton(
                    onPressed: () {
                      setState(() {
                        _isObscure = !_isObscure;
                      });
                    },
                    icon: _isObscure
                        ? Icon(
                            Icons.visibility_off,
                            color: Colors.white,
                          )
                        : Icon(
                            Icons.visibility,
                          ),
                  )
                : Icon(
                    Icons.person,
                    color: Colors.white,
                  )),
        validator: (String? value) {
          return Validators.validateLoginFeild(value);
        },
        onSaved: (String? value) {
          pass ? _password = value ?? '' : _name = value ?? '';
        },
      ),
    );
  }
}
