import 'package:flutter/material.dart';
 
class ReceiverPage extends StatelessWidget {
  // Declare a variable to store the received data
 
  final String datafname;
  final String data_lastName;
  final String data_address;
  final String data_contactNumber;
  // Constructor to receive the data when the page is created
  ReceiverPage({required this.datafname, required this.data_lastName, required this.data_address,required this.data_contactNumber});
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Receiver Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Received Data:',
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 10),
            Text(
              datafname,
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            Text(
              data_lastName,
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            Text(
              data_address,
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            Text(
              data_contactNumber,
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            )
          ],
        ),
      ),
    );
  }
}