import 'package:flutter/material.dart';
import 'package:hello_doctor/colorScheme.dart';

class DocInfoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Lato',
      ),
      home: docInfoPage(),
    );
  }
}

class docInfoPage extends StatefulWidget {
  @override
  _docInfoPageState createState() => _docInfoPageState();
}

class _docInfoPageState extends State<docInfoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [getStartedColorStart, getStartedColorEnd],
            begin: Alignment(0,-1.15),
            end: Alignment(0,0.1),
          )
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              height: MediaQuery.of(context).size.height*0.4,
              width: MediaQuery.of(context).size.width,
              child: Container(
                padding: EdgeInsets.all(20),
                child: Image.asset('images/docbg.png'),

              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height*0.6,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40),
                  topRight: Radius.circular(40),
                ),
                color: bgColor,
              ),
              child: Container(
                padding: EdgeInsets.all(10),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Container(
                            height: 100,
                            width: 100,
                            child: Image.asset('images/doc1.png'),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Dr. Susan Sharma", style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w400,
                              ),),
                              Text("Heart Surgeon -OK Hospital", style: TextStyle(
                                fontSize: 17,
                                fontWeight: FontWeight.w400,
                              ),)
                            ],
                          )
                        ],
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 8, right: 8),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("About the Doctor", style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w800,
                            ),),
                            SizedBox(height: 10,),
                            Text("Here we can write detailed report about doctor. This will be a detailed information about the doctor and the roles and achievements that the doctor has had the past years", style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,

                            ),),
                            SizedBox(height: 10,),
                            Text("Available Time Slots", style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w800,
                            ),),
                            SizedBox(height: 5,),
                            timeSlotWidget("11","March", "Consultation", "Tuesday 9 am to 4:30 pm"),
                            timeSlotWidget("12","March", "Consultation", "Friday 9 am to 12:30 am"),
                            timeSlotWidget("15","March", "Consultation", "Monday 9 am to 4:30 am"),
                            timeSlotWidget("16","March", "Consultation", "Tuesday 9 am to 4:30 am"),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
  Container timeSlotWidget(String date, String month, String slotType, String time)
  {
    return Container(
      margin: EdgeInsets.only(bottom: 10),
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(20)),
        color: docContentBgColor
      ),
      child: Container(
        padding: EdgeInsets.all(10),
        child: Row(
          children: [
            Container(
              width: 70,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                color: dateBgColor,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("$date", style: TextStyle(
                    color: dateColor,
                    fontSize: 30,
                    fontWeight: FontWeight.w800,
                  ),),
                  Text("$month", style: TextStyle(
                    color: dateColor,
                    fontSize: 20,
                    fontWeight: FontWeight.w800,
                  ),)
                ],
              ),
            ),
            SizedBox(width: 10,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("$slotType", style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w800,
                ),),
                Text("$time", style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.w600,
                ),)
              ],
            )
          ],
        ),
      ),
    );
  }
}

