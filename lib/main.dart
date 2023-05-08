import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';


void main()
{
  runApp(FrantendLogin(),);
}


class FrantendLogin extends StatefulWidget {
  const FrantendLogin({Key? key}) : super(key: key);

  @override
  State<FrantendLogin> createState() => _FrantendLoginState();
}

class _FrantendLoginState extends State<FrantendLogin> {
  //this variable is used to validate the form
 final _formKey=GlobalKey<FormState>();
bool validationEmail=false;
bool validationPassword=false;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
         resizeToAvoidBottomInset: false,
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  //this is for first heading line
                  Container(
                    margin: EdgeInsets.only(top: 70.0),
                  child: Stack(
                    clipBehavior: Clip.none,
                    children: [
                      Container(
                        constraints: BoxConstraints.expand(width: 375.0,height: 108.0),
                        child: Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.0)
                          ),
                          color: const Color(0xff404A6F),
                        ),
                      ),
                      //this is used to positioned the circleAvtar
                      Positioned(
                        top: -50,
                        child: Container(
                          margin: EdgeInsets.only(left: 133.0),
                          //alignment: Alignment.topCenter,
                          //height: 50.0,
                          child: CircleAvatar(
                            radius: 46.0,
                            backgroundColor: const Color(0xff404A6F),
                            child: CircleAvatar(
                              radius: 45.0,
                              backgroundColor: Colors.white,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                  //this is used to give the space between first container and 2nd
                  SizedBox(height: 30,),


                  Expanded(
                    //This stack is used to give form validation background plate
                    child: Stack(
                      children: [
                        //this is use to the give margin
                        Container(
                          constraints: BoxConstraints.expand(width: 350.0,height: 350.0),
                          height: 350,width: 350,
                          //
                          child: Card(
                            shadowColor: const Color(0xff404A6F),
                            elevation: 5,
                            color: Colors.white,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(50.0)
                            ),

                            //This is for Login Here Text
                            child: Padding(
                              padding: EdgeInsets.only(left: 30.0,top: 30.0),
                              child: Text('Login Here',

                                textAlign: TextAlign.start,
                                style: TextStyle(fontSize: 25,
                                  color: Colors.red,
                                  //decoration: TextDecoration.
                                ),
                              ),
                            )
                          ),
                        ),

                        //Form Validation  Email Address

                        Form(
                          //autovalidateMode: AutovalidateMode.,

                          key: _formKey,
                          child: Column(
                              children: [
                          Column(
                            children: [
                              Container(
                              constraints: BoxConstraints.expand(width: 250.0,height: 50.0),
                              margin: EdgeInsets.only(left: 50.0,top: 100.0),
                              child: Card(

                                  elevation: 10,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(50.0)
                                  ),

                                    child: Padding(
                                      padding: EdgeInsets.only(left: 10),
                                      child: TextFormField(
                                       //enabled: true,
                                        keyboardType: TextInputType.emailAddress,
                                        decoration: InputDecoration(
                                            hintText: 'Enter Email',
                                            // focusedErrorBorder: OutlineInputBorder(
                                            //   borderSide:
                                            //     BorderSide(color: validationEmail ? Colors.red : Colors.red,
                                            //       width: validationEmail ? 2.0 : 0
                                            //     ),
                                            //   borderRadius: BorderRadius.circular(20.0),
                                            // ),




                                            errorStyle: TextStyle(
                                              fontSize: 10
                                            ),
                                            prefixIcon: Icon(Icons.email,
                                              color: Colors.orange,
                                            ),
                                            border: OutlineInputBorder(
                                              borderSide: BorderSide(color: validationEmail?Colors.black:Colors.white)
                                            )
                                        ),
                                        onChanged: (String value){

                                        },
                                        validator: (value){
                                          setState(() {
                                            validationEmail=value!.isEmpty;

                                          });
                                          return null;
                                          //value!.isEmpty ?" Please enter email": null
                                        },
                                      ),
                                    ),
                                       ),
                                    ),

                              Padding(
                                padding: EdgeInsets.only(right: 30.0),
                                child: Text(
                                      validationEmail ?" Enter valid email. address": "",
                                  textAlign: TextAlign.start,
                                  style: TextStyle(fontSize: 12,
                                    color: Colors.red,
                                    //decoration: TextDecoration.
                                  ),
                                  textDirection: TextDirection.ltr,

                                ),
                              )
                            ],
                          ),
                                Column(
                                  children:[ Container(
                                    constraints: BoxConstraints.expand(width: 250.0,height: 50.0),
                                    margin: EdgeInsets.only(left: 50.0,top: 17.0),
                                    child: Card(
                                      elevation: 10,
                                      shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(50.0)
                                      ),
                                      child: Padding(
                                        padding: EdgeInsets.only(left: 10),
                                        child: TextFormField(

                                          keyboardType: TextInputType.emailAddress,
                                          decoration: InputDecoration(
                                              hintText: 'Enter Password',
                                              prefixIcon: Icon(Icons.lock,
                                                color: Colors.orange,
                                              ),
                                              border: InputBorder.none
                                          ),
                                          onChanged: (String value){

                                          },
                                          validator: (value){
                                           setState(() {
                                             validationPassword=value!.isEmpty;
                                               });
                                              return null;
                                           //value!.isEmpty ?" Please enter email": null

                                          },
                                        ),
                                      ),
                                    ),
                                  ),
                                    Padding(
                                      padding: EdgeInsets.only(right: 30.0),
                                      child: Text(

                                        validationPassword ?" Enter valid password": "",
                                        textAlign: TextAlign.start,
                                        style: TextStyle(fontSize: 12,
                                          color: Colors.red,

                                          //decoration: TextDecoration.
                                        ),
                                        textDirection: TextDirection.ltr,

                                      ),
                                    )
                               ] ),
                             Container(
                               //constraints: BoxConstraints.expand(width: 250.0,height: 56.0),
                               margin: EdgeInsets.only(right: 40, top: 1.0),
                               child: TextButton(
                                 onPressed: (){},
                                   child: Text('Forgot Password ?',
                                   style: TextStyle(
                                     color: Colors.black,
                                     fontWeight: FontWeight.w400
                                   ),
                                   ),
                               ),
                             ),

                                //this container is used to give button for login
                                Container(
                                  constraints: BoxConstraints.expand(width: 120.0,height: 50.0),
                                  margin: EdgeInsets.only(left: 50.0,top: 25.0),
                                    child: ElevatedButton(
                                        onPressed:(){


                                            if(_formKey.currentState!.validate())
                                            {
                                              print("ok");
                                            }

                                        },

                                      style: ElevatedButton.styleFrom(
                                        padding: EdgeInsets.all(1.0),
                                        backgroundColor: Colors.white,
                                        elevation: 10,
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(50.0),
                                        )
                                        ),
                                        child: Ink(
                                          decoration: BoxDecoration(
                                              gradient:
                                              LinearGradient(
                                                  begin: Alignment.topCenter,
                                                  end: Alignment.bottomCenter,
                                                  colors: [Color(0xff58669A), Color(0xff202538)]),
                                              borderRadius: BorderRadius.circular(50)),
                                          child: Container(
                                            width: 121,
                                            height: 47,
                                            alignment: Alignment.center,
                                            child: Text('LOGIN',
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                fontSize: 20.0,
                                                fontWeight: FontWeight.w300,
                                              ),
                                            ),
                                          ),
                                      ),
                                    ),
                                  ),

                             ]
                            ),
                          ),
                        Container(
                            margin: EdgeInsets.only(left: 50.0,top: 400.0),
                            child: RichText(
                              text: TextSpan(
                                  text: 'New User? Click',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                    fontSize: 15.0
                                  ),
                                children: [
                                  TextSpan(
                                    text: ' Here',
                                    style: TextStyle(
                                      color: Colors.red,
                                      fontWeight: FontWeight.bold,
                                    ),
                                    recognizer: TapGestureRecognizer()
                                      ..onTap=(){print('click');}
                                  ),
                                TextSpan(
                                text: ' To Create Account',
                                )
                                ]
                              ),
                            )
                        )
                      ],
                    ),
                  ),

              ]
              ),
          ),
        ),
      ),
    );
  }
}
