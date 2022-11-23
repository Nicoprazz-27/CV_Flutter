class Experience {
  int id;
  String entreprise;
  String dateDebut;
  String dateFin;
  String intitule;
  String typeContrat;
  String mission;
  bool expanded = false;

  Experience(
      {required this.id,
      required this.expanded,
      required this.entreprise,
      required this.intitule,
      required this.typeContrat,
      required this.dateDebut,
      required this.dateFin,
      required this.mission});
}
