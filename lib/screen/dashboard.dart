import 'package:flutter/material.dart';
import 'package:logins/screen/profile.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

import 'home.dart';
class Dash extends StatefulWidget {
  const Dash({Key? key}) : super(key: key);

  @override
  State<Dash> createState() => _DashState();
}

class _DashState extends State<Dash> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: Container(
          //color: Colors.black,
          padding: const EdgeInsets.only(left:40,right:40),
          decoration: const BoxDecoration(borderRadius: BorderRadius.only(
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
                      context, MaterialPageRoute(builder: (context) => const Home(name: " ",),));
                  //write your script
                },
              ),
              IconButton(
                color:Colors.black54,
                icon: const Icon(Icons.person),
                onPressed: () {
                  Navigator.pushReplacement(
                      context, MaterialPageRoute(builder: (context) => const Profile(),));
                },
                //write your script

              )
            ], // This trailing comma makes auto-formatting nicer for build methods.
          ),
        ),
      body:SizedBox(
       height: double.infinity,
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(

              padding: const EdgeInsets.all(20),
              height: 300,
              width: 450,
              decoration: const BoxDecoration(
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
                  const Row(
                    children: [
                      Icon(Icons.dashboard,size: 40,),
                      Text("Dashboard",style: TextStyle(fontSize:30),)
                    ],
                  ),
                  const SizedBox(height: 30,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Column(
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
                        center: const Text("85%",style: TextStyle(fontSize: 25),),)
                    ],

                  ),
                  const SizedBox(height: 30,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ElevatedButton(onPressed: (){},
                        style: ElevatedButton.styleFrom(backgroundColor: Colors.lightBlueAccent,
                            shape: const RoundedRectangleBorder(borderRadius:BorderRadius.all(Radius.circular(10)))), child:const Text("Add Subject"),
                      ),
                      const SizedBox(width: 2,),
                      ElevatedButton(onPressed: (){},
                        style: ElevatedButton.styleFrom(backgroundColor: Colors.lightBlueAccent,
                            shape: const RoundedRectangleBorder(borderRadius:BorderRadius.all(Radius.circular(10)))), child:const Text("Add Schedule"),
                      ),

                      const SizedBox(width: 2,),

                    ],
                  )
                ],
              )
            ),
          const Text("My Subject",style: TextStyle(fontSize: 30,fontWeight:FontWeight.w700)),
            const SizedBox(height: 20,),
            Expanded(child:
            ListView(
              children: [
                Container(
                  decoration:const BoxDecoration(color:Colors.white24,borderRadius: BorderRadius.only(
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
                        const Text("Physics",style: TextStyle(fontSize: 20,fontWeight:FontWeight.w700)),
                        const SizedBox(height: 5,),
                        LinearPercentIndicator(
                            lineHeight: 10,
                            percent: 0.74,
                            progressColor: Colors.lightBlue,
                            backgroundColor: Colors.lightBlue.shade100,

                        ),
                        const SizedBox(height: 5,),
                        const Text("Attendance: 74%",style: TextStyle(fontSize: 20,fontWeight:FontWeight.w700),),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 10,),
                Container(
                  decoration:const BoxDecoration(color:Colors.white24,borderRadius: BorderRadius.only(
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
                        const Text("Maths",style: TextStyle(fontSize: 20,fontWeight:FontWeight.w700)),
                        const SizedBox(height: 5,),
                        LinearPercentIndicator(
                          lineHeight: 10,
                          percent: 0.87,
                          progressColor: Colors.lightBlue,
                          backgroundColor: Colors.lightBlue.shade100,

                        ),
                        const SizedBox(height: 5,),
                        const Text("Attendance: 87%",style: TextStyle(fontSize: 20,fontWeight:FontWeight.w700),)
              ],
            ),
            ),
                ),
                const SizedBox(height: 10,),
                Container(
                  decoration:const BoxDecoration(color:Colors.white24,borderRadius: BorderRadius.only(
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
                        const Text("Biology",style: TextStyle(fontSize: 20,fontWeight:FontWeight.w700)),
                        const SizedBox(height: 5,),
                        LinearPercentIndicator(
                          lineHeight: 10,
                          percent: 0.82,
                          progressColor: Colors.lightBlue,
                          backgroundColor: Colors.lightBlue.shade100,

                        ),
                        const SizedBox(height: 5,),
                        const Text("Attendance: 82%",style: TextStyle(fontSize: 20,fontWeight:FontWeight.w700),)
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 10,),
                Container(decoration:const BoxDecoration(color:Colors.white24,borderRadius: BorderRadius.only(
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
                        const Text("Chemistry",style: TextStyle(fontSize: 20,fontWeight:FontWeight.w700)),
                        const SizedBox(height: 5,),
                        LinearPercentIndicator(
                          lineHeight: 10,
                          percent: 0.86,
                          progressColor: Colors.lightBlue,
                          backgroundColor: Colors.lightBlue.shade100,

                        ),
                        const SizedBox(height: 5,),
                        const Text("Attendance: 86%",style: TextStyle(fontSize: 20,fontWeight:FontWeight.w700),)
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 10,),
                Container(
                  decoration:const BoxDecoration(color:Colors.white24,borderRadius: BorderRadius.only(
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
                        const Text("Zology",style: TextStyle(fontSize: 20,fontWeight:FontWeight.w700)),
                        const SizedBox(height: 5,),
                        LinearPercentIndicator(
                          lineHeight: 10,
                          percent: 0.88,
                          progressColor: Colors.lightBlue,
                          backgroundColor: Colors.lightBlue.shade100,

                        ),
                        const SizedBox(height: 5,),
                        const Text("Attendance: 88%",style: TextStyle(fontSize: 20,fontWeight:FontWeight.w700),)
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 10,),
                Container(
                  decoration:const BoxDecoration(color:Colors.white24,borderRadius: BorderRadius.only(
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
                        const Text("Botany",style: TextStyle(fontSize: 20,fontWeight:FontWeight.w700)),
                        const SizedBox(height: 5,),
                        LinearPercentIndicator(
                          lineHeight: 10,
                          percent: 0.78,
                          progressColor: Colors.lightBlue,
                          backgroundColor: Colors.lightBlue.shade100,

                        ),
                        const SizedBox(height: 5,),
                        const Text("Attendance: 78%",style: TextStyle(fontSize: 20,fontWeight:FontWeight.w700),)
                      ],
                    ),
                  ),
                ),const SizedBox(height: 10,),
                Container(
                  decoration:const BoxDecoration(color:Colors.white24,borderRadius: BorderRadius.only(
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
                        const Text("Computer",style: TextStyle(fontSize: 20,fontWeight:FontWeight.w700)),
                        const SizedBox(height: 5,),
                        LinearPercentIndicator(
                          lineHeight: 10,
                          percent: 0.90,
                          progressColor: Colors.lightBlue,
                          backgroundColor: Colors.lightBlue.shade100,

                        ),
                        const SizedBox(height: 5,),
                        const Text("Attendance: 90%",style: TextStyle(fontSize: 20,fontWeight:FontWeight.w700),),


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
