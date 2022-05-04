import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'Detail.dart';
import 'color.dart';
void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: kPrimaryColor,
        textTheme: Theme.of(context).textTheme.apply(bodyColor: kTextColor),
        visualDensity: VisualDensity.adaptivePlatformDensity,

      ),
      //callin splash screen
      home: MyHomePage(),
    );
  }
}
//splash screen
class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}
class _MyHomePageState extends State<MyHomePage> {
  @override

  void initState() {
    super.initState();
    Timer(Duration(seconds: 3),
            // navigating to homepage
            ()=>Navigator.pushReplacement(context,
            MaterialPageRoute(builder:
                (context) =>
                    HomePage()
            )
        )
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  Container(

        color: kPrimaryColor,
        child: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height/2,
              width: MediaQuery.of(context).size.width,
              child: Icon(Icons.auto_awesome,size: 200,color: Colors.white,),

            ),
          Expanded(child:   Container(
            height: MediaQuery.of(context).size.height/2,
            width: MediaQuery.of(context).size.width,
            child:Center(
                child:Text("Planterian",style: TextStyle(fontSize: 70,fontWeight: FontWeight.bold,color: Colors.white),
                ) ),
          ))
          ],


        ),

      ),
    );
  }
}


// main page starts from here

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(

// this is app bar
      appBar: AppBar(
        elevation: 0,
        backgroundColor:kPrimaryColor,
        title: Text("Planterian"),
        leading: Icon(Icons.align_horizontal_right_sharp)

      ),
    body: SingleChildScrollView(
      child: Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height* 0.2,
            child: Stack(
              children: [
                Container(
                    height: MediaQuery.of(context).size.height* 0.2-27,
                    decoration: BoxDecoration(
                        color: kPrimaryColor,
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(36),
                          bottomRight: Radius.circular(36),

                        )

                    ),
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 25),
                      child: Row(
                        children: [
                          Expanded(
                              child:Text(" HI MIRZA!",style: TextStyle(color: Colors.white,fontSize: 25,fontWeight: FontWeight.bold),)

                          ),
                          Icon(Icons.supervised_user_circle_rounded,
                            color: Colors.white,
                            size: 50,)
                        ],
                      ),
                    )

                ),
                Positioned(
                    left: 0,
                    right: 0,
                    bottom: 0,

                    child: Container(
                        height: 50,
                        margin: EdgeInsets.symmetric(horizontal: kDefaultPadding),
                        padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20),
                            boxShadow: [
                              BoxShadow(
                                  offset:Offset(0,10),
                                  blurRadius: 50,
                                  color: kPrimaryColor.withOpacity(0.23)
                              )
                            ]

                        ),
                        child:Row(
                          children: [
                            Expanded(child:  TextField(

                              decoration: InputDecoration(
                                  hintText:"SEARCH",
                                  hintStyle: TextStyle(
                                      color: kPrimaryColor.withOpacity(0.40)
                                  ),
                                  enabledBorder: InputBorder.none,
                                  focusedBorder: InputBorder.none

                              ),

                            ),),
                            Icon(Icons.search,color: kPrimaryColor.withOpacity(0.40),
                            ),
                          ],
                        )



                    ))
              ],
            ),

          ),
          //ui part for body starts from here
          SizedBox(height: 20,),
         Padding(padding: EdgeInsets.symmetric(horizontal: 25),
         child:  Row(
           children: [
             Expanded(
                 child: Text("Recommended",style: TextStyle(color:Colors.black,fontSize: 20 ,fontWeight: FontWeight.bold),
                 )),
             FlatButton(onPressed: (){},
                 child: Text("MORE",style: TextStyle(fontWeight:FontWeight.bold,color: Colors.white),),
               color: kPrimaryColor,
               shape: RoundedRectangleBorder(
                   borderRadius: BorderRadius.circular(25),
             ),),
           ],
         ),
         ),
          SizedBox(height: 20,),

          Container(
            height: 300,
            child: ListView.separated(
              shrinkWrap: true,
              itemCount: 5,
              scrollDirection: Axis.horizontal,

              separatorBuilder: (BuildContext context, int index) => SizedBox(width: 5,),
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  margin: EdgeInsets.all(10),
                    child: Column(
                    children: [
                      InkWell(

                        child: Image.asset("assets/pic.png"),
                        onTap: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => const Details()),
                          );
                        },
                      ),

                      Container(
                        height: 60,
                        width: 160,
                        decoration: BoxDecoration(
                          color: Colors.white,
                            borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(20),
                              bottomRight: Radius.circular(20),
                            ),
                          boxShadow: [
                            BoxShadow(
                            offset:Offset(0,10),
                          blurRadius: 50,
                          color: kPrimaryColor.withOpacity(0.23)
                      )

                          ]
                      ),
                        child:Padding(padding: EdgeInsets.all(10),
                        child:  Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("ANTARTIC"),

                     Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("Price:",style: TextStyle(color:kPrimaryColor),),
                              Text("400/-",style: TextStyle(color:kPrimaryColor),)


                            ],
                          ) ,
                          ],
                        ),)
                      )

                    ],
                  ),
                );
              },
            ),
          ),
// second row stats from here
          Padding(padding: EdgeInsets.symmetric(horizontal: 25),
            child:  Row(
              children: [
                Expanded(
                    child: Text("FEATURED",style: TextStyle(color:Colors.black,fontSize: 20 ,fontWeight: FontWeight.bold),
                    )),
                FlatButton(onPressed: (){},
                  child: Text("MORE",style: TextStyle(fontWeight:FontWeight.bold,color: Colors.white),),
                  color: kPrimaryColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25),
                  ),),
              ],
            ),
          ),
          SizedBox(height: 20,),
          Container(
            height: 300,
            child: ListView.separated(
              shrinkWrap: true,
              itemCount: 5,
              scrollDirection: Axis.horizontal,

              separatorBuilder: (BuildContext context, int index) => SizedBox(width: 5,),
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  margin: EdgeInsets.all(10),
                  child: Column(

                    children: [
                      InkWell(

                        child: Image.asset("assets/pic2.png"),
                        onTap: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => const Details()),
                          );
                        },
                      ),


                      Container(
                          height: 60,
                          width: 160,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(20),
                                bottomRight: Radius.circular(20),
                              ),
                              boxShadow: [
                                BoxShadow(
                                    offset:Offset(0,10),
                                    blurRadius: 50,
                                    color: kPrimaryColor.withOpacity(0.23)
                                )

                              ]
                          ),
                          child:Padding(padding: EdgeInsets.all(10),
                            child:  Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("MARYLAND"),

                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text("Price:",style: TextStyle(color:kPrimaryColor),),
                                    Text("600/-",style: TextStyle(color:kPrimaryColor),)


                                  ],
                                ) ,
                              ],
                            ),)
                      )

                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    ),

      // here's the  button navigation bar
      bottomNavigationBar: BottomNavigationBar(
        elevation: 0,
        selectedItemColor: kPrimaryColor,
        backgroundColor: kPrimaryColor.withOpacity(0.10),
        currentIndex: _selectedIndex, //New
        onTap: _onItemTapped,

        items: const <BottomNavigationBarItem>[


          BottomNavigationBarItem(


            icon: Icon(Icons.home),
            label: 'Home',

          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: 'Favroite',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.supervised_user_circle),
            label: 'Profile',
          ),

        ],

      ),
    );

  }
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
}
