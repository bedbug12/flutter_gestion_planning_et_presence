// ignore_for_file: public_member_api_docs, sort_constructors_first
class Classe {
  int id;
  String libelle;
  String filiere;
  String niveau;

  Classe({
    required this.id,
    required this.libelle,
    required this.filiere,
    required this.niveau,
  });
  factory Classe.fromMap(Map<String, dynamic> map) {
   return  Classe(
     id: map['id']?.toInt(),
     libelle: map['libelle'] ?? '',
     filiere: map['filiere'] ?? '',
     niveau: map['niveau'] ?? '',

   );
 }
}
