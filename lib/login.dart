import 'package:flutter/material.dart';

enum Gender { male, female }

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  // Object? _gender;
  late String _firstName;
  late String _lastName;
  late String _phoneNumber;
  late String _address;
  late String _email;
  late String _password;
  late String _confirmPassword;

  TextEditingController _passwordController = TextEditingController();
  TextEditingController _passwordConfirmController = TextEditingController();

  bool _loading = false;

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: GestureDetector(
        onTap: () {
          FocusScope.of(context).unfocus();
        },
        child: Padding(
          padding:
              EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
          child: Column(
            children: [
              AppBar(
                centerTitle: true,
                backgroundColor: Colors.white,
                title: const Text(
                  'Sign up',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                elevation: 1,
              ),
              Expanded(
                child: SingleChildScrollView(
                  child: Form(
                    key: _formKey,
                    child: Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 16, vertical: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: 5),
                          Container(
                            child: SizedBox(
                              height: 40,
                              child: TextFormField(
                                autofocus: true,
                                validator: (value) {
                                  if (value!.length == 0) {
                                    return 'Fill this field';
                                  }
                                  // return true;
                                },
                                onSaved: (value) {
                                  _firstName = value!;
                                },
                                decoration: InputDecoration(
                                  contentPadding: const EdgeInsets.symmetric(
                                    horizontal: 10,
                                    vertical: 0,
                                  ),
                                  hintText: 'Firstname',
                                  // hintStyle: ,
                                  border: OutlineInputBorder(
                                    borderSide: BorderSide.none,
                                    borderRadius: BorderRadius.circular(0),
                                  ),

                                  fillColor: Color(0xffe2e2e2).withOpacity(0.3),
                                  filled: true,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(height: 15),
                          SizedBox(height: 5),
                          Container(
                            child: SizedBox(
                              height: 40,
                              child: TextFormField(
                                validator: (value) {
                                  if (value!.length == 0) {
                                    return 'Fill this field';
                                  }
                                  if (!RegExp(
                                          r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                                      .hasMatch(value)) {
                                    return 'Invalid email';
                                  }
                                },
                                onSaved: (value) {
                                  _email = value!;
                                },
                                decoration: InputDecoration(
                                  hintText: 'Email',
                                  contentPadding: EdgeInsets.all(10),
                                  border: OutlineInputBorder(
                                    borderSide: BorderSide.none,
                                    borderRadius: BorderRadius.circular(0),
                                  ),
                                  fillColor: Color(0xffe2e2e2).withOpacity(0.3),
                                  filled: true,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(height: 15),
                          SizedBox(height: 5),
                          Container(
                            child: SizedBox(
                              height: 40,
                              child: TextFormField(
                                controller: _passwordController,
                                autofocus: true,
                                validator: (value) {
                                  if (value!.length == 0) {
                                    return 'Fill this field';
                                  }
                                },
                                onSaved: (value) {
                                  _password = value!;
                                },
                                decoration: InputDecoration(
                                  hintText: 'password',
                                  contentPadding: EdgeInsets.all(10),
                                  border: OutlineInputBorder(
                                    borderSide: BorderSide.none,
                                    borderRadius: BorderRadius.circular(0),
                                  ),
                                  fillColor: Color(0xffe2e2e2).withOpacity(0.3),
                                  filled: true,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(height: 15),
                          SizedBox(height: 5),
                          Container(
                            child: SizedBox(
                              height: 40,
                              child: TextFormField(
                                controller: _passwordConfirmController,
                                autofocus: true,
                                validator: (value) {
                                  if (value!.length == 0) {
                                    return 'Fill this field';
                                  }
                                  if (_passwordController.text !=
                                      _passwordConfirmController.text) {
                                    return 'Password does not match';
                                  }
                                },
                                onSaved: (value) {
                                  _confirmPassword = value!;
                                },
                                decoration: InputDecoration(
                                  hintText: 'confirm',
                                  contentPadding: EdgeInsets.all(10),
                                  border: OutlineInputBorder(
                                    borderSide: BorderSide.none,
                                    borderRadius: BorderRadius.circular(0),
                                  ),
                                  fillColor: Color(0xffe2e2e2).withOpacity(0.3),
                                  filled: true,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(height: 40),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SizedBox(
                                height: 50,
                                width: 200,
                                child: ElevatedButton(
                                  onPressed: () async {
                                    setState(() {
                                      _loading = true;
                                    });

                                    setState(() {
                                      _loading = false;
                                    });
                                  },
                                  child: _loading
                                      ? Center(
                                          child: SizedBox(
                                            height: 20,
                                            width: 20,
                                            child: CircularProgressIndicator(
                                              valueColor:
                                                  AlwaysStoppedAnimation<Color>(
                                                Colors.white,
                                              ),
                                            ),
                                          ),
                                        )
                                      : Text(
                                          'confirm',
                                          style: TextStyle(
                                            fontWeight: FontWeight.w600,
                                            fontSize: 18,
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
            ],
          ),
        ),
      ),
    );
  }
}
