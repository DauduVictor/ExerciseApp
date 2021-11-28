import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:page_transition/page_transition.dart';
import 'package:untitled1/components/circle-indicator.dart';
import 'package:untitled1/utils/constant.dart';
import 'package:untitled1/utils/size_config.dart';
import 'login.dart';

class SignUp extends StatefulWidget {

  static const String id = 'signUp';
  const SignUp({Key? key}) : super(key: key);

  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {

  /// key and controller for [Sign_Up]
  final _formKey = GlobalKey<FormState>();
  TextEditingController _nameController = TextEditingController();
  TextEditingController _eMailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  TextEditingController _confirmPasswordController = TextEditingController();

  /// Variable to hold the bool value of the [CircleIndicator()]
  bool _showSpinner = false;

  /// Variable to hold the bool value of [Password] obscure text in the form field
  bool _obscurePassword = true;

  /// Variable to hold the bool value of [Confirm Password] obscure text in the form field
  bool _obscureConfirmPassword = true;

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: GestureDetector(
        onTap: (){
          FocusScopeNode currentFocus = FocusScope.of(context);
          if(!currentFocus.hasPrimaryFocus) currentFocus.unfocus();
        },
        child: AbsorbPointer(
          absorbing: _showSpinner,
          child: SingleChildScrollView(
            child: Container(
              height: SizeConfig.screenHeight,
              child: LayoutBuilder(
                builder: (context, constraints) =>
                    Container(
                      height: constraints.maxHeight,
                      padding: const EdgeInsets.fromLTRB(15, 60, 15, 15),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                ///back button
                                GestureDetector(
                                  onTap: () {
                                    Navigator.pop(context);
                                  },
                                  child: const Icon(
                                    Icons.arrow_back_ios_outlined,
                                    color: Colors.black,
                                    size: 34.0,
                                  ),
                                ),
                                ///account? button
                                Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    const Text(
                                      'Have an account?',
                                      style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 17,
                                        color: Color(0xFF68739B),
                                      ),
                                    ),
                                    Container(
                                      height: 32,
                                      child: TextButton(
                                        onPressed: () {
                                          Navigator.pushReplacement(
                                            context,
                                            PageTransition(type:PageTransitionType.fade, child: Login())
                                          );
                                        },
                                        style: TextButton.styleFrom(
                                          padding: EdgeInsets.all(0.0),
                                        ),
                                        child: const Text(
                                          'Login',
                                          style: TextStyle(
                                            fontWeight: FontWeight.w500,
                                            fontSize: 19,
                                            color: Colors.black,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: constraints.maxHeight*0.14),
                          Container(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  'Sign Up',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 38,
                                    letterSpacing: 0.3,
                                  ),
                                ),//login
                                const Text(
                                  'Glad you\'re here to join us!',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 19,
                                  ),
                                ),
                                const SizedBox(height: 17),
                                _buildForm(),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Container(
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20.8),
                                      ),
                                      child: Container(
                                        width: 69,
                                        height: 58,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(20.8),
                                          border: Border.all(width: 1.4),
                                        ),
                                        child: TextButton(
                                          onPressed: () {
                                            FocusScopeNode currentFocus = FocusScope.of(context);
                                            if(!currentFocus.hasPrimaryFocus) currentFocus.unfocus();
                                            if (!_showSpinner){
                                              if(_formKey.currentState!.validate()){
                                                _signUp();
                                              }
                                            }
                                          },
                                          style: TextButton.styleFrom(
                                            padding: EdgeInsets.all(0.0),
                                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.8)),
                                          ),
                                          child: _showSpinner ?
                                            Padding(
                                              padding: EdgeInsets.symmetric(
                                                horizontal: 22.0,
                                                vertical: 17.0,),
                                              child: CircleProgressIndicator(),
                                            ) : const Icon(
                                              Icons.arrow_forward_outlined,
                                              size: 29,
                                              color: Colors.black,
                                            ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  /// Widget to build user [Sign Up]
  Widget _buildForm() {
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          /// Name
          Container(
            width: double.infinity,
            decoration: kFormContainerDecoration,
            child: TextFormField(
              style: kFormTextStyle,
              decoration: kFormInputDecoration.copyWith(
                  labelText: 'Name'
              ),
              controller: _nameController,
              textInputAction: TextInputAction.next,
              keyboardType: TextInputType.name,
              inputFormatters: [
                FilteringTextInputFormatter.deny(RegExp(r'[!@#%^*(){}[]'':;?/|`~+-]')),
              ],
              validator: (value) {
                if (value!.isEmpty) {
                  return 'This field is required';
                }
                else if (value.length < 2){
                  return 'Invalid name';
                }
                return null;
              },
            ),
          ),
          const SizedBox(height: 15),
          ///E-mail
          Container(
            width: double.infinity,
            decoration: kFormContainerDecoration,
            child: TextFormField(
              style: kFormTextStyle,
              decoration: kFormInputDecoration.copyWith(
                  labelText: 'Email'
              ),
              controller: _eMailController,
              textInputAction: TextInputAction.next,
              keyboardType: TextInputType.emailAddress,
              inputFormatters: [
                FilteringTextInputFormatter.deny(RegExp(r'[ ]')),
              ],
              validator: (value) {
                if (value!.isEmpty) {
                  return 'This field is required';
                }
                else if (value.length < 3 && !value.contains('@') && !value.contains('.')) {
                  return 'Invalid email address';
                }
                return null;
              },
            ),
          ),
          const SizedBox(height: 15),
          ///Password
          StatefulBuilder(
            builder: (context, _setState) {
              return Container(
                height: 74,
                width: double.infinity,
                decoration: kFormContainerDecoration,
                child: TextFormField(
                  style: kFormTextStyle,
                  decoration: kFormInputDecoration.copyWith(
                    labelText: 'Password',
                    contentPadding: EdgeInsets.fromLTRB(21.0, 8.0, 15.0, 17.0),
                    suffix: IconButton(
                      icon: Icon(_obscurePassword ? IconlyBold.show : IconlyBold.hide),
                      color: Color(0xFFAEAEB2),
                      iconSize: 27,
                      splashRadius: 5.0,
                      onPressed: () {
                        _setState(() {
                          _obscurePassword = !_obscurePassword;
                        });
                      },
                    ),
                  ),
                  controller: _passwordController,
                  obscureText: _obscurePassword,
                  textInputAction: TextInputAction.next,
                  keyboardType: TextInputType.text,
                  validator: (value) {
                    if (value!.isEmpty) return 'This field is required';
                    else if (value.length < 5) return 'Password length too short';
                    return null;
                  },
                ),
              );
            }
          ),
          const SizedBox(height: 15),
          ///Confirm password
          StatefulBuilder(
            builder: (context, _setStateConfirm) {
              return Container(
                height: 74,
                width: double.infinity,
                decoration: kFormContainerDecoration,
                child: TextFormField(
                  style: kFormTextStyle,
                  decoration: kFormInputDecoration.copyWith(
                    labelText: 'Confirm password',
                    contentPadding: EdgeInsets.fromLTRB(21.0, 8.0, 15.0, 17.0),
                    suffix: IconButton(
                      icon: Icon(_obscureConfirmPassword ? IconlyBold.show : IconlyBold.hide),
                      color: Color(0xFFAEAEB2),
                      iconSize: 27,
                      splashRadius: 5.0,
                      onPressed: () {
                        _setStateConfirm(() {
                        _obscureConfirmPassword = !_obscureConfirmPassword;
                        });
                      },
                    ),
                  ),
                  controller: _confirmPasswordController,
                  obscureText: _obscureConfirmPassword,
                  textInputAction: TextInputAction.done,
                  keyboardType: TextInputType.text,
                  validator: (value) {
                    if (value!.isEmpty) return'This field is required';
                    else if (_passwordController.text != _confirmPasswordController.text) return'Confirm your pin';
                    return null;
                  },
                ),
              );
            }
          ),
          const SizedBox(height: 15),
        ],
      ),
    );
  }

  /// Function to call api[Sign up]
  void _signUp() {
    if(!mounted) return;
    setState(() {
      _showSpinner = true;
    });
    Timer(Duration(seconds: 5), (){
      setState(() {
        _showSpinner = false;
      });
      Navigator.pushReplacement(
        context,
        PageTransition(type:PageTransitionType.fade, child:  Login()));
    });
  }
}
