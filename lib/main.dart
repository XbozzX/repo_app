import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home: ContactList(),
));

class ContactList extends StatefulWidget {

  @override
  _ContactListState createState() => _ContactListState();
}

class _ContactListState extends State<ContactList> {

  List<String> contactName = [
    "Chan Saw Lin", " Lee Saw Loy", "Khaw Tong Lin", "Lim Kok Lin"
    , "Low Jun Wei", "Yong Weng Kai", "Jayden Lee", "Kong Kah Yan"
    , "Jasmine Lau", "Chan Saw Lin"
  ];

  List<int> contactNumber = [
    0152131113, 0161231346, 0158398109, 0168279101, 0112731912
    , 0172332743, 0191236439, 0111931233, 0162879190, 016783239
  ];

  List<String> contactCheckIn = [
    "2020-06-30 16:10:05", "2020-07-11 15:39:59", "2020-08-19 11:10:18"
    , "2020-08-19 11:11:35", "2020-08-15 13:00:05", "2020-07-31 18:10:11"
    , "2020-08-22 08:10:38", "2020-07-11 12:00:00", "2020-08-01 12:10:05"
    , "2020-08-23 11:59:05"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[200],
      appBar: AppBar(
        title: Text('Contact'),
        backgroundColor: Colors.amber,
      ),
       body: Container(
         padding: EdgeInsets.all(20),
         child: Column(
           children: <Widget>[
             buildListName(), buildListNumber()
           ],
         ),
       )
      );
  }

  // create the contact name
  Widget buildListName() => ListView.builder(
    shrinkWrap: true, // shrinkWrap function to make the auto size
    itemCount: contactName.length,
    itemBuilder: (context, index) {
      final name = contactName[index];
    
      return buildItemName(name);
    },
  );

  // create contact number 
  Widget buildListNumber() => ListView.builder(
    shrinkWrap: true, // shrinkWrap function to make the auto size
    itemCount: contactNumber.length, 
    itemBuilder: (context, index) {
      final number = contactNumber[index];
  
      return buildItemNumber(number);
    },
  );

  Widget buildItemName(String name) => ListTile(
    title: Text('Name : $name '),

    
  );

  Widget buildItemNumber(int number) => ListTile(
    title: Text('Phone : $number '),
  );

}