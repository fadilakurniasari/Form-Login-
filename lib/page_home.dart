import 'package:flutter/material.dart';
import 'package:login/page_home.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Aplikasi Login',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: PageLogin(),
    );
  }
}

class PageLogin extends StatelessWidget {
  final myUsernameController = TextEditingController();
  final myPasswordController = TextEditingController();
  String nUsername, nPassword;


  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Page Login'),
        backgroundColor: Colors.orange,
      ),

      body: Form(
        key: _formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            TextFormField(
              
              validator: (value) {
                if (value.isEmpty) {
                  return 'Tolong Masukan Username Anda';
                }
                return null;
              },

              controller: myUsernameController,
              decoration: InputDecoration(
                hintText: 'Masukan Username',
              ),
            ),
            TextFormField(
              
              validator: (value) {
                if (value.isEmpty) {
                  return 'Tolong Masukan Password Anda';
                }
                return null;
              },
              maxLength: 16,
              maxLengthEnforced: true,
              controller: myPasswordController,
              obscureText: true,
              decoration: InputDecoration(
                hintText: 'Masukan Password',
              ),
            ),
            SizedBox(
              height: 25.0,
            ),
            MaterialButton(
              minWidth: 85.0,
              height: 50.0,
              color: Colors.green,
              textColor: Colors.white,
              onPressed: () {

                nUsername = myUsernameController.text;
                nPassword = myPasswordController.text;

                if (_formKey.currentState.validate()) {

                  if(nUsername != 'FadilaKurnia'){
                    print("username salah");
                  }else if(nPassword.length <= 5){
                    print("password harus lebih dari 5 ");
                  }else{
                    //aksi pindah
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => page_home(
                                                          nama: nUsername,
                                                          password: 
                                                          nPassword, // variable yang di pass ke page home
                                                        )));
                                              }
                                            }
                                          },
                                          child: Text('Masuk'),
                                        )
                                      ],
                                    ),
                                  ),
                            
                                );
                              }
                            }
                            
                            page_home({String nama, String password}) {
}