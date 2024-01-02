+++
# Experience widget.
widget = "experience"  # See https://sourcethemes.com/academic/docs/page-builder/
headless = true  # This file represents a page section.
active = true  # Activate this widget? true/false
weight = 20  # Order that this section will appear.

title = "Formations"
subtitle = "parmi les plus récentes"

# Date format for experience
#   Refer to https://sourcethemes.com/academic/docs/customization/#date-format
date_format = "Jan 2006"

# Experiences.
#   Add/remove as many `[[experience]]` blocks below as you like.
#   Required fields are `title`, `company`, and `date_start`.
#   Leave `date_end` empty if it's your current employer.
#   Begin/end multi-line descriptions with 3 quotes `"""`.

[[experience]]
  title = "Thèse de doctorat spécialité Signal, Image, Vision"
  company = "École Centrale de Nantes."
  company_url = "https://www.ec-nantes.fr/"
  location = "Nantes"
  date_start = "2021-12-01"
  date_end = ""
  description = """
  Préparation d'une thèse de doctorat sous la direction de Messieurs [J.Idier](https://pagesperso.ls2n.fr/~idier-j/IndexFR.html) ([LS2N](https://www.ls2n.fr/)), [S.Stute](https://medecine.univ-nantes.fr/simon-stute) et [T.Carlier](https://medecine.univ-nantes.fr/thomas-carlier) ([CRCI$^{2}$NA](https://CRCI$^{2}$NA.univ-nantes.fr/)).

  **Problématique:** étude et la mise en oeuvre d'algorithmes de reconstruction tomographique pour l'imagerie TEP 3-photons appliqués à la caméra [XEMIS2](https://www-subatech.in2p3.fr/fr/recherche/22-recherche/xenon-recherche/557-projet-xemis-2).  


  """
  info_sup_tag = 1
  info_sup = """
  **Contexte:**

  Le groupe [Xénon](https://www-subatech.in2p3.fr/fr/recherche/equipes/xenon/presentation) du laboratoire [Subatech](https://www-subatech.in2p3.fr/fr/) développe depuis 2004 une nouvelle technique d'imagerie médicale à 3 photons basée sur l'utilisation simultanée d'un émetteur $(\\beta^{+},\\gamma)$ et d'un détecteur utilisant du xénon liquide.  
  La caméra [Xenon Medical Imaging System 2](https://www-subatech.in2p3.fr/fr/recherche/22-recherche/xenon-recherche) a été récemment installée au CHU de Nantes et est dans sa phase finale de développement. Le système sera dédié aux expérimentations précliniques utilisant de nouveaux produits radiopharmaceutiques basés sur le $^{44}$Sc, en collaboration avec l'équipe [Nuclear Oncology](https://CRCI$^{2}$NA.univ-nantes.fr/en/research/team-2) du CRCI$^{2}$NA.  
  Ce nouveau système d'imagerie offre de nouvelles possibilités qui entraînent également de nouvelles difficultés pour la reconstruction des images:
  1. Le système est conçu pour détecter 3 photons simultanément mais des événements avec seulement 2 photons détectés peuvent se produire. Ces événements apportent toujours des informations utiles et la possibilité de les inclure dans le problème doit être étudiée.
  2. Le système est conçu pour fonctionner avec des concentrations d'activité très faibles. Très peu d'événements sont disponibles pour construire l'image par rapport à l'imagerie standard par tomographie par émission de positrons (TEP). Cette caractéristique intrinsèque doit être prise en compte avec des méthodes de régularisation ou des modèles préalables appropriés.
  3.	Le détecteur continu au xénon liquide diffère des détecteurs TEP basés sur des matrices de cristaux discrets. La continuité du milieu de détection doit être considérée comme un avantage et considérée comme telle dans le modèle plutôt que de recourir à une méthode de discrétisation virtuelle.

  Ce contexte spécifique d'un détecteur continu, d'événements à 3 photons et de faibles statistiques donne lieu à un problème inverse difficile à résoudre.

  **Mots-clefs:** problèmes inverses, imagerie médicale, méthodes d'optimisation, inférence bayésienne, low-statistics, collaboration multidisciplinaire.

  **Planches:** [Séminaire SIMS 06/22](files/LATIFM_PHD_ETEZ22.pdf)  

  **Encadrement d'étudiants (Stages, Projets)**
  - **Année 2023 :** 
    Encadrement du stage de E.Gecimli  (M1 Physique fondamentale et applications - Université de Nantes)
    \\
    *Problématique :* Étude et mise en œuvre d’algorithmes de reconstruction d’événements pour l’imagerie TEP 3-photons appliqués à la caméra XEMIS2. Extraction et analyse des données obtenues à partir d'une simulation GEANT4 de la caméra XEMIS2 proposée par N.Beaupère (Laboratoire Subatech - IMTA).
    \\
    *Durée :* 4 mois
  - **Année 2023 :** 
    Encadrement du projet bibliographique de Y.Oumarou (M2 CORO-SIP - Ecole Centrale de Nantes)
    \\
    *Problématique :* Étude bibliographique de l'état de l'art des projecteurs en imagerie Compton - [Projet ComProj](/files/LM_corosip_merec23.pdf) .
    \\
    *Durée :* 3 mois  


  **Particpations aux workshops/congrès scientifiques :**
  - EmiLy 2022 (orateur);
  - MIC 2022 (auditeur);
  - Fully3D 2023 (orateur);
  - Gretsi 2023 (orateur);
  - Journée du GDR ISIS: *Etat des lieux de la reconstruction tomographique* (auditeur). 

  **Diffusion scientifique :**  
  - Demie-heure des doctorant LS2N 2022 (orateur); 
  - Nuit Blanche des Chercheurs 2023: science-dating; 
  - Nuit Blanche des Chercheurs 2024: science-dating. 
"""

[[experience]]
  title = "Master Informatique mention Optimisation en Recherche Opérationnelle"
  company = "Université de Nantes, Université Libre de Bruxelles."
  company_url = ""
  location = "Nantes"
  date_start = "2018-09-01"
  date_end = "2020-07-01"
  description = """
  Co-diplomation avec le Master Optimisation et Algorithmique de l'ULB.    
  Retour d'experience : interview réalisée pour le journal [l'Etudiant](https://www.letudiant.fr/etudes/international/etudier-en-belgique-malgre-la-proximite-avec-la-france-le-depaysement-est-total.html).
  """
  info_sup_tag = 1
  info_sup = """
  **Cours suivis :**  

  - **Université de Nantes (Master 1)** Analyse de données, Graphes, Graphes et Réseaux, Langage de programmation de haut niveau, Métaheuristiques, Optimisation discrète et combinatoire, Optimisation non linéaire.  

  - **Mémoire :** *Application de la théorie des graphes pour l'optimisation d'emplois du temps* encadré par I.RUSU. [Rapport](/files/RAP_TER_LM.pdf), [Planches](/files/PRES_TER_LM.pdf). 

  - **Université Libre de Bruxelles (Master 1)** Combinatorial optimization, Continuous optimization, Statistical foundations of machine learning, Swarm Intelligence, Techniques of artificial intelligence.  

  - **Université de Nantes (Master 2)** Algorithmique et génomique, Contraintes globales, Large scale optimization, Métaheuristiques multi-objectif, Optimisation en robotique, Optimisation globale, Optimisation multi-objectif, Planification et ordonnancement, Programmation par contrainte, Transport et logistique.
"""

[[experience]]
  title = "Licence mention Informatique parcours Mathématiques"
  company = "Université de Nantes."
  company_url = ""
  location = "Nantes"
  date_start = "2015-09-01"
  date_end = "2018-07-01"
  description = """
  Intégration de la seconde année de licence après validation des acquis.  
  """
  info_sup_tag = 1
  info_sup = """
**Licence 2 :**
  - **Mathématiques :** Analyse et intégration, Logique mathématique pour l’informatique, Optimisation, Probabilités discrètes,  Réduction des endomorphismes, Théorie des Jeux.
  - **Informatique :** Algorithmique et structures de données, Programmation objet.
  - **Autre :** Épistémologie, Pôle Étudiant Pour l’Innovation, le Transfert et l’Entrepreneuriat (PEPITE).  

**Licence 3 :**
- **Mathématiques :** Inférence statistique, Optimisation sous contrainte, Probabilités continues, Recherche Opérationnelle, Systèmes dynamiques.
- **Informatique :** Algorithmique et structures de données, Étude des algorithmes, Fondements de calculs et de calculabilité, Langage et automates, Programmation fonctionnelle.
  """
+++
