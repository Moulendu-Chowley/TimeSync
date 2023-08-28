import 'package:flutter/material.dart';
import 'package:logins/screen/profile.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

import 'home.dart';
class dash extends StatefulWidget {
  const dash({Key? key}) : super(key: key);

  @override
  State<dash> createState() => _dashState();
}

class _dashState extends State<dash> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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



              IconButton(
                color:Colors.black54,
                icon: const Icon(Icons.dashboard),
                onPressed: () {

                },
                //write your script

              ),
              IconButton(
                color:Colors.black54,
                icon: const Icon(Icons.home),
                onPressed: () {
                  Navigator.pushReplacement(
                      context, MaterialPageRoute(builder: (context) => Home(name: " ",),));
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
      body:Container(
       height: double.infinity,
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(

              padding: EdgeInsets.all(20),
              height: 300,
              width: 450,
              decoration: BoxDecoration(
                  boxShadow : [BoxShadow(
                      color: Color.fromRGBO(0, 0, 0, 0.15000000596046448),
                      offset: Offset(1,2),
                      blurRadius: 10
                  )],
                  gradient : LinearGradient(
                      begin: Alignment(0.7748503684997559,0.05740667134523392),
                      end: Alignment(-0.05740667134523392,0.09031073749065399),
                      colors: [Color.fromRGBO(44, 201, 250, 1),Color.fromRGBO(159, 230, 253, 5)]
              ),),
              child:Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Icon(Icons.dashboard,size: 40,),
                      Text("Dashboard",style: TextStyle(fontSize:30),)
                    ],
                  ),
                  SizedBox(height: 30,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Attendance Required: 75%"),
                          SizedBox(height: 10,),
                          Text("Overall Attendance: 85"),
                          SizedBox(height: 10,),
                          Text("Total Subject: 9"),
                          SizedBox(height: 10,),
                          Text("cant miss the next class")
                        ],
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
                  SizedBox(height: 30,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ElevatedButton(onPressed: (){}, child:Text("Add Subject"),
                        style: ElevatedButton.styleFrom(primary: Colors.lightBlueAccent,
                            shape: RoundedRectangleBorder(borderRadius:BorderRadius.all(Radius.circular(10)))),
                      ),
                      SizedBox(width: 2,),
                      ElevatedButton(onPressed: (){}, child:Text("Add Schedule"),
                        style: ElevatedButton.styleFrom(primary: Colors.lightBlueAccent,
                            shape: RoundedRectangleBorder(borderRadius:BorderRadius.all(Radius.circular(10)))),
                      ),

                      SizedBox(width: 2,),

                    ],
                  )
                ],
              )
            ),
          Text("My Subject",style: TextStyle(fontSize: 30,fontWeight:FontWeight.w700)),
            SizedBox(height: 20,),
            Expanded(child:
            ListView(
              children: [
                Container(
                  decoration:BoxDecoration(color:Colors.white24,borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10),
                    bottomLeft: Radius.circular(10),
                    bottomRight: Radius.circular(10),
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
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Physics",style: TextStyle(fontSize: 20,fontWeight:FontWeight.w700)),
                        SizedBox(height: 5,),
                        LinearPercentIndicator(
                            lineHeight: 10,
                            percent: 0.74,
                            progressColor: Colors.lightBlue,
                            backgroundColor: Colors.lightBlue.shade100,

                        ),
                        SizedBox(height: 5,),
                        Text("Attendance: 74%",style: TextStyle(fontSize: 20,fontWeight:FontWeight.w700),),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 10,),
                Container(
                  decoration:BoxDecoration(color:Colors.white24,borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10),
                    bottomLeft: Radius.circular(10),
                    bottomRight: Radius.circular(10),

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
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Maths",style: TextStyle(fontSize: 20,fontWeight:FontWeight.w700)),
                        SizedBox(height: 5,),
                        LinearPercentIndicator(
                          lineHeight: 10,
                          percent: 0.87,
                          progressColor: Colors.lightBlue,
                          backgroundColor: Colors.lightBlue.shade100,

                        ),
                        SizedBox(height: 5,),
                        Text("Attendance: 87%",style: TextStyle(fontSize: 20,fontWeight:FontWeight.w700),)
              ],
            ),
            ),
                ),
                SizedBox(height: 10,),
                Container(
                  decoration:BoxDecoration(color:Colors.white24,borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10),
                    bottomLeft: Radius.circular(10),
                    bottomRight: Radius.circular(10),
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
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Biology",style: TextStyle(fontSize: 20,fontWeight:FontWeight.w700)),
                        SizedBox(height: 5,),
                        LinearPercentIndicator(
                          lineHeight: 10,
                          percent: 0.82,
                          progressColor: Colors.lightBlue,
                          backgroundColor: Colors.lightBlue.shade100,

                        ),
                        SizedBox(height: 5,),
                        Text("Attendance: 82%",style: TextStyle(fontSize: 20,fontWeight:FontWeight.w700),)
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 10,),
                Container(decoration:BoxDecoration(color:Colors.white24,borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10),
                  topRight: Radius.circular(10),
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10),
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
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Chemistry",style: TextStyle(fontSize: 20,fontWeight:FontWeight.w700)),
                        SizedBox(height: 5,),
                        LinearPercentIndicator(
                          lineHeight: 10,
                          percent: 0.86,
                          progressColor: Colors.lightBlue,
                          backgroundColor: Colors.lightBlue.shade100,

                        ),
                        SizedBox(height: 5,),
                        Text("Attendance: 86%",style: TextStyle(fontSize: 20,fontWeight:FontWeight.w700),)
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 10,),
                Container(
                  decoration:BoxDecoration(color:Colors.white24,borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10),
                    bottomLeft: Radius.circular(10),
                    bottomRight: Radius.circular(10),
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
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Zology",style: TextStyle(fontSize: 20,fontWeight:FontWeight.w700)),
                        SizedBox(height: 5,),
                        LinearPercentIndicator(
                          lineHeight: 10,
                          percent: 0.88,
                          progressColor: Colors.lightBlue,
                          backgroundColor: Colors.lightBlue.shade100,

                        ),
                        SizedBox(height: 5,),
                        Text("Attendance: 88%",style: TextStyle(fontSize: 20,fontWeight:FontWeight.w700),)
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 10,),
                Container(
                  decoration:BoxDecoration(color:Colors.white24,borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10),
                    bottomLeft: Radius.circular(10),
                    bottomRight: Radius.circular(10),
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
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Botany",style: TextStyle(fontSize: 20,fontWeight:FontWeight.w700)),
                        SizedBox(height: 5,),
                        LinearPercentIndicator(
                          lineHeight: 10,
                          percent: 0.78,
                          progressColor: Colors.lightBlue,
                          backgroundColor: Colors.lightBlue.shade100,

                        ),
                        SizedBox(height: 5,),
                        Text("Attendance: 78%",style: TextStyle(fontSize: 20,fontWeight:FontWeight.w700),)
                      ],
                    ),
                  ),
                ),SizedBox(height: 10,),
                Container(
                  decoration:BoxDecoration(color:Colors.white24,borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10),
                    bottomLeft: Radius.circular(10),
                    bottomRight: Radius.circular(10),
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
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Computer",style: TextStyle(fontSize: 20,fontWeight:FontWeight.w700)),
                        SizedBox(height: 5,),
                        LinearPercentIndicator(
                          lineHeight: 10,
                          percent: 0.90,
                          progressColor: Colors.lightBlue,
                          backgroundColor: Colors.lightBlue.shade100,

                        ),
                        SizedBox(height: 5,),
                        Text("Attendance: 90%",style: TextStyle(fontSize: 20,fontWeight:FontWeight.w700),),


                      ],

                    ),
                  ),
                )
          ],
        ),
        

      )

    ])
    )
    );
  }
}
