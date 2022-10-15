


import 'package:flutter/material.dart';


class Register extends StatefulWidget {
  const Register({super.key});



  @override
  State<Register> createState() => RegisterState();
}

class RegisterState extends State<Register> {
  Pattern p =
      " /^(([^<>()[]\\.,;:s@\"]+(.[^<>()[]\\.,;:s@\"]+)*)|(\".+\"))@(([[0-9]{1,3}.[0-9]{1,3}.[0-9]{1,3}.[0-9]{1,3}])|(([a-zA-Z-0-9]+.)+[a-zA-Z]{2,}))\$/'";
  GlobalKey<FormState> formState1 =GlobalKey<FormState>();
  GlobalKey<FormState> formState2 =GlobalKey<FormState>();




  Icon m1=const Icon (Icons.visibility);
  Icon m2=const Icon (Icons.visibility);

  bool _obscureText1=true;
  bool _obscureText2=true;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body:Stack(

            children: [
              Container(
                color: Colors.green,
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

                    TextFormField(
                      onChanged: (val){
                        setState(() {

                        });},
                      style: const TextStyle(
                        fontSize:22,
                        color:  Colors.white,
                      ),
                      decoration: const InputDecoration(

                        enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color:Colors.white,
                              width: 1,
                            )),
                        hintText: "Full Name",
                        hintStyle: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),

                    const SizedBox(height: 20,),
                    Form(
                      key: formState1,
                      child: TextFormField(
                        validator: (val){
                          if(val != p) {
                            return "ادخال خاطاء";
                          }
                          return null;
                        },
                        style: const TextStyle(
                          fontSize:22,
                          color:  Colors.white,
                        ),
                        onChanged: (val){
                          setState(() {

                          });},
                        decoration: const InputDecoration(
                          enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color:Colors.white,
                                width: 1,
                              )),
                          hintText: "E_Mail",
                          hintStyle: TextStyle(
                            color: Colors.white,

                          ),

                        ),

                      ),
                    ),
                    const SizedBox(height: 20,),
                    Form(
                      key: formState2,
                      child: TextFormField(
                        validator: (val){
                          if(val?.length != 8) {
                            return "ادخال خاطاء";
                          }
                          return null;
                        },
                        style: const TextStyle(
                          fontSize:22,
                          color:  Colors.white,
                        ),
                        onChanged: (val){
                          setState(() {

                          });},
                        obscureText:_obscureText1,
                        decoration: InputDecoration(
                          enabledBorder: const UnderlineInputBorder(
                              borderSide: BorderSide(color:Colors.white,
                                width: 1,
                              )),
                          hintText: "password",
                          hintStyle: const TextStyle(
                            color: Colors.white,

                          ),

                          suffixIcon: IconButton(
                            icon:m1,
                            onPressed: (){
                              setState(() {
                                if(_obscureText1==true) {
                                  m1= const Icon(Icons.visibility_off);
                                }
                                else{
                                  m1= const Icon(Icons.visibility);
                                }




                                _obscureText1= !_obscureText1;

                              });
                            },
                          ),
                        ),

                      ),
                    ),

                    const SizedBox(height: 20,),
                    TextFormField(
                      style: const TextStyle(
                        fontSize:22,
                        color:  Colors.white,
                      ),
                      onChanged: (val){
                        setState(() {

                        });},
                      obscureText:_obscureText2,
                      decoration: InputDecoration(
                        enabledBorder: const UnderlineInputBorder(
                            borderSide: BorderSide(color:Colors.white,
                              width: 1,
                            )),
                        hintText: "Confirm password",
                        hintStyle: const TextStyle(
                          color: Colors.white,

                        ),

                        suffixIcon: IconButton(
                          icon:m2,
                          onPressed: (){
                            setState(() {
                              if(_obscureText2==true) {
                                m2 = const Icon(Icons.visibility_off);
                              }
                              else{
                                m2 = const Icon(Icons.visibility);
                              }




                              _obscureText2= !_obscureText2;

                            });
                          },
                        ),
                      ),

                    ),
                    const SizedBox(height: 70,),
                    ElevatedButton(onPressed: (){
                      Navigator.pushNamed(context, "Send_Email");



                    },
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20)

                          ), backgroundColor: Colors.yellow,


                        ),

                        child:const Text('REGISTER',
                          style: TextStyle(
                            height: 1.7,
                            color: Colors.black,
                            fontSize: 30,
                          ),)


                    ),
                    const SizedBox(height: 20,),






                    const SizedBox(height: 20,),
                    const Align(
                      alignment: Alignment.bottomCenter,

                      child :Text("lorem ipsum dolor sit amet, consectetur", style: TextStyle(
                        color: Colors.white,

                      ),
                      ),

                    )

                  ],
                ),
              ),

            ]
        ),

      ),


    );
  }

}

