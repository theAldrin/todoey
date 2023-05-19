import 'package:flutter/material.dart';

class AddTaskScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xFF757575),
      child: Container(
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(30), topLeft: Radius.circular(30))),
        padding: EdgeInsets.fromLTRB(40, 30, 40, 0),
        child: Column(
          children: [
            Text(
              'Add Task',
              style: TextStyle(color: Colors.deepPurple, fontSize: 35),
            ),
            TextField(
              autofocus: true,
              textAlign: TextAlign.center,
              cursorColor: Colors.deepPurple,
            ),
            SizedBox(
              height: 30,
            ),
            GestureDetector(
              onTap: () {
                //add the task to firestore
              },
              child: Container(
                width: double.infinity,
                height: 60,
                color: Colors.deepPurple,
                child: Center(
                    child: Text(
                  'Add',
                  style: TextStyle(fontSize: 26, color: Colors.white),
                )),
              ),
            )
          ],
        ),
      ),
    );
  }
}
