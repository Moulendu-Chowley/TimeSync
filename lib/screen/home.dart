import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:intl/intl.dart';
import 'package:logins/screen/profile.dart';
import 'package:logins/screen/splash.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'dart:math' as math;
import 'dashboard.dart';
import 'login.dart';

class Home extends StatefulWidget {
  const Home({Key ?key,required this.name}) : super(key: key);
  final String name;
  @override
  State<Home> createState() => _HomeState();
}




class _HomeState extends State<Home> {

  var b='';
  var date= DateTime.now();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    void all()async{
      var sharedPef = await SharedPreferences.getInstance();
      var a= sharedPef.getString("userdata");
      b = a.toString()??"no value" ;
      setState((){
      });

  }}
  @override
  Widget build(BuildContext context) {

    return  Scaffold(
     // backgroundColor: Colors.lightBlueAccent,

      bottomNavigationBar: Container(
        //color: Colors.black,
        padding: EdgeInsets.only(left:40,right:40),
        decoration: BoxDecoration(borderRadius: BorderRadius.only(
        topLeft: Radius.circular(10),
        topRight: Radius.circular(10),
        ),
          color: Colors.white24),
        child: Row(

          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [


            //your script


            IconButton(
              color:Colors.black54,
              icon: const Icon(Icons.dashboard),
              onPressed: () {
              Navigator.pushReplacement(
              context, MaterialPageRoute(builder: (context) => dash(),));
    },
                //write your script

            ),
            IconButton(
              color:Colors.black54,
              icon: const Icon(Icons.home),
              onPressed: () {
                //write your script
              },
            ),
            IconButton(
              color:Colors.black54,
              icon: const Icon(Icons.person),
              onPressed: () {
              Navigator.pushReplacement(
                context, MaterialPageRoute(builder: (context) => profile(),));
    },
                //write your script

            )
          ], // This trailing comma makes auto-formatting nicer for build methods.
        ),
      ),
        body:
          Padding(
            padding: const EdgeInsets.only(top:40.0),
            child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                   children: [
                     Column(
                       mainAxisAlignment: MainAxisAlignment.start,
                       crossAxisAlignment: CrossAxisAlignment.start,
                       children: [
                         Row(
                             mainAxisAlignment: MainAxisAlignment.start,
                             crossAxisAlignment: CrossAxisAlignment.start,
                           children: [
                             CircleAvatar(
                               backgroundImage: AssetImage("assets/images/image.png"),
                             ),
                            SizedBox(width: 5,),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,

                            children: [

                              Text("hey"+"  " +widget.name),
                              Text("Good Morning",
                              style: TextStyle(color: Colors.blue,
                              fontSize: 17,
                              fontWeight: FontWeight.bold),),]),]),]),
                  Container(child: Icon(Icons.notification_add)),


                  ]),
                  SizedBox(height: 20),
                  Container(
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,


                      children: [

                        Icon(Icons.dashboard),
                        SizedBox(width: 20,height: 20,),
                        Text("Dashboard",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold
                        ),)
                      ],
                    ),
                  ),
                  SizedBox(height: 20,),
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(

                            crossAxisAlignment:CrossAxisAlignment.start,
                            children: [
                              Text('Date: ${date.day}:${date.month}:${date.year}'
                              ),
                            SizedBox(height:3),
                            Text('Time:${date.hour}:${date.minute}'),
                              SizedBox(height:3),

                              Text("No of classes today:5"),
                              SizedBox(height:3),

                              Text("TotalAttendance: 25%"),
                              SizedBox(height:3),

                              Text("OverallAttendance:85%")],

                          ),
                        ),
                        CircularPercentIndicator(radius: 40,
                        lineWidth: 10,
                        percent: 0.85,
                        progressColor: Colors.lightBlue,
                        backgroundColor: Colors.white54,
                        circularStrokeCap: CircularStrokeCap.round,
                        center: Text("85%",style: TextStyle(fontSize: 25),),)
                      ],
                    ),
                  height: 120,
                  width: 400,
                    decoration:BoxDecoration(color:Colors.lightBlue,borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30),
                      bottomLeft: Radius.circular(30),
                      bottomRight: Radius.circular(30),
                    ),
                      boxShadow : [BoxShadow(
                          color: Color.fromRGBO(0, 0, 0, 0.15000000596046448),
                          offset: Offset(1,2),
                          blurRadius: 10
                      )],
                      gradient : LinearGradient(
                          begin: Alignment(0.7748503684997559,0.05740667134523392),
                          end: Alignment(-0.05740667134523392,0.09031073749065399),
                          colors: [Color.fromRGBO(44, 201, 250, 1),Color.fromRGBO(159, 230, 253, 5)]),
                  ),),
                  SizedBox(height: 15,),
                  Container(child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,


                    children: [

                      Icon(Icons.schedule_sharp),
                      SizedBox(width: 20,height: 20,),
                      Text("Today Schedule",
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold
                        ),)
                    ],
                  ),),
                  SizedBox(height: 10,),
                  Expanded(
                    child:ListView(

                              children:[Expanded(
                                child: Row(
                                  verticalDirection: VerticalDirection.down,
                                  children: [

                                    Text("13:00 \n"
                                        "- - -\n""- - -\n"
                                        "14:00"),
                                SizedBox(width: 10,),
                                Container(

                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(bottom:1.0),
                                        child: Column(

                                          crossAxisAlignment:CrossAxisAlignment.start,
                                          children: [

                                            Text("English",style:TextStyle(fontSize: 20),),
                                            SizedBox(height:3),

                                            Text("Total Classes: 10/12"),
                                            SizedBox(height:3),

                                            Text("Can miss the class"),
                                          Padding(
                                            padding: const EdgeInsets.only(bottom: 10.0),
                                            child: Row(
                                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                              children: [
                                                ElevatedButton(onPressed: (){}, child:Text("cancel"),
                                                style: ElevatedButton.styleFrom(primary: Colors.lightBlueAccent,
                                                shape: RoundedRectangleBorder(borderRadius:BorderRadius.all(Radius.circular(10)))),
                                                ),
                                                SizedBox(width: 2,),
                                                ElevatedButton(onPressed: (){}, child:Text("Absent"),
                                                  style: ElevatedButton.styleFrom(primary: Colors.lightBlueAccent,
                                                      shape: RoundedRectangleBorder(borderRadius:BorderRadius.all(Radius.circular(10)))),
                                                ),

                                                SizedBox(width: 2,),

                                                ElevatedButton(onPressed: (){}, child:Text("Present"),
                                                    style: ElevatedButton.styleFrom(primary: Colors.lightBlueAccent,
                                                shape: RoundedRectangleBorder(borderRadius:BorderRadius.all(Radius.circular(10)))),
                                                        ),
                                              ],
                                            ),
                                          )],


                                        ),
                                      ),
                                      CircularPercentIndicator(radius: 40,
                                        lineWidth: 10,
                                        percent: 0.85,
                                        progressColor: Colors.lightBlue,
                                        backgroundColor: Colors.white54,
                                        circularStrokeCap: CircularStrokeCap.round,
                                        center: Text("78%",style: TextStyle(fontSize: 25),),)
                                    ],
                                  ),
                                  height: 120,
                                  width: 350,
                                  decoration:BoxDecoration(color:Colors.lightBlue,borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(30),
                                    topRight: Radius.circular(30),
                                    bottomLeft: Radius.circular(30),
                                    bottomRight: Radius.circular(30),
                                  ),
                                    boxShadow : [BoxShadow(
                                        color: Color.fromRGBO(0, 0, 0, 0.15000000596046448),
                                        offset: Offset(1,2),
                                        blurRadius: 10
                                    )],
                                    gradient : LinearGradient(
                                        begin: Alignment(0.7748503684997559,0.05740667134523392),
                                        end: Alignment(-0.05740667134523392,0.09031073749065399),
                                        colors: [Color.fromRGBO(44, 201, 250, 1),Color.fromRGBO(159, 230, 253, 5)]),
                                  ),
                        )],
                      ),
                      ),
                                SizedBox(height:20),
                                Expanded(
                                  child: Row(
                                    verticalDirection: VerticalDirection.down,
                                    children: [

                                      Text("14:00 \n"
                                          "- - -\n""- - -\n"
                                          "15:00"),
                                      SizedBox(width: 10,),

                                      Container(

                                        child: Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.only(bottom:1.0),
                                              child: Column(

                                                crossAxisAlignment:CrossAxisAlignment.start,
                                                children: [

                                                  Text("Biology",style:TextStyle(fontSize: 20),),
                                                  SizedBox(height:3),

                                                  Text("Total Classes: 10/12"),
                                                  SizedBox(height:3),

                                                  Text("Can miss the class"),
                                                  Padding(
                                                    padding: const EdgeInsets.only(bottom: 10.0),
                                                    child: Row(
                                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                      children: [
                                                        ElevatedButton(onPressed: (){}, child:Text("cancel"),
                                                          style: ElevatedButton.styleFrom(primary: Colors.lightBlueAccent,
                                                              shape: RoundedRectangleBorder(borderRadius:BorderRadius.all(Radius.circular(10)))),
                                                        ),
                                                        SizedBox(width: 2,),
                                                        ElevatedButton(onPressed: (){}, child:Text("Absent"),
                                                          style: ElevatedButton.styleFrom(primary: Colors.lightBlueAccent,
                                                              shape: RoundedRectangleBorder(borderRadius:BorderRadius.all(Radius.circular(10)))),
                                                        ),

                                                        SizedBox(width: 2,),

                                                        ElevatedButton(onPressed: (){}, child:Text("Present"),
                                                          style: ElevatedButton.styleFrom(primary: Colors.lightBlueAccent,
                                                              shape: RoundedRectangleBorder(borderRadius:BorderRadius.all(Radius.circular(10)))),
                                                        ),
                                                      ],
                                                    ),
                                                  )],


                                              ),
                                            ),
                                            CircularPercentIndicator(radius: 40,
                                              lineWidth: 10,
                                              percent: 0.85,
                                              progressColor: Colors.lightBlue,
                                              backgroundColor: Colors.white54,
                                              circularStrokeCap: CircularStrokeCap.round,
                                              center: Text("70%",style: TextStyle(fontSize: 25),),)
                                          ],
                                        ),
                                        height: 120,
                                        width: 350,
                                        decoration:BoxDecoration(color:Colors.lightBlue,borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(30),
                                          topRight: Radius.circular(30),
                                          bottomLeft: Radius.circular(30),
                                          bottomRight: Radius.circular(30),
                                        ),
                                          boxShadow : [BoxShadow(
                                              color: Color.fromRGBO(0, 0, 0, 0.15000000596046448),
                                              offset: Offset(1,2),
                                              blurRadius: 10
                                          )],
                                          gradient : LinearGradient(
                                              begin: Alignment(0.7748503684997559,0.05740667134523392),
                                              end: Alignment(-0.05740667134523392,0.09031073749065399),
                                              colors: [Color.fromRGBO(44, 201, 250, 1),Color.fromRGBO(159, 230, 253, 5)]),
                                        ),
                                      )],
                                  ),
                                ),
                                SizedBox(height: 20,),
                                Expanded(
                                  child: Row(
                                    verticalDirection: VerticalDirection.down,
                                    children: [

                                      Text("16:00 \n"
                                          "- - -\n""- - -\n"
                                          "17:00"),
                                      SizedBox(width: 10,),

                                      Container(

                                        child: Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.only(bottom:1.0),
                                              child: Column(

                                                crossAxisAlignment:CrossAxisAlignment.start,
                                                children: [

                                                  Text("Math",style:TextStyle(fontSize: 20),),
                                                  SizedBox(height:3),

                                                  Text("Total Classes: 10/12"),
                                                  SizedBox(height:3),

                                                  Text("Can miss the class"),
                                                  Padding(
                                                    padding: const EdgeInsets.only(bottom: 10.0),
                                                    child: Row(
                                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                      children: [
                                                        ElevatedButton(onPressed: (){}, child:Text("cancel"),
                                                          style: ElevatedButton.styleFrom(primary: Colors.lightBlueAccent,
                                                              shape: RoundedRectangleBorder(borderRadius:BorderRadius.all(Radius.circular(10)))),
                                                        ),
                                                        SizedBox(width: 2,),
                                                        ElevatedButton(onPressed: (){}, child:Text("Absent"),
                                                          style: ElevatedButton.styleFrom(primary: Colors.lightBlueAccent,
                                                              shape: RoundedRectangleBorder(borderRadius:BorderRadius.all(Radius.circular(10)))),
                                                        ),

                                                        SizedBox(width: 2,),

                                                        ElevatedButton(onPressed: (){}, child:Text("Present"),
                                                          style: ElevatedButton.styleFrom(primary: Colors.lightBlueAccent,
                                                              shape: RoundedRectangleBorder(borderRadius:BorderRadius.all(Radius.circular(10)))),
                                                        ),
                                                      ],
                                                    ),
                                                  )],


                                              ),
                                            ),
                                            CircularPercentIndicator(radius: 40,
                                              lineWidth: 10,
                                              percent: 0.85,
                                              progressColor: Colors.lightBlue,
                                              backgroundColor: Colors.white54,
                                              circularStrokeCap: CircularStrokeCap.round,
                                              center: Text("95%",style: TextStyle(fontSize: 25),),)
                                          ],
                                        ),
                                        height: 120,
                                        width: 350,
                                        decoration:BoxDecoration(color:Colors.lightBlue,borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(30),
                                          topRight: Radius.circular(30),
                                          bottomLeft: Radius.circular(30),
                                          bottomRight: Radius.circular(30),
                                        ),
                                          boxShadow : [BoxShadow(
                                              color: Color.fromRGBO(0, 0, 0, 0.15000000596046448),
                                              offset: Offset(1,2),
                                              blurRadius: 10
                                          )],
                                          gradient : LinearGradient(
                                              begin: Alignment(0.7748503684997559,0.05740667134523392),
                                              end: Alignment(-0.05740667134523392,0.09031073749065399),
                                              colors: [Color.fromRGBO(44, 201, 250, 1),Color.fromRGBO(159, 230, 253, 5)]),
                                        ),
                                      )],
                                  ),
                                ),
                                SizedBox(height: 20,),
                                Expanded(
                                  child: Row(
                                    verticalDirection: VerticalDirection.down,
                                    children: [

                                      Text("17:00 \n"
                                          "- - -\n""- - -\n"
                                          "18:00"),
                                      SizedBox(width: 10,),

                                      Container(

                                        child: Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.only(bottom:1.0),
                                              child: Column(

                                                crossAxisAlignment:CrossAxisAlignment.start,
                                                children: [

                                                  Text("Physics",style:TextStyle(fontSize: 20),),
                                                  SizedBox(height:3),

                                                  Text("Total Classes: 10/12"),
                                                  SizedBox(height:3),

                                                  Text("Can miss the class"),
                                                  Padding(
                                                    padding: const EdgeInsets.only(bottom: 10.0),
                                                    child: Row(
                                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                      children: [
                                                        ElevatedButton(onPressed: (){}, child:Text("cancel"),
                                                          style: ElevatedButton.styleFrom(primary: Colors.lightBlueAccent,
                                                              shape: RoundedRectangleBorder(borderRadius:BorderRadius.all(Radius.circular(10)))),
                                                        ),
                                                        SizedBox(width: 2,),
                                                        ElevatedButton(onPressed: (){}, child:Text("Absent"),
                                                          style: ElevatedButton.styleFrom(primary: Colors.lightBlueAccent,
                                                              shape: RoundedRectangleBorder(borderRadius:BorderRadius.all(Radius.circular(10)))),
                                                        ),

                                                        SizedBox(width: 2,),

                                                        ElevatedButton(onPressed: (){}, child:Text("Present"),
                                                          style: ElevatedButton.styleFrom(primary: Colors.lightBlueAccent,
                                                              shape: RoundedRectangleBorder(borderRadius:BorderRadius.all(Radius.circular(10)))),
                                                        ),
                                                      ],
                                                    ),
                                                  )],


                                              ),
                                            ),
                                            CircularPercentIndicator(radius: 40,
                                              lineWidth: 10,
                                              percent: 0.85,
                                              progressColor: Colors.lightBlue,
                                              backgroundColor: Colors.white54,
                                              circularStrokeCap: CircularStrokeCap.round,
                                              center: Text("85%",style: TextStyle(fontSize: 25),),)
                                          ],
                                        ),
                                        height: 120,
                                        width: 350,
                                        decoration:BoxDecoration(color:Colors.lightBlue,borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(30),
                                          topRight: Radius.circular(30),
                                          bottomLeft: Radius.circular(30),
                                          bottomRight: Radius.circular(30),
                                        ),
                                          boxShadow : [BoxShadow(
                                              color: Color.fromRGBO(0, 0, 0, 0.15000000596046448),
                                              offset: Offset(1,2),
                                              blurRadius: 10
                                          )],
                                          gradient : LinearGradient(
                                              begin: Alignment(0.7748503684997559,0.05740667134523392),
                                              end: Alignment(-0.05740667134523392,0.09031073749065399),
                                              colors: [Color.fromRGBO(44, 201, 250, 1),Color.fromRGBO(159, 230, 253, 5)]),
                                        ),
                                      )],
                                  ),
                                ),
                                SizedBox(height: 20,),
                                Expanded(
                                  child: Row(
                                    verticalDirection: VerticalDirection.down,
                                    children: [

                                      Text("18:00 \n"
                                          "- - -\n""- - -\n"
                                          "19:00"),
                                      SizedBox(width: 10,),

                                      Container(

                                        child: Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.only(bottom: 1.0),
                                              child: Column(

                                                crossAxisAlignment:CrossAxisAlignment.start,
                                                children: [

                                                  Text("Computer",style:TextStyle(fontSize: 20),),
                                                  SizedBox(height:3),

                                                  Text("Total Classes: 10/12"),
                                                  SizedBox(height:3),

                                                  Text("Can miss the class"),
                                                  Padding(
                                                    padding: const EdgeInsets.only(bottom: 10.0),
                                                    child: Row(
                                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                      children: [
                                                        ElevatedButton(onPressed: (){}, child:Text("cancel"),
                                                          style: ElevatedButton.styleFrom(primary: Colors.lightBlueAccent,
                                                              shape: RoundedRectangleBorder(borderRadius:BorderRadius.all(Radius.circular(10)))),
                                                        ),
                                                        SizedBox(width: 2,),
                                                        ElevatedButton(onPressed: (){}, child:Text("Absent"),
                                                          style: ElevatedButton.styleFrom(primary: Colors.lightBlueAccent,
                                                              shape: RoundedRectangleBorder(borderRadius:BorderRadius.all(Radius.circular(10)))),
                                                        ),

                                                        SizedBox(width: 2,),

                                                        ElevatedButton(onPressed: (){}, child:Text("Present"),
                                                          style: ElevatedButton.styleFrom(primary: Colors.lightBlueAccent,
                                                              shape: RoundedRectangleBorder(borderRadius:BorderRadius.all(Radius.circular(10)))),
                                                        ),],
                                                    ),
                                                  )],
                                              ),
                                            ),
                                            CircularPercentIndicator(radius: 40,
                                              lineWidth: 10,
                                              percent: 0.85,
                                              progressColor: Colors.lightBlue,
                                              backgroundColor: Colors.white54,
                                              circularStrokeCap: CircularStrokeCap.round,
                                              center: Text("85%",style: TextStyle(fontSize: 25),),)
                                          ],
                                        ),
                                        height: 120,
                                        width: 350,
                                        decoration:BoxDecoration(color:Colors.lightBlue,borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(30),
                                          topRight: Radius.circular(30),
                                          bottomLeft: Radius.circular(30),
                                          bottomRight: Radius.circular(30),
                                        ),
                                          boxShadow : [BoxShadow(
                                              color: Color.fromRGBO(0, 0, 0, 0.15000000596046448),
                                              offset: Offset(1,2),
                                              blurRadius: 10
                                          )],
                                          gradient : LinearGradient(
                                              begin: Alignment(0.7748503684997559,0.05740667134523392),
                                              end: Alignment(-0.05740667134523392,0.09031073749065399),
                                              colors: [Color.fromRGBO(44, 201, 250, 1),Color.fromRGBO(159, 230, 253, 5)]),
                                        ),
                                      )],
                                  ),
                                ),
                                SizedBox(height: 20,),
                                Expanded(
                                  child: Row(
                                    verticalDirection: VerticalDirection.down,
                                    children: [

                                      Text("19:00 \n"
                                          "- - -\n""- - -\n"
                                          "20:00"),
                                      SizedBox(width: 10,),

                                      Container(

                                        child: Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.only(bottom: 8.0),
                                              child: Column(

                                                crossAxisAlignment:CrossAxisAlignment.start,
                                                children: [

                                                  Text("Zology",style:TextStyle(fontSize: 20),),
                                                  SizedBox(height:3),

                                                  Text("Total Classes: 10/12"),
                                                  SizedBox(height:3),

                                                  Text("Can miss the class"),
                                                  Padding(
                                                    padding: const EdgeInsets.only(bottom: 1.0),
                                                    child: Row(
                                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                      children: [
                                                        ElevatedButton(onPressed: (){}, child:Text("cancel"),
                                                          style: ElevatedButton.styleFrom(primary: Colors.lightBlueAccent,
                                                              shape: RoundedRectangleBorder(borderRadius:BorderRadius.all(Radius.circular(10)))),
                                                        ),
                                                        SizedBox(width: 2,),
                                                        ElevatedButton(onPressed: (){}, child:Text("Absent"),
                                                          style: ElevatedButton.styleFrom(primary: Colors.lightBlueAccent,
                                                              shape: RoundedRectangleBorder(borderRadius:BorderRadius.all(Radius.circular(10)))),
                                                        ),

                                                        SizedBox(width: 2,),

                                                        ElevatedButton(onPressed: (){}, child:Text("Present"),
                                                          style: ElevatedButton.styleFrom(primary: Colors.lightBlueAccent,
                                                              shape: RoundedRectangleBorder(borderRadius:BorderRadius.all(Radius.circular(10)))),
                                                        ),
                                                      ],
                                                    ),
                                                  )],


                                              ),
                                            ),
                                            CircularPercentIndicator(radius: 40,
                                              lineWidth: 10,
                                              percent: 0.85,
                                              progressColor: Colors.lightBlue,
                                              backgroundColor: Colors.white54,
                                              circularStrokeCap: CircularStrokeCap.round,
                                              center: Text("85%",style: TextStyle(fontSize: 25),),)
                                          ],
                                        ),
                                        height: 120,
                                        width: 350,
                                        decoration:BoxDecoration(color:Colors.lightBlue,borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(30),
                                          topRight: Radius.circular(30),
                                          bottomLeft: Radius.circular(30),
                                          bottomRight: Radius.circular(30),
                                        ),
                                          boxShadow : [BoxShadow(
                                              color: Color.fromRGBO(0, 0, 0, 0.15000000596046448),
                                              offset: Offset(1,2),
                                              blurRadius: 10
                                          )],
                                          gradient : LinearGradient(
                                              begin: Alignment(0.7748503684997559,0.05740667134523392),
                                              end: Alignment(-0.05740667134523392,0.09031073749065399),
                                              colors: [Color.fromRGBO(44, 201, 250, 1),Color.fromRGBO(159, 230, 253, 5)]),
                                        ),
                                      )],
                                  ),
                                ),
                              ],),
          ),




        ]),),);






  }
}
/// Text("welcome"),
//                   ElevatedButton(onPressed:()async{
//
//                     var sharedpref = await SharedPreferences.getInstance();
//                     sharedpref.remove(SplashState.KEYLOGIN);
//                     sharedpref.remove("userdata");
//
//                     Navigator.pushReplacement(
//                         context, MaterialPageRoute(builder: (context) => Login(),));
//                   },
//                       child:Text("LOGOUT"),///