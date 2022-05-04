import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'color.dart';
class Details extends StatefulWidget {
  const Details({Key? key}) : super(key: key);

  @override
  State<Details> createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  SingleChildScrollView(
        child: SafeArea(
          child:  Column(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height*0.8,
                child:  Row(
                  children: [
                    Expanded(child:Column(

                      children: [
                        SizedBox(height: 10,),

                        Align(

                          alignment: Alignment.topLeft,
                          child: IconButton(
                            padding: EdgeInsets.symmetric(horizontal: 30.0),
                            onPressed: () {  Navigator.pop(
                              context,

                            );},
                            icon:  Icon(Icons.arrow_back_ios),

                          ),
                        ),
                        Spacer(),
                        SizedBox(height: 50,),
                        Container(
                          padding: EdgeInsets.all(20.0),
                          margin: EdgeInsets.symmetric(vertical:10),
                          height: 60,
                          width: 60,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(12),
                            boxShadow:[
                              BoxShadow(

                                    offset:Offset(0,15),
                                    blurRadius: 22,
                                    color: kPrimaryColor.withOpacity(0.23)

                            ),
                              BoxShadow(

                                  offset:Offset(-15,-15),
                                  blurRadius: 20,
                                  color: kPrimaryColor.withOpacity(0.23)

                              )
                            ] ,



                          ),
                          child: Icon(Icons.favorite,
                            color: kPrimaryColor,


                          ),
                        ),
                        SizedBox(height: 50,),
                        Container(
                          padding: EdgeInsets.all(20.0),
                          margin: EdgeInsets.symmetric(vertical:10),
                          height: 60,
                          width: 60,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(12),
                            boxShadow:[
                              BoxShadow(

                                  offset:Offset(0,15),
                                  blurRadius: 22,
                                  color: kPrimaryColor.withOpacity(0.23)

                              ),
                              BoxShadow(

                                  offset:Offset(-15,-15),
                                  blurRadius: 20,
                                  color: kPrimaryColor.withOpacity(0.23)

                              )
                            ] ,



                          ),
                          child: Icon(Icons.lock_clock,
                            color: kPrimaryColor,


                          ),
                        ),
                        SizedBox(height: 50,),
                        Container(
                          padding: EdgeInsets.all(20.0),
                          margin: EdgeInsets.symmetric(vertical:10),
                          height: 60,
                          width: 60,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(12),
                            boxShadow:[
                              BoxShadow(

                                  offset:Offset(0,15),
                                  blurRadius: 22,
                                  color: kPrimaryColor.withOpacity(0.23)

                              ),
                              BoxShadow(

                                  offset:Offset(-15,-15),
                                  blurRadius: 20,
                                  color: kPrimaryColor.withOpacity(0.23)

                              )
                            ] ,



                          ),
                          child: Icon(Icons.face_retouching_natural_sharp,
                            color: kPrimaryColor,


                          ),
                        ),
                        SizedBox(height: 50,),
                        Container(
                          padding: EdgeInsets.all(20.0),
                          margin: EdgeInsets.symmetric(vertical:10),
                          height: 60,
                          width: 60,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(12),
                            boxShadow:[
                              BoxShadow(

                                  offset:Offset(0,15),
                                  blurRadius: 22,
                                  color: kPrimaryColor.withOpacity(0.23)

                              ),
                              BoxShadow(

                                  offset:Offset(-15,-15),
                                  blurRadius: 20,
                                  color: kPrimaryColor.withOpacity(0.23)

                              )
                            ] ,



                          ),
                          child: Icon(Icons.delivery_dining_outlined,
                            color: kPrimaryColor,


                          ),
                        ),
                        SizedBox(height: 50,),
                      ],
                    ),

                    ),
                    Container(
                      height: MediaQuery.of(context).size.height*0.8,
                      width: MediaQuery.of(context).size.width*0.75,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(topLeft: Radius.circular(63),
                              bottomLeft: Radius.circular(63) ),
                          boxShadow: [
                            BoxShadow(
                                offset:Offset(0,10),
                                blurRadius: 60,
                                color: kPrimaryColor.withOpacity(0.23)
                            )

                          ],

                          image: DecorationImage(

                            image: AssetImage("assets/pic.png"),
                            fit: BoxFit.cover,
                            alignment: Alignment.centerLeft,




                          )
                      ),

                    ),

                  ],
                ),
              ),

             Padding(padding: EdgeInsets.only(top: 50),
             child:  Column(
               children: [
                 Row(
                   children: [

                     Expanded(
                         child:Padding(
                           padding: EdgeInsets.symmetric(horizontal: 30),
                           child:   Text("ANTARTIC",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 40),),
                         )

                     ),
                     
                   ],
                 ),
                 Row(
                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                   children: [

                     Expanded(
                         child:Padding(
                           padding: EdgeInsets.symmetric(horizontal: 30),
                           child:   Text("Price:"
                               ,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25,color: kPrimaryColor),),
                         )

                     ),
                    Padding(padding: EdgeInsets.only(right: 10),
                    child:  Text("400/-"
                      ,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25,color: kPrimaryColor),),)




                   ],
                 ),
               ],
             ),),
              SizedBox(height: 20,),
              Row(
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width/2,
                    height: 60,
                    child: FlatButton(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(topRight: Radius.circular(12))
                      ),
                      child: Text("BUY",style: TextStyle(
                      fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white
                    ),
                    ),
                      onPressed: (){},
                      color: kPrimaryColor,

                    ),
                  ),
                 Expanded(child:  SizedBox(
                   width: MediaQuery.of(context).size.width/2,
                   height: 60,
                   child: FlatButton(
                     shape: RoundedRectangleBorder(
                         borderRadius: BorderRadius.only(topRight: Radius.circular(12))
                     ),
                     child: Text("Description",style: TextStyle(
                         fontSize: 20,fontWeight: FontWeight.bold,color:kPrimaryColor
                     ),
                     ),
                     onPressed: (){},

                   ),
                 ))
                ],
              )
            ],
          ),
        )
      ),
    );

  }
}
