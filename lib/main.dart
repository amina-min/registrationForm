import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: Text("Login"),
      ),
      body: MyApp(),
    ),
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    Object? gender;
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            "Registration Form",
            style: TextStyle(color: Colors.blue, fontSize: 30.0),
          ),
          const SizedBox(height: 10.0),
          TextFormField(
            decoration: const InputDecoration(
              labelText: "Enter Name",
              icon: Icon(Icons.person),
            ),
          ),
          TextFormField(
            decoration: const InputDecoration(
              labelText: "Enter Mobile no.",
              icon: Icon(Icons.phone),
            ),
          ),
          TextFormField(
            decoration: const InputDecoration(
              labelText: "Enter Email",
              icon: Icon(Icons.email),
            ),
          ),
          Row(children: const <Widget>[
            Icon(Icons.person),
            Text("   Gender :   ",
                style: TextStyle(fontSize: 15.0)),
            SizedBox(height: 40.0),
          ]),

          Row(children: <Widget>[
            Radio(
                value: "Male",
                groupValue: gender,
                onChanged: (value) {
                  setState(() {
                    gender = value;
                  });
                }),
            const Text(
              "Male",
            ),
            Radio(
                value: "Female",
                groupValue: gender,
                onChanged: (value) {
                  setState(() {
                    gender = value;
                  });
                }),
            const Text(
              "Female",
            ),
          ]),







          TextFormField(
            decoration: const InputDecoration(
              labelText: "Enter Courses",
              icon: Icon(Icons.list_alt),
            ),
          ),
          TextFormField(
            decoration: const InputDecoration(
              labelText: "Enter Address",
              icon: Icon(Icons.location_on),
            ),
          ),
          const SizedBox(height: 5.0),
          Row(mainAxisAlignment: MainAxisAlignment.end, children: [
            const SizedBox(height: 5.0),
            ElevatedButton(onPressed: () {}, child: const Text("Submit"))
          ])
        ],
      ),
    );
  }
}
