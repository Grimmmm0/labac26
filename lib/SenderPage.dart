import 'package:flutter/material.dart';
import 'ReceiverPage.dart';

 
class SenderPage extends StatelessWidget {
  final TextEditingController _textEditingController = TextEditingController();
  final TextEditingController _textEditingController1= TextEditingController();
  final TextEditingController _textEditingController2= TextEditingController();
  final TextEditingController _textEditingController3= TextEditingController();
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sender Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
             TextField(
              controller: _textEditingController,
              decoration: InputDecoration(
                labelText: 'First Name',
                border: OutlineInputBorder()
              ),
            ),
            TextField(
              controller: _textEditingController1,
              decoration: InputDecoration(
                labelText: 'Last Name',
               
               border: OutlineInputBorder()
              ),
            ),
            TextField(
              controller: _textEditingController2,
              decoration: InputDecoration(
                labelText: 'Address',
                
                border: OutlineInputBorder()
              ),
            ),
            TextField(
              controller: _textEditingController3,
              decoration: InputDecoration(
                labelText: 'Contact Number',
              
              border: OutlineInputBorder()
              ),
            ),

            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Get the entered text from the TextField
                String firstName = _textEditingController.text;
                 String lastName = _textEditingController2.text;
                   String address = _textEditingController1.text;
                  String contactNumber = _textEditingController3.text;
               
                // Navigate to the ReceiverPage and pass the entered text
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ReceiverPage(datafname: firstName, data_lastName: lastName, data_address: address ,data_contactNumber: contactNumber,),
                  ),
                  
                );
              },
              child: Text('Go to Receiver Page'),
            ),
          ],
        ),
      ),
    );
  }
}