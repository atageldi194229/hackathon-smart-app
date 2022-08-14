
import 'package:flutter/material.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage(Key key) : super(key: key);

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  bool a = true;
  bool b = true;
  late String _name, _username, _tel;
  String _acarsoz = "";
  final keyselect = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          padding: const EdgeInsets.only(left: 15, right: 15),
          color: Colors.white,
          child: Form(
            key: keyselect,
            autovalidateMode: AutovalidateMode.always,
            child: ListView(
              children: [
                const Padding(
                  padding: EdgeInsets.only(top: 15, bottom: 20),
                  child: Center(
                    child: CircleAvatar(
                      backgroundColor: Color.fromRGBO(196, 196, 196, 1),
                      child: Icon(
                        Icons.person,
                        size: 40,
                      ),
                      radius: 30,
                    ),
                  ),
                ),
                const Text(
                  "Adyňyz we familiýaňyz",
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: Color.fromRGBO(97, 97, 97, 1),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 5, bottom: 10),
                  child: TextFormField(
                    validator: ((value) {
                      if (value!.length < 6) {
                        return "Azyndan 6 harp girizin";
                      } else {
                        return null;
                      }
                    }),
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                    ),
                    onSaved: (value) {
                      _name = value!;
                    },
                  ),
                ),
                const Text(
                  "Ulanyjy ady",
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: Color.fromRGBO(97, 97, 97, 1),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 5, bottom: 10),
                  child: TextFormField(
                    validator: ((value) {
                      if (value!.length < 6) {
                        return "Azyndan 6 harp girizin";
                      } else {
                        return null;
                      }
                    }),
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                    ),
                    onSaved: (value) {
                      _username = value!;
                    },
                  ),
                ),
                const Text(
                  "Telefon belgiňiz",
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: Color.fromRGBO(97, 97, 97, 1),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 5, bottom: 10),
                  child: TextFormField(
                    validator: ((value) {
                      if (value!.length < 8) {
                        return "8 sany belgi girizmeli";
                      } else if (value.length > 8) {
                        return "8 sany belgi girizmeli";
                      } else if (!value.startsWith("6")) {
                        return "6dan baslamaly";
                      } else {
                        return null;
                      }
                    }),
                    keyboardType: TextInputType.number,
                    decoration: const InputDecoration(
                      prefixText: "+993",
                      prefixStyle: TextStyle(
                          fontSize: 16,
                          color: Color.fromRGBO(171, 171, 171, 1)),
                      border: OutlineInputBorder(),
                    ),
                    onSaved: (value) {
                      _tel = value!;
                    },
                  ),
                ),
                const Text(
                  "Açar soziňiz",
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: Color.fromRGBO(97, 97, 97, 1),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 5, bottom: 10),
                  child: TextFormField(
                    validator: (value) {
                      if (value!.length < 6) {
                        return "Azyndan 6 sany belgi girizin";
                      } else {
                        return null;
                      }
                    },
                    obscureText: a,
                    decoration: InputDecoration(
                      suffixIcon: InkWell(
                        onTap: () {
                          setState(() {
                            a == true ? a = false : a = true;
                          });
                        },
                        child: a == true
                            ? const Icon(Icons.remove_red_eye)
                            : const Icon(Icons.panorama_fish_eye_rounded),
                      ),
                      border: const OutlineInputBorder(),
                    ),
                    onSaved: (value) {
                      _acarsoz = value!;
                    },
                    onChanged: (value) {
                      _acarsoz = value;
                    },
                  ),
                ),
                const Text(
                  "Açar soziňizi tassyklaň",
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: Color.fromRGBO(97, 97, 97, 1),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 5, bottom: 10),
                  child: TextFormField(
                    validator: (value) {
                      if (_acarsoz != value) {
                        return "Nadogry acar sozi";
                      } else {
                        return null;
                      }
                    },
                    // validator: (value) => null,
                    obscureText: b,
                    decoration: InputDecoration(
                      suffixIcon: InkWell(
                        onTap: () {
                          setState(() {
                            b == true ? b = false : b = true;
                          });
                        },
                        child: b == true
                            ? const Icon(Icons.remove_red_eye)
                            : const Icon(Icons.panorama_fish_eye_rounded),
                      ),
                      border: const OutlineInputBorder(),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 5, bottom: 10),
                  child: InkWell(
                    onTap: () {
                      setState(() {
                        giris();
                      });
                    },
                    child: Container(
                      width: MediaQuery.of(context).size.width - 28,
                      height: 50,
                      decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: const [
                          Padding(
                            padding: EdgeInsets.only(right: 15),
                            child: Icon(
                              Icons.person_add_alt,
                              color: Colors.white,
                            ),
                          ),
                          Text(
                            "Agza bol",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void giris() {
    if (keyselect.currentState!.validate()) {
      keyselect.currentState!.save();
      debugPrint(
          "ady: $_name, ulanyjy ady: $_username, tel: $_tel, acar sozi: $_acarsoz");
      // Navigator.push(
      //     context, MaterialPageRoute(builder: (context) => const Abilities()));
    }
  }
}

