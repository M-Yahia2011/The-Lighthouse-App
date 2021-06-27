import 'package:flutter/material.dart';
import './reportedScreen.dart';

class UserProfile extends StatelessWidget {
  static const routeName = '/userProfile';
  final username = 'Gon Freices';
  final casesNum = 999;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'Profile',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          centerTitle: true,
          elevation: 0,
        ),
        body: SafeArea(
            child: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [Colors.white, Colors.grey])),
          height: double.infinity,
          width: double.infinity,
          child: Padding(
            padding: EdgeInsets.fromLTRB(16, 50, 16, 0),
            child: ListView(
              children: [
                Center(
                  child: CircleAvatar(
                    radius: 50,
                    backgroundColor: Colors.blueGrey,
                    child: Icon(
                      Icons.account_circle,
                      size: 50,
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Center(
                      child: Text(
                        '$username',
                        style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Divider(
                      height: 30,
                      color: Colors.black,
                    ),
                    SizedBox(height: 20),
                    TextButton.icon(
                      label: Text(
                        'My Cases',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                        ),
                      ),
                      style: TextButton.styleFrom(primary: Colors.white),
                      icon: Icon(
                        Icons.search,
                        color: Colors.black,
                      ),
                      onPressed: () {
                        // push according to user ID
                      },
                    ),
                    TextButton.icon(
                        label: Text(
                          'All Reported Cases',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                          ),
                        ),
                        onPressed: () {
                          Navigator.pop(context, ReportedScreen.routeName);
                        },
                        style: TextButton.styleFrom(primary: Colors.white),
                        icon: Icon(
                          Icons.archive,
                          color: Colors.black,
                        )),
                    TextButton.icon(
                      label: Text(
                        'Saved POIs for volunteering',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                        ),
                      ),
                      style: TextButton.styleFrom(primary: Colors.white),
                      icon: Icon(
                        Icons.save,
                        color: Colors.black,
                      ),
                      onPressed: () {},
                    ),
                  ],
                ),
                TextButton(
                    onPressed: () {
                      // another page to change username and password
                    },
                    child: Text(
                      'Edit profile',
                      style: TextStyle(
                          color: Colors.blue[900],
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    )),
              ],
            ),
          ),
        )));
  }
}