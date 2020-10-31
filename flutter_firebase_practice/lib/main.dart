import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  // Future getData() async {
  //   // ignore: deprecated_member_use
  //   var firestore = Firestore.instance;
  //   // ignore: deprecated_member_use
  //   QuerySnapshot querySnapshot =
  //       // ignore: deprecated_member_use
  //       await firestore.collection("countries").getDocuments();
  //   // ignore: deprecated_member_use
  //   print(querySnapshot);
  //   return querySnapshot.docs;
  // }

  Future sendData() async{
    final db = Firestore.instance.collection("Userinfo").add({
      'name' : "Ruhul Amin",
      'age' : 20.toString(),
      'height' : "5.5",
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // body: FutureBuilder(
      //   future: getData(),
      //   builder: (_, snapshot) {
      //     return ListView.builder(
      //         itemCount: snapshot.data?.length ?? 0,
      //         itemBuilder: (_,index){
      //          DocumentSnapshot data = snapshot.data[index];
      //           return ListTile(
      //             title: Text(data["name"]),
      //           );
      //         },
      //     );
      //   },
      // ),
      // body: StreamBuilder(
      //   // ignore: deprecated_member_use
      //   stream: Firestore.instance.collection("countries").snapshots(),
      //   // ignore: missing_return
      //   builder: (_, snapshot) {
      //     if (!snapshot.hasData) {
      //       return Center(
      //         child: Text("Loading"),
      //       );
      //     } else {
      //       return GridView.builder(
      //         scrollDirection: Axis.vertical,
      //         itemCount: snapshot.data.documents.length,
      //         gridDelegate:
      //             SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
      //         // ignore: missing_return
      //         itemBuilder: (_, index) {
      //           DocumentSnapshot data = snapshot.data.documents[index];
      //           return Card(child: GridTile(child: Image.network(data["img"])));
      //         },
      //       );
      //     }
      //   },
      // ),

      body: Center(
        child: RaisedButton(
            onPressed: sendData,
        ),
      ),

    );
  }
}
