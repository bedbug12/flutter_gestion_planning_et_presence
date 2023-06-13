// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'classe_model.dart';
import 'module_model.dart';
import 'professeur_model.dart';
import 'semestre_model.dart';

class CoursModel {
  int id;
  ModuleModel module;
  Classe classe;
  Semestre semestre;
  ProfesseurModel professeur;
  int heure;
  int ecoule;

  CoursModel({
    required this.id,
    required this.module,
    required this.classe,
    required this.semestre,
    required this.professeur,
    required this.heure,
    required this.ecoule,
  });
  factory CoursModel.fromMap(Map<String, dynamic> map) {
   return  CoursModel(
     id: map['id']?.toInt(),
     module: map['module'] ?? '',
     classe: map['classe'] ?? '',
     semestre: map['semestre'] ?? '',
     professeur: map['professeur'] ?? '',
     heure: map['heure'] ?? '',
     ecoule: map['ecoule'] ?? '',
   );
 }

  
}
