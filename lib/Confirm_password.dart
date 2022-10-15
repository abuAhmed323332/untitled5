

import 'package:flutter/material.dart';


class Confirm_password extends StatefulWidget {


  @override
  State<Confirm_password> createState() => _Confirm_passwordState();
}


class _Confirm_passwordState extends State<Confirm_password> {
  @override
  Icon m1=const Icon (Icons.visibility);
  Icon m2=const Icon (Icons.visibility);

  bool _obscureText1=true;
  bool _obscureText2=true;
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
                      obscureText:_obscureText1,
                      style: const TextStyle(
                        fontSize:22,
                        color:  Colors.white,
                      ),
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
                              _obscureText1= !_obscureText1;

                              if(_obscureText1==true) {
                                m1 = const Icon(Icons.visibility_off);
                              }
                              else{
                                m1 = const Icon(Icons.visibility);
                              }



                            });
                          },
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

                    const SizedBox(height: 75,),
                    ElevatedButton(onPressed: (){

                      Navigator.pushNamed(context, "Register");

                    }
                        ,
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20)

                          ), backgroundColor: Colors.yellow,


                        ),

                        child:const Text('Confirm password',
                          style: TextStyle(
                            height: 1.7,
                            color: Colors.black,
                            fontSize: 30,
                          ),)


                    ),
                    const SizedBox(height: 20,),






                    const SizedBox(height: 70,),
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

