import 'package:db1/db_helper/mydb_helper.dart';
import 'package:db1/model/contact.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';

class NewContact extends StatefulWidget {
  Contact? contact;

  @override
  State<NewContact> createState() => _NewContactState();
}

class _NewContactState extends State<NewContact> {
  TextEditingController _nameController = TextEditingController();
  TextEditingController _phoneController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('New Contact'),
        backgroundColor: Color.fromARGB(255, 136, 131, 88),
      ),
      body: Padding(
        padding: EdgeInsets.all(15.0),
        child: Container(
            child: Column(
          children: [
            TextField(
              controller: _nameController,
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(25),
                  ),
                  label: Text('Name'),
                  hintText: 'Please enter your name',
                  prefixIcon: Icon(Icons.person)),
            ),
            SizedBox(
              height: 15,
            ),
            TextField(
              controller: _phoneController,
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(25),
                  ),
                  label: Text('Phone'),
                  hintText: 'Please enter your phone number',
                  prefixIcon: Icon(Icons.call)),
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary:
                      Color.fromARGB(255, 143, 138, 99), // Background color
                ),
                onPressed: () async {
                  await MyDbHelper.createContact(Contact(
                    name: _nameController.text,
                    phone: _phoneController.text,
                  ));
                  Navigator.pop(context);
                },
                child: Text('Save Contact'))
          ],
        )),
      ),
    );
  }
}
