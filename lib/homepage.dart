// // import 'package:cloud_firestore/cloud_firestore.dart' as cloud_firestore;
// // import 'package:flutter/material.dart';
// // import 'package:google_fonts/google_fonts.dart';
// //
// // import 'firebase_service.dart';
// //
// // class HomePage extends StatefulWidget {
// //   const HomePage({super.key});
// //
// //   @override
// //   State<HomePage> createState() => _HomePageState();
// // }
// //
///---------notes add and view
// // class _HomePageState extends State<HomePage> {
// //   TextEditingController controller = TextEditingController();
// //   FirestoreServices firestoreServices = FirestoreServices();
// //   void showNoteBox(String? textToedit, String? docId, cloud_firestore.Timestamp? time) {
// //     showDialog(
// //       context: context,
// //       builder: (context) {
// //         if (textToedit != null) {
// //           controller.text = textToedit;
// //         }
// //         return AlertDialog(
// //           title: Text(
// //             "Add note",
// //             style: GoogleFonts.alexandria(fontSize: 16),
// //           ),
// //           content: TextField(
// //             decoration: const InputDecoration(hintText: 'Note here...'),
// //             style: GoogleFonts.alexandria(),
// //             controller: controller,
// //           ),
// //           actions: [
// //             ElevatedButton(
// //               onPressed: () {
// //                 if (docId == null) {
// //                   firestoreServices.addNote(controller.text);
// //                 } else {
// //                   firestoreServices.updateNotes(docId, controller.text, time!);
// //                 }
// //                 controller.clear();
// //                 Navigator.pop(context);
// //               },
// //               child: Text(
// //                 'add',
// //                 style: GoogleFonts.alexandria(),
// //               ),
// //             )
// //           ],
// //         );
// //       },
// //     );
// //   }
// //
// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       backgroundColor: Colors.purple[50],
// //       appBar: AppBar(
// //         centerTitle: true,
// //         backgroundColor: Colors.purple[50],
// //         title: Text(
// //           "C R U D",
// //           style: GoogleFonts.alexandria(),
// //         ),
// //       ),
// //       floatingActionButton: FloatingActionButton.extended(
// //         backgroundColor: Colors.purple[100],
// //         label: Text(
// //           'add',
// //           style: GoogleFonts.alexandria(fontSize: 18),
// //         ),
// //         icon: Icon(Icons.add),
// //         onPressed: () async {
// //           showNoteBox(null, null, null);
// //         },
// //       ),
// //       body: StreamBuilder(
// //         stream: FirestoreServices().showNotes(),
// //         builder: (context, snapshot) {
// //           if (snapshot.hasData) {
// //             List noteList = snapshot.data!.docs;
// //             return
// //               ListView.builder(
// //               itemCount: noteList.length,
// //               itemBuilder: (context, index) {
// //                 firebase_firestore.DocumentSnapshot document = noteList[index];
// //                 String docId = document.id;
// //                 Map<String, dynamic> data =
// //                 document.data() as Map<String, dynamic>;
// //                 String note = data['note'];
// //                 cloud_firestore.Timestamp time = data['timestamp'];
// //                 return Column(
// //                   children: [
// //                     Padding(
// //                       padding: const EdgeInsets.symmetric(horizontal: 14),
// //                       child: ListTile(
// //                         contentPadding: EdgeInsets.all(16),
// //                         shape: RoundedRectangleBorder(
// //                             borderRadius: BorderRadius.circular(16)),
// //                         tileColor: Colors.purple[100],
// //                         title: Padding(
// //                           padding: const EdgeInsets.all(8.0),
// //                           child: Text(
// //                             note,
// //                             style: GoogleFonts.alexandria(
// //                                 textStyle: TextStyle(
// //                                     color: Colors.purple[800], fontSize: 19)),
// //                           ),
// //                         ),
// //                         trailing: Column(
// //                           children: [
// //                             Row(
// //                               mainAxisSize: MainAxisSize.min,
// //                               children: [
// //                                 IconButton(
// //                                   color: Colors.purple[400],
// //                                   icon: Icon(Icons.edit),
// //                                   onPressed: () {
// //                                     showNoteBox(note, docId, time);
// //                                   },
// //                                 ),
// //                                 IconButton(
// //                                     color: Colors.purple[400],
// //                                     onPressed: () {
// //                                       firestoreServices.deleteNote(docId);
// //                                     },
// //                                     icon: Icon(Icons.delete))
// //                               ],
// //                             ),
// //                           ],
// //                         ),
// //                       ),
// //                     ),
// //                     Padding(
// //                       padding: const EdgeInsets.symmetric(
// //                           horizontal: 14, vertical: 4),
// //                       child: Row(
// //                         mainAxisAlignment: MainAxisAlignment.end,
// //                         children: [
// //                           Text(
// //                             time.toDate().hour.toString(),
// //                             style: const TextStyle(
// //                                 color: Colors.purple,
// //                                 fontWeight: FontWeight.bold),
// //                           ),
// //                           Text(":"),
// //                           Text(
// //                             time.toDate().minute.toString(),
// //                             style: const TextStyle(
// //                                 color: Colors.purple,
// //                                 fontWeight: FontWeight.bold),
// //                           ),
// //                         ],
// //                       ),
// //                     )
// //                   ],
// //                 );
// //               },
// //             );
// //           } else {
// //             return Center(
// //               child: Text("Nothing to show...add notes"),
// //             );
// //           }
// //         },
// //       ),
// //     );
// //   }
// // }

///------------add json structure----------------------
// import 'package:cloud_firestore/cloud_firestore.dart' as cloud_firestore;
// import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';
//
// import 'firebase_service.dart';
//
// class HomePage extends StatefulWidget {
//   const HomePage({Key? key}) : super(key: key);
//
//   @override
//   State<HomePage> createState() => _HomePageState();
// }
//
// class _HomePageState extends State<HomePage> {
//   TextEditingController controller = TextEditingController();
//   FirestoreServices firestoreServices = FirestoreServices();
//
//   void showNoteBox(String? textToedit, String? docId, cloud_firestore.Timestamp? time) {
//     showDialog(
//       context: context,
//       builder: (context) {
//         if (textToedit != null) {
//           controller.text = textToedit;
//         }
//         return AlertDialog(
//           title: Text(
//             "Add note",
//             style: GoogleFonts.alexandria(fontSize: 16),
//           ),
//           content: TextField(
//             decoration: const InputDecoration(hintText: 'Note here...'),
//             style: GoogleFonts.alexandria(),
//             controller: controller,
//           ),
//           actions: [
//             ElevatedButton(
//               onPressed: () {
//                 if (docId == null) {
//                   firestoreServices.addNote(controller.text);
//                 } else {
//                   firestoreServices.updateNotes(docId, controller.text, time!);
//                 }
//                 controller.clear();
//                 Navigator.pop(context);
//               },
//               child: Text(
//                 'add',
//                 style: GoogleFonts.alexandria(),
//               ),
//             )
//           ],
//         );
//       },
//     );
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.purple[50],
//       appBar: AppBar(
//         centerTitle: true,
//         backgroundColor: Colors.purple[50],
//         title: Text(
//           "C R U D",
//           style: GoogleFonts.alexandria(),
//         ),
//       ),
//       floatingActionButton: FloatingActionButton.extended(
//         backgroundColor: Colors.purple[100],
//         label: Text(
//           'add',
//           style: GoogleFonts.alexandria(fontSize: 18),
//         ),
//         icon: Icon(Icons.add),
//         onPressed: () async {
//           showNoteBox(null, null, null);
//         },
//       ),
//       body: StreamBuilder(
//         stream: firestoreServices.showNotes(),
//         builder: (context, snapshot) {
//           if (snapshot.hasData) {
//             List noteList = snapshot.data!.docs;
//             return ListView.builder(
//               itemCount: noteList.length,
//               itemBuilder: (context, index) {
//                 cloud_firestore.DocumentSnapshot document = noteList[index];
//                 String docId = document.id;
//                 Map<String, dynamic> data =
//                 document.data() as Map<String, dynamic>;
//                 String note = data['note'];
//                 cloud_firestore.Timestamp time = data['timestamp'];
//                 return Column(
//                   children: [
//                     Padding(
//                       padding: const EdgeInsets.symmetric(horizontal: 14),
//                       child: ListTile(
//                         contentPadding: EdgeInsets.all(16),
//                         shape: RoundedRectangleBorder(
//                             borderRadius: BorderRadius.circular(16)),
//                         tileColor: Colors.purple[100],
//                         title: Padding(
//                           padding: const EdgeInsets.all(8.0),
//                           child: Text(
//                             note,
//                             style: GoogleFonts.alexandria(
//                                 textStyle: TextStyle(
//                                     color: Colors.purple[800], fontSize: 19)),
//                           ),
//                         ),
//                         trailing: Column(
//                           children: [
//                             Row(
//                               mainAxisSize: MainAxisSize.min,
//                               children: [
//                                 IconButton(
//                                   color: Colors.purple[400],
//                                   icon: const Icon(Icons.edit),
//                                   onPressed: () {
//                                     showNoteBox(note, docId, time);
//                                   },
//                                 ),
//                                 IconButton(
//                                     color: Colors.purple[400],
//                                     onPressed: () {
//                                       firestoreServices.deleteNote(docId);
//                                     },
//                                     icon: const Icon(Icons.delete))
//                               ],
//                             ),
//                           ],
//                         ),
//                       ),
//                     ),
//                     Padding(
//                       padding: const EdgeInsets.symmetric(
//                           horizontal: 14, vertical: 4),
//                       child: Row(
//                         mainAxisAlignment: MainAxisAlignment.end,
//                         children: [
//                           Text(
//                             time.toDate().hour.toString(),
//                             style: const TextStyle(
//                                 color: Colors.purple,
//                                 fontWeight: FontWeight.bold),
//                           ),
//                           Text(":"),
//                           Text(
//                             time.toDate().minute.toString(),
//                             style: const TextStyle(
//                                 color: Colors.purple,
//                                 fontWeight: FontWeight.bold),
//                           ),
//                         ],
//                       ),
//                     )
//                   ],
//                 );
//               },
//             );
//           } else {
//             return Center(
//               child: Text("Nothing to show...add notes"),
//             );
//           }
//         },
//       ),
//     );
//   }
// }
///-------------------------------
///

// import 'dart:convert';
// import 'package:flutter/material.dart';
// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:flutter/services.dart';
//
// class HomePage extends StatelessWidget {
//   const HomePage({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Firestore JSON Import'),
//       ),
//       body: Center(
//         child: ElevatedButton(
//           onPressed: () async {
//             await importJsonToFirestore();
//           },
//           child: const Text('Import JSON to Firestore'),
//         ),
//       ),
//     );
//   }
//
//   Future<void> importJsonToFirestore() async {
//     // Load JSON file from assets
//     final String jsonString = await rootBundle.loadString('assets/product_list.json');
//     final List<dynamic> jsonList = json.decode(jsonString);
//
//     // Reference to Firestore collection
//     CollectionReference collectionReference = FirebaseFirestore.instance.collection('yourCollection');
//
//     // Import data to Firestore
//     for (var item in jsonList) {
//       await collectionReference.add(item);
//     }
//
//     print('Data import completed.');
//   }
// }

///-----addd end json
import 'package:firebase_operation/productcard.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late Future<List<Map<String, dynamic>>> products;

  @override
  void initState() {
    super.initState();
    products = getProductsFromFirestore();
  }

  Future<List<Map<String, dynamic>>> getProductsFromFirestore() async {
    // Replace 'yourCollection' with your actual Firestore collection name
    QuerySnapshot<Map<String, dynamic>> snapshot =
    await FirebaseFirestore.instance.collection('yourCollection').get();

    return snapshot.docs.map((doc) => doc.data()).toList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Firestore JSON Import'),
      ),
      body: FutureBuilder<List<Map<String, dynamic>>>(
        future: products,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const CircularProgressIndicator();
          } else if (snapshot.hasError) {
            return Text('Error: ${snapshot.error}');
          } else {
            return GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 1,
                crossAxisSpacing: 8.0,
                mainAxisSpacing: 8.0,
              ),
              itemCount: snapshot.data!.length,
              itemBuilder: (context, index) {
                final product = snapshot.data![index];
                return ProductCard(
                  name: product['name'],
                  price: product['price'],
                 description: product['description'], imageUrl:product['image'],
                );
              },
            );
          }
        },
      ),
    );
  }
}
