import 'package:cloud_firestore/cloud_firestore.dart' as cloud_firestore;
import 'package:cloud_firestore/cloud_firestore.dart';

class FirestoreServices {
  // Use the alias for CollectionReference
  final cloud_firestore.CollectionReference? notes =
  cloud_firestore.FirebaseFirestore.instance.collection('notes');

  // Adding a new note logic within our 'notes'
  // collection by creating 2 fields named
  // 'note' (note we enter) and 'timestamp'(time of entry)
  Future<void> addNote(String note) {
    return notes!.add(
      {'note': note, 'timestamp': Timestamp.now()},
    );
  }

  // Reading data within the 'notes' collection
  // we have made earlier in the form of snapshots
  Stream<cloud_firestore.QuerySnapshot> showNotes() {
    final notesStream =
    notes!.orderBy('timestamp', descending: true).snapshots();

    return notesStream;
  }

  // Update the data by accessing the particular
  // docId of the note which we want to update.
  Future<void> updateNotes(String docId, String newNote, Timestamp time) {
    return notes!.doc(docId).update({
      'note': newNote,
      'timestamp': time,
    });
  }

  // Delete the data by accessing the particular
  // which we want to delete.
  Future<void> deleteNote(String docId) {
    return notes!.doc(docId).delete();
  }
}
