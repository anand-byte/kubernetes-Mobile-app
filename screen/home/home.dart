import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class MyHome extends StatefulWidget {
  @override
  _MyHomeState createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  var x = "Loading..!!";
  late String cmd; //cmd
  web() async {
    var url = Uri.http("192.168.99.101", "/cgi-bin/cal.py", {"x": cmd}); //cmd
    var response = await http.get(url);
    setState(() {
      x = response.body;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.blue.shade800,
          ),
          onPressed: () {},
        ),
        title: Text("Kubernetes",
            style: TextStyle(
                color: Colors.blue.shade700, fontFamily: "Nexa", fontSize: 25)),
        centerTitle: true,
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.home,
              color: Colors.blue.shade800,
            ),
            onPressed: () {},
          ),
        ],
      ),
      body: Column(
        children: [
          Image.asset("assets/kuber.jpg", fit: BoxFit.cover),
          SizedBox(
            height: 25.0,
          ),
          Container(
            margin: EdgeInsets.all(15),
            child: TextField(
              onChanged: (value) {
                cmd = value; //cmd
              },
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20.0),
                ),
                labelText: 'Enter your Cmd',
                hintText: 'Write your command',
                hintStyle: TextStyle(
                  fontFamily: 'cairo',
                  fontStyle: FontStyle.normal,
                ),
                prefixIcon: Icon(Icons.coronavirus_rounded),
              ),
            ),
          ),
          SizedBox(
            height: 8.0,
          ),
          RaisedButton(
            color: Colors.blue,
            disabledColor: Colors.blue[700],
            disabledTextColor: Colors.white,
            onPressed: web,
            child: Text(
              'RUN',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
          SizedBox(
            height: 7.0,
          ),
          Expanded(
            child: Container(
              margin: EdgeInsets.all(8),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(
                    color: Colors.blue, width: 4, style: BorderStyle.solid),
              ),
              padding: EdgeInsets.only(left: 50, right: 50),
              child: Text(
                "$x",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                  color: Colors.blue.shade700,
                  // fontStyle: FontStyle.italic,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}