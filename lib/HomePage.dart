// import 'dart:convert';

// import 'package:backend_test/model/BNDR_API.dart';
// import 'package:flutter/material.dart';
// import 'package:http/http.dart' as http;

// class HomePage extends StatefulWidget {
//   const HomePage({Key? key}) : super(key: key);

//   @override
//   _HomePageState createState() => _HomePageState();
// }

// class _HomePageState extends State<HomePage> {
//   Future<BNDRAPI> fetchData() async {
//     final response = await http.get(Uri.parse(
//         'http://192.168.0.177/shantinagar-rest-api/api-fetch-single.php'));
//     final data = BNDRAPI.fromJson(jsonDecode(response.body));
//     //  print(data.body);
//     //  BNDRAPI bndrapi = BNDRAPI.fromJson(jsonDecode(data.body));
//     // bndrData = bndrapi;
//     // print(bndrapi.pid);
//     return data;
//   }

//   @override
//   void initState() {
//     super.initState();
//     bndrData = fetchData();
//   }

//   late Future<BNDRAPI> bndrData;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         backgroundColor: Colors.orange,
//         appBar: AppBar(
//           title: Text('Test'),
//         ),
//         body: ListView(
//           children: [
//             Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: <Widget>[
//                 FutureBuilder<BNDRAPI>(
//                   future: bndrData,
//                   builder:
//                       (BuildContext context, AsyncSnapshot<BNDRAPI> snapshot) {
//                     if (snapshot.connectionState == ConnectionState.done) {
//                       return Text(snapshot.data!.pid!);
//                     } else {
//                       return Text('LOADING!');
//                     }
//                   },
//                 ),
//               ],
//             ),
//           ],
//         ));
//   }
// }
