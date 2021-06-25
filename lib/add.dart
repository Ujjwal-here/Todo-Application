import 'package:flutter/material.dart';

class Add extends StatefulWidget {
  @override
  _AddState createState() => _AddState();
}

class _AddState extends State<Add> {
  String dropdownValue = 'Low';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text(
          "Todo",
          style: TextStyle(
            fontSize: 23,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          Icon(Icons.done_rounded),
          SizedBox(
            width: 30,
          ),
          Container(
            margin: const EdgeInsets.only(right: 20),
            child: Icon(Icons.share_rounded),
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Task to be done",
              style: TextStyle(
                fontSize: 20,
                color: Colors.red,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Expanded(
                  child: Container(
                    //margin: EdgeInsets.symmetric(horizontal: 30),
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: "Enter task here",
                        hintStyle: TextStyle(fontSize: 18),
                      ),
                    ),
                  ),
                ),
                Icon(
                  Icons.mic_rounded,
                  color: Colors.red,
                ),
              ],
            ),
            SizedBox(
              height: 50,
            ),
            Text(
              "Due Date",
              style: TextStyle(
                fontSize: 20,
                color: Colors.red,
                fontWeight: FontWeight.bold,
              ),
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Expanded(
                  child: Container(
                    //margin: EdgeInsets.symmetric(horizontal: 30),
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: "Date not set",
                        hintStyle: TextStyle(fontSize: 18),
                      ),
                    ),
                  ),
                ),
                Icon(
                  Icons.calendar_today_rounded,
                  color: Colors.red,
                  size: 30,
                ),
                SizedBox(
                  width: 20,
                ),
                Container(
                  padding: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(color: Colors.red, width: 2),
                  ),
                  child: Icon(
                    Icons.clear,
                    color: Colors.red,
                    size: 18,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Expanded(
                  child: Container(
                    //margin: EdgeInsets.symmetric(horizontal: 30),
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: "Time not set",
                        hintStyle: TextStyle(fontSize: 18),
                      ),
                    ),
                  ),
                ),
                Icon(
                  Icons.access_time_rounded,
                  color: Colors.red,
                  size: 35,
                ),
                SizedBox(
                  width: 20,
                ),
                Container(
                  padding: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(color: Colors.red, width: 2),
                  ),
                  child: Icon(
                    Icons.clear,
                    color: Colors.red,
                    size: 18,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 50,
            ),
            Text(
              "Enter priority",
              style: TextStyle(
                fontSize: 20,
                color: Colors.red,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 15,
            ),
            DropdownButton<String>(
              isExpanded: true,
              value: dropdownValue,
              iconSize: 24,
              elevation: 16,
              onChanged: (String newValue) {
                setState(() {
                  dropdownValue = newValue;
                });
              },
              items: <String>["Low", "Medium", "High"]
                  .map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
            ),
          ],
        ),
      ),
    );
  }
}
