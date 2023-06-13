import 'package:flutter/material.dart';
import 'package:projet_flutter/models/session_cours_model.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';
import 'package:dio/dio.dart';
import 'api_service.dart';

class SessionsCoursService {
  Future<List<SessionCoursModel>> getAllCategories() async {
    //On construit l'url
    Response response = await ApiService.getData("/sessions-cours/etudiant/2");
    if (response.statusCode == 200) {
      List<dynamic> results = response.data;
      List<SessionCoursModel> sessions = [];
      for (dynamic map in results) {
           SessionCoursModel cat = SessionCoursModel.fromMap(map);
        sessions.add(cat);
      }
      return sessions;
    } else {
      throw response;
    }
  }


Future<List<Appointment>> getAppointments() async {
  List<Appointment> sessions = <Appointment>[];
  List<SessionCoursModel> sessionCours=[];
  getAllCategories().then((data) => sessionCours=data);
  sessionCours.forEach((session) {
    final DateTime today = session.date;
  final DateTime startTime =
      DateTime(today.year, today.month, today.day, session.heureDebut.hour, session.heureDebut.minute, 0);
  final DateTime endTime = DateTime(today.year, today.month, today.day, session.heureFin.hour, session.heureFin.minute, 0);

sessions.add(Appointment(
      startTime: startTime,
      endTime: endTime,
      subject: "${session.cours.module.libelle}",
      location: "${session.salle.nom} ${session.salle.numero}",
      notes: "Mr.${session.cours.professeur.nom} - prénom:${session.cours.professeur.prenom} - email:${session.cours.professeur.email}",
      color: Colors.blue));
  });
  
  
  return sessions;
}
}

List<Appointment>getAppointments() {
  List<Appointment> sessions = <Appointment>[];
  
  for (var i = 1; i < 7; i++) {
    final List<String> cours=["Java","Angular","spring","Symfony","Flask","React","Flutter"];
    final DateTime today = DateTime.now();
  final DateTime startTime =
      DateTime(today.year, today.month, i, 7+i,0, 0);
  final DateTime endTime = startTime.add(Duration(hours: 4));
sessions.add(Appointment(
      startTime: startTime,
      endTime: endTime,
      subject: "${cours[i]}",
      location: "Salle 301",
      notes: "Mr.Wane - prénom:Baila - email:douvewane85@gmail.com",
      color: Colors.blue));
  };
  return sessions;
  } 


