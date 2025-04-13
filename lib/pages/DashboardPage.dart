import 'package:flutter/material.dart';
import 'package:untitled/pages/secondPage.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("DashBoard"),
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.notifications_active))
        ],
      ),
      body: ListView(
        padding: EdgeInsets.all(16),
        children: [
          Text("Good Morning Ayush!",
            style: TextStyle(
              fontSize: 21,fontWeight: FontWeight.w800
            ),
          ),
          SizedBox(height: 20,),

          Text("Today Bookings",
            style: TextStyle(
                fontSize: 18,fontWeight: FontWeight.w600
            ),
          ),

          SizedBox(height: 10,),
          bookingCard("Rahul","10:30AM"),
          bookingCard("Jaypal ","1:30PM"),
          bookingCard("Tejpal","4:30PM"),

          SizedBox(height: 20,),
          Card(
            color: Colors.green.shade100,
            child: ListTile(
              title: Text("Earning This Week"),
              trailing: Text(" ₹5,000",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w800
              )
              ),
            ),
          ),


          Card(
            color: Colors.blue.shade100,
            child: ListTile(
              title: Text("Upcoming Slot"),
              subtitle: Text("Jaypal at 1:30PM"),
            )
          ),

          SizedBox(height: 20,),
          Card(
            color: Colors.orangeAccent.shade100,
            child: ListTile(
              title: Text("Profile Status"),
              trailing: Text("Verified",
              style: TextStyle(
                fontWeight: FontWeight.w500,
                color: Colors.lightBlue
              ),),
            ),

          ),

          SizedBox(height: 20,),
          ElevatedButton.icon(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>secondPage()));
          },
              icon:Icon(Icons.add) ,
          label: Text("Add New Slot"),)
        ],
      ),
    );
  }
}

Widget bookingCard (String name, String time){
  return Card(
    child: ListTile(
      title: Text(name),
      subtitle: Text(time),
    ),
  );
}
