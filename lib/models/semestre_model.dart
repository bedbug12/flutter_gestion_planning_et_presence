// ignore_for_file: public_member_api_docs, sort_constructors_first
class Semestre {
  int id;
  String libelle;

  Semestre({
    required this.id,
    required this.libelle,
  });

  factory Semestre.fromMap(Map<String, dynamic> map) {
   return  Semestre(
     id: map['id']?.toInt(),
     libelle: map['libelle'] ?? '',
   );
 }
}
