import 'package:db1/db_helper/mydb_helper.dart';
import 'package:db1/model/contact.dart';
import 'package:db1/widgets/new_contact.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';

class Demo extends StatefulWidget {
  Contact? contact;

  @override
  State<Demo> createState() => _DemoState();
}

class _DemoState extends State<Demo> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'Contact List',
            style: TextStyle(fontSize: 25),
          ),
          centerTitle: true,
          backgroundColor: Color.fromARGB(255, 136, 131, 88),
        ),
        body: FutureBuilder(
            future: MyDbHelper.readContact(),
            builder:
                (BuildContext context, AsyncSnapshot<List<Contact>> snapshot) {
              if (!snapshot.hasData) {
                return Center(
                  child: Column(
                    children: [
                      CircularProgressIndicator(),
                      Text('Loading ...')
                    ],
                  ),
                );
              }

              return snapshot.data!.isEmpty
                  ? Center(
                      child: Text(
                        'Data Empty',
                        style: TextStyle(fontSize: 25),
                      ),
                    )
                  : ListView(
                      children: snapshot.data!
                          .map((e) => Center(
                                child: ListTile(
                                  title: Text(e.name),
                                  subtitle: Text(e.phone),
                                  trailing: IconButton(
                                      icon: Icon(Icons.delete),
                                      onPressed: () async {
                                        await MyDbHelper.deleteContact(e.id!);
                                        setState(() {});
                                      }),
                                ),
                              ))
                          .toList());
            }),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Color.fromARGB(255, 136, 131, 88),
          onPressed: () {
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (_c) => NewContact()));

            setState(() {});
          },
          child: Icon(Icons.add),
        ),
      ),
    );
  }
}
