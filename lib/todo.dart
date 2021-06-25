import 'package:flutter/material.dart';

class Todo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.red,
        title: Text(
          "Todo",
          style: TextStyle(
            fontSize: 23,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          Icon(Icons.search),
          SizedBox(
            width: 30,
          ),
          Container(
            margin: const EdgeInsets.only(right: 20),
            child: Icon(Icons.more_vert_rounded),
          ),
        ],
      ),
      bottomNavigationBar: Container(
        margin: EdgeInsets.all(20),
        padding:
            EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Icon(
              Icons.mic_rounded,
              color: Colors.red,
            ),
            Expanded(
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 30),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "Quickly add a new Item",
                    hintStyle: TextStyle(fontSize: 18),
                  ),
                ),
              ),
            ),
            GestureDetector(
              // onTap: () {
              //   Navigator.push(
              //     context,
              //     MaterialPageRoute(builder: (context) => Add()),
              //   );
              // },
              child: Container(
                padding: EdgeInsets.all(12),
                decoration:
                    BoxDecoration(shape: BoxShape.circle, color: Colors.red),
                child: Icon(
                  Icons.add,
                  color: Colors.white,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
