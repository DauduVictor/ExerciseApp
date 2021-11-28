import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:page_transition/page_transition.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:untitled1/components/circle-indicator.dart';
import 'package:untitled1/screens/dashboard/dashboard.dart';
import 'package:untitled1/screens/init_screen/signup.dart';
import 'package:untitled1/utils/constant.dart';
import 'package:untitled1/utils/size_config.dart';

class Login extends StatefulWidget {

  static const String id = 'login';
  const Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {

  /// key and controller for [Sign_Up]
  final _formKey = GlobalKey<FormState>();
  TextEditingController _eMailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  /// Variable to hold the bool value of the [CircleIndicator()]
  bool _showSpinner = false;

  /// Variable to hold the bool value of [Password] obscure text in the form field
  bool _obscurePassword = true;

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
                builder: (contexts, constraints) =>
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
                                Row(
                                  children: [
                                    const Text(
                                      'No account? ',
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
                                              PageTransition(type:PageTransitionType.fade, child:  SignUp()));
                                        },
                                        style: TextButton.styleFrom(
                                          padding: EdgeInsets.all(0.0),
                                        ),
                                        child: const Text(
                                          'Sign Up',
                                          style: TextStyle(
                                            fontWeight: FontWeight.w500,
                                            fontSize: 19,
                                            color: Colors.black,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),//no account text
                              ],
                            ),
                          ),
                          SizedBox(height: constraints.maxHeight*0.14),
                          Container(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  'Login',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 38,
                                    letterSpacing: 0.3,
                                  ),
                                ),//login
                                const Text(
                                  'Glad to see you back!',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 19,
                                  ),
                                ),//glad to see...
                                const SizedBox(height: 17),
                                _buildForm(),
                                Container(
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      TextButton(
                                        onPressed: (){
                                        },
                                        style: TextButton.styleFrom(
                                          padding: const EdgeInsets.all(0.0),
                                        ),
                                        child: const Text(
                                          'Forgot password ?',
                                          style: TextStyle(
                                            fontWeight: FontWeight.w500,
                                            fontSize: 18,
                                            color: Color(0xFF68739B),
                                          ),
                                        ),
                                      ),
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
                                                  _logIn();
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
                                ),//forgot password
                              ],
                            ),
                          ),
                          Spacer(),
                          Center(
                            child: Container(
                              margin: const EdgeInsets.symmetric(vertical: 12.0),
                              child: const Text(
                                'or login with',
                                style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 17,
                                ),
                              ),
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20.8),
                                ),
                                child: Container(
                                  width: 65,
                                  height: 61,
                                  decoration: loginBottomContainerDecoration,
                                  child: TextButton(
                                    onPressed: () {
                                    },
                                    style: loginBottomTButtonDecoration,
                                    child: const Icon(
                                      FontAwesomeIcons.google,
                                      size: 24,
                                      color: Colors.black,
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20.8),
                                ),
                                child: Container(
                                  width: 65,
                                  height: 61,
                                  decoration: loginBottomContainerDecoration,
                                  child: TextButton(
                                    onPressed: () {
                                    },
                                    style: loginBottomTButtonDecoration,
                                    child: Icon(
                                      FontAwesomeIcons.linkedinIn,
                                      size: 24,
                                      color: Colors.blue.shade800,
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20.8),
                                ),
                                child: Container(
                                  width: 65,
                                  height: 61,
                                  decoration: loginBottomContainerDecoration,
                                  child: TextButton(
                                    onPressed: () {
                                    },
                                    style: loginBottomTButtonDecoration,
                                    child: const Icon(
                                      FontAwesomeIcons.facebook,
                                      size: 24,
                                      color: Colors.blue,
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20.8),
                                ),
                                child: Container(
                                  width: 65,
                                  height: 61,
                                  decoration: loginBottomContainerDecoration,
                                  child: TextButton(
                                    onPressed: () {
                                    },
                                    style: loginBottomTButtonDecoration,
                                    child: const Icon(
                                      FontAwesomeIcons.instagram,
                                      size: 24,
                                      color: Color(0xFFFD2253),
                                    ),
                                  ),
                                ),
                              ),
                            ],
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

  /// Widget to build user [Login]
  Widget _buildForm() {
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ///Email
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
                FilteringTextInputFormatter.deny(RegExp('[ ]')),
              ],
              validator: (value) {
                if (value!.isEmpty) {
                  return 'This field is required';
                }
                if (value.length < 3 && !value.contains('@') && !value.contains('.')) {
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
                        _setState(() => _obscurePassword = !_obscurePassword);
                      },
                    ),
                  ),
                  controller: _passwordController,
                  obscureText: _obscurePassword,
                  textInputAction: TextInputAction.done,
                  keyboardType: TextInputType.text,
                  validator: (value) {
                    if (value!.isEmpty) return 'This field is required';
                    return null;
                  },
                ),
              );
            }
          ),
          const SizedBox(height: 20),
        ],
      ),
    );
  }

  /// Function to call api[Login]
  void _logIn() {
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
          PageTransition(type:PageTransitionType.fade, child:  Dashboard()));
    });
  }
}
