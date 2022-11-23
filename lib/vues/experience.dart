import 'package:flutter/material.dart';
import 'package:flutter_application_1/Model/Experience.dart';
import '../widget/nav.dart';

class PageExperience extends StatefulWidget {
  const PageExperience({super.key});
  @override
  State<PageExperience> createState() => _PageExperienceState();
}

class _PageExperienceState extends State<PageExperience> {
  List<Experience> itemExperience = <Experience>[
    Experience(
        id: 1,
        expanded: false,
        entreprise: "EdF",
        intitule: "Ingenieur informatique",
        typeContrat: "Apprentissage",
        dateDebut: "08/2021",
        dateFin: "09/2023",
        mission:
            "- Développement d’application Web (Vue.js | PHP) \n- Découverte d’une centrale nucléaire"),
    Experience(
        id: 2,
        expanded: false,
        entreprise: "ArcelorMittal",
        intitule: "Developpeur Power BI",
        typeContrat: "Stage étranger",
        dateDebut: "04/2022",
        dateFin: "07/2022",
        mission:
            "- Réalisation de tableau de bord Power BI\n- Utilisation des outils Power Query, Pivot, Apps"),
    Experience(
        id: 3,
        expanded: false,
        entreprise: "Lidl",
        intitule: "Employe Polyvalent",
        typeContrat: "Job etudiant",
        dateDebut: "10/2020",
        dateFin: "08/2021",
        mission: "- Responsable de caisse\n- Approvisionnement des rayons"),
    Experience(
        id: 4,
        expanded: false,
        entreprise: "Scoleo",
        intitule: "Préparateur de commande",
        typeContrat: "CDD",
        dateDebut: "06/2020",
        dateFin: "09/2020",
        mission:
            "- Préparation des commandes clients\n- Expédition et conditionnement des commandes"),
    Experience(
        id: 5,
        expanded: false,
        entreprise: "Decathlon",
        intitule: "Vendeur",
        typeContrat: "CDD",
        dateDebut: "06/2019",
        dateFin: "09/2019",
        mission:
            "- Réception des colis et mise en rayon des articles \n- Accueil des clients et conseil dans leur démarche"),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.only(left: 12, right: 12, top: 80),
          child: ExpansionPanelList.radio(
            elevation: 8,
            expansionCallback: (int index, bool expanded) {
              setState(() {
                itemExperience[index].expanded = !expanded;
              });
            },
            children:
                itemExperience.map<ExpansionPanelRadio>((Experience item) {
              return ExpansionPanelRadio(
                  value: item.id,
                  headerBuilder: (BuildContext context, bool isExpanded) {
                    return Row(
                      children: [
                        const SizedBox(width: 10),
                        Text(
                          "${item.entreprise} ● ",
                          style:
                              const TextStyle(fontSize: 16, color: Colors.blue),
                        ),
                        Text(
                          item.intitule,
                          style: const TextStyle(
                            color: Colors.black87,
                            fontWeight: FontWeight.bold,
                            fontSize: 17,
                          ),
                        ),
                      ],
                    );
                  },
                  body: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          "${item.dateDebut} - ${item.dateFin} | ${item.typeContrat}\n",
                          style: const TextStyle(fontSize: 15),
                        ),
                        Text(
                          "${item.mission}\n\n",
                          textAlign: TextAlign.start,
                          style: const TextStyle(fontSize: 14),
                        ),
                        const SizedBox(width: 10),
                      ]));
            }).toList(),
          ),
        ),
      ),
      bottomNavigationBar: NavBar(),
    );
  }
}
/*
ListView.builder(
          padding: const EdgeInsets.all(20),
          itemCount: itemExperience.length,
          itemBuilder: (BuildContext context, int index) {
            return ExpansionPanelList(
              expandedHeaderPadding: const EdgeInsets.only(bottom: 50),
              dividerColor: Colors.black87,
              children: [
                ExpansionPanel(
                  headerBuilder: (context, isExpanded) {
                    return Row(
                      children: [
                        ClipOval(
                          child: CircleAvatar(
                            backgroundColor: Colors.white,
                            child: Image.asset(
                              'assets/images/${itemExperience[index].entreprise.toLowerCase()}.png',
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Text(
                          itemExperience[index].intitule,
                          style: const TextStyle(
                            color: Colors.black87,
                            fontSize: 14,
                          ),
                        ),
                        
                      ],
                    );
                  },
                  body: const Text("Test du body"),
                  isExpanded: itemExperience[index].expanded,
                ),
              ],
              expansionCallback: (int item, bool status) {
                setState(() {
                  itemExperience[index].expanded =
                      !itemExperience[index].expanded;
                });
              },
            );
          })
*/
