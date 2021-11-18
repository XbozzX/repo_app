import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  debugShowCheckedModeBanner: false,
  home: ContactList(),
));

class ContactList extends StatefulWidget {

  @override
  _ContactListState createState() => _ContactListState();
}

class _ContactListState extends State<ContactList> {

  List<String> contactName = [
    "User : Chan Saw Lin", "Phone : 0152131113", "Check in : 2020-06-30 16:10:05",
    "User : Lee Saw Loy", "Phone : 0161231346", "Check in : 2020-07-11 15:39:59",
    "User : Khaw Tong Lin", "Phone : 0158398109", "Check in : 2020-08-19 11:10:18",
    "User : Lim Kok Lin", "Phone : 0168279101", "Check in : 2020-08-19 11:11:35",
    "User : Low Jun Wei", "Phone : 0112731912", "Check in : 2020-08-15 13:00:05",
    "User : Yong Weng Kai", "Phone : 0172332743", "Check in : 2020-07-31 18:10:11",
    "User : Jayden Lee", "Phone : 0191236439", "Check in : 2020-08-22 08:10:38",
    "User : Kong Kah Yan", "Phone : 0111931233", "Check in : 2020-07-11 12:00:00",
    "User : Jasmine Lau", "Phone : 0162879190", "Check in : 2020-08-01 12:10:05",
    "User : Chan Saw Lin", "Phone : 016783239", "Check in : 2020-08-23 11:59:05",
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[200],
      appBar: AppBar(
        title: const Text('Contact'),
        backgroundColor: Colors.amber,
      ),
       body: Container(
         padding: const EdgeInsets.all(1),
         child: Center(
           child: ListView(
             children: [buildListName()] 
           ) 
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


  Widget buildItemName(String name) => ListTile(
    title: Text(' $name '),
  );
}