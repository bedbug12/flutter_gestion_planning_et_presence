// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/foundation.dart';
import 'package:projet_flutter/models/cours_model.dart';
import 'package:projet_flutter/models/salle_model.dart';

class SessionCoursModel {
     final int? id;
     final DateTime date;
     final CoursModel cours;
     final DateTime heureDebut;
     final DateTime heureFin;
     final SalleModel salle;
     final bool isOnLine;
     final EtatSessionCours etat;
  
  SessionCoursModel({
    this.id,
    required this.date,
    required this.cours,
    required this.heureDebut,
    required this.heureFin,
    required this.salle,
    required this.isOnLine,
    required this.etat,
  });


factory SessionCoursModel.fromMap(Map<String, dynamic> map) {
   return  SessionCoursModel(
     id: map['id']?.toInt(),
     date: map['date'] ?? '',
     cours: map['cours'] ?? '',
     heureDebut: map['heureDebut'] ?? '',
     heureFin: map['heureFin'] ?? '',
     salle: map['salle'] ?? '',
     isOnLine: map['isOnLine'] ?? '',
     etat: map['etat'] ?? '',

   );
 }
}

enum EtatSessionCours{
  ENCOURS,TERMINE,INVALIDE,ANNULEE
}


