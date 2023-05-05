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
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        // resizeToAvoidBottomInset: true,
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
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
                  SizedBox(height: 30,),


                  Expanded(
                    //This stack is used to give form validation background plate
                    child: Stack(
                      children: [
                        Container(
                          constraints: BoxConstraints.expand(width: 350.0,height: 400.0),
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
                          child: Container(
                            constraints: BoxConstraints.expand(width: 250.0,height: 56.0),
                            margin: EdgeInsets.only(left: 50.0,top: 100.0),
                            child: Card(
                              elevation: 10,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(50.0)
                              ),
                              child: Form(
                                   child: Column(
                                     children: [
                                       Padding(
                                       padding: EdgeInsets.only(left: 10),
                                       child: TextFormField(

                                       keyboardType: TextInputType.emailAddress,
                                         decoration: InputDecoration(
                                           hintText: 'Enter Email',
                                           prefixIcon: Icon(Icons.email,
                                           color: Colors.orange,
                                           ),
                                           border: InputBorder.none
                                         ),
                                         onChanged: (String value){

                                         },
                                         validator: (value){
                                         return value!.isEmpty?"Please enter email":null;
                                         },
                                       ),
                                     ),
                                       // SizedBox(
                                       //   height: 40,
                                       // ),
                                       // Padding(
                                       //   padding: EdgeInsets.only(left: 10),
                                       //   child: TextFormField(
                                       //
                                       //     keyboardType: TextInputType.emailAddress,
                                       //     decoration: InputDecoration(
                                       //         hintText: 'Enter Email',
                                       //         prefixIcon: Icon(Icons.email,
                                       //           color: Colors.orange,
                                       //         ),
                                       //         border: InputBorder.none
                                       //     ),
                                       //     onChanged: (String value){
                                       //
                                       //     },
                                       //     validator: (value){
                                       //       return value!.isEmpty?"Please enter email":null;
                                       //     },
                                       //   ),
                                       // ),
                                   ]),
                                ),
                            ),
                          ),
                          ),
                      ],
                    ),
                  )
              ]
              ),
          ),
        ),
      ),
    );
  }
}
