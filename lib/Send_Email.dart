// ignore_for_file: unnecessary_import

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Send_Email extends StatefulWidget {

  @override
  _Send_EmailState createState() => _Send_EmailState();
}

class _Send_EmailState extends State<Send_Email> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body:Stack(

          children: [
            SizedBox(

              width: double.infinity,
              height: double.infinity,
              child: Image.asset("images/Fotolia_-1.png",
                fit: BoxFit.fill,

              ),
            ),

            Center(


              child: ListView(
                padding: const EdgeInsets.symmetric(horizontal: 20),


                children: [


                  Image.asset("images/Logo Icon-1.png",
                    width: 100,
                    height: 200,
                  ),

                  const SizedBox(height: 17,),

                  const TextField(
                    style: TextStyle(
                      fontSize:22,
                      color:  Colors.white,
                    ),
                    decoration: InputDecoration(
                        enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color:Colors.white,
                              width: 1,
                            )
                        ),
                        hintText: "Enter E-mail",
                        hintStyle: TextStyle(
                          color: Colors.white,

                        )
                    ),


                  ),
                  const SizedBox(height: 75,),
                  ElevatedButton(onPressed: () {
                    Navigator.pushNamed(context, "Confirm_password");
                  },
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)
                        ), backgroundColor: Colors.yellow,
                      ),

                      child:const Text('Send Email',
                        style: TextStyle(
                          height: 1.7,
                          color: Colors.black,
                          fontSize: 30,
                        ),)
                  ),
                  const SizedBox(height: 20,),
                  Align(
                    alignment: Alignment.bottomRight,
                    child:Padding(
                      padding: const EdgeInsets.only(right: 70),
                      child: TextButton(onPressed:(){} ,child: const Text("Forget password?",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      ),
                    ),
                  ),

                  const SizedBox(height: 150,),
                  Row(
                      children: [
                        const Text("         ", style: TextStyle(
                          color: Colors.white,)),
                        const Text("Don't Have an Account! ", style: TextStyle(
                          color: Colors.white,

                        )
                        ),
                        GestureDetector(
                          onTap: (){
                            Navigator.pushNamed(context, "Register");
                          },
                          child: const Text(" sign Up From Here",style: TextStyle(
                              fontSize: 17,
                              color: Colors.white
                          ),


                          ),

                        )
                      ]
                  ),
                  const Align(
                    alignment: Alignment.bottomCenter,

                    child: Text("Lorem ipsum dolor sit amet, consectetur", style: TextStyle(
                      color: Colors.white,

                    )
                    ),
                  ),


                ],
              ),
            ),

          ]
      ),




    );
  }

}