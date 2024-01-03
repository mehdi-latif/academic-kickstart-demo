+++
# Experience widget.
widget = "experience"  # See https://sourcethemes.com/academic/docs/page-builder/
headless = true  # This file represents a page section.
active = true  # Activate this widget? true/false
weight = 30  # Order that this section will appear.

title = "Experiences professionelles"
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
  title = "Vacataire - Encadrement de travaux pratiques"
  company = "École Centrale de Nantes"
  company_url = "https://www.ec-nantes.fr/"
  location = "Nantes"
  date_start = "2022-01-01"
  date_end = ""
  description = """
  Encadrement de travaux pratiques en cycle ingénieur ECN dans les domaines des mathématiques appliquées, de l'algorithmique et du traitement du signal.
  """
  info_sup_tag = 1
  info_sup = """
  **Matières enseignées :**
  - *2021/2022 - Semestre 2:*  
     
    - TP Algorithmique et programmation (EI1) - 18h. 
      
      - Introduction à l'implémentation d'algorithme, opérations sur grands entiers, tris et analyse de complexité, algorithmique des listes et des arbres, POO (application des concepts de Swarm intelligence).     
  - *2022/2023 - Semestre 1:* 

    - TP Algorithmique et programmation (EI1) - 18h;
    - TP Mathématiques pour l'ingénieur (EI1) - 12h.
      
      - Analyse numérique (Méthode des éléments-finis, résolution de systèmes linéaires mal posés), optimisation (libre, sous contrainte, programmation linéaire), probabilités et inférence statistique.
  - *2022/2023 - Semestre 2:* 
    
    - TP Mathématiques pour l'ingénieur (EI1) - 12h; 
    - TP C$^{3}$ : Signaux et systèmes (EI1) - 4h.
      
      - Analyse spectrale et temps-fréquence : transcription automatique de partition musicale. 
  - *2023/2024 - Semestre 1:* 
    
    - TP Mathématiques pour l'ingénieur (EI1) - 12h;
    - TP C$^{3}$ : Signaux et systèmes (EI1) - 6h;  
    - TP Calcul scientifique et optimisation (EI23 (Fr), CORO-SIP (En)) - 16h.

      - Optimisation convexe différentiable: Recherches linéaires, régions de confiance, algorithmes de pénalisation quadratique et barrière logarithmique, régularisation ...; 
      - Optimisation convexe non différentiable [Supports de B.Pascal](https://bpascal-fr.github.io/teaching/): sous-différentielle/gradient, opérateurs proximaux, algorithme primal-dual régularisé.
  

  **Rattachement :** 
  [Département Mathématiques, Informatique et Biologie](https://www.ec-nantes.fr/organisation/organisation-de-lecole/departement-mathematiques-informatique-et-biologie-mib), [Département Automatique et Robotique](https://www.ec-nantes.fr/organisation/organisation-de-lecole/departement-automatique-et-robotique)

  **Note:** dans le langage ECN, *EI (Elèves ingénieurs)*: cursus généraliste (en 3 ans); *Master*: cursus spécialisé (en 2 ans).

  **Eléments de correction :** [envoyer une demande motivée](mailto:mehdi.latif@ls2n.fr?subject=[mlatif.fr]%20Demande%20d'accès%20aux%20éléments%20de%20correction%20matière%20...)
"""


[[experience]]
  title = " Ingénieur de recherche - Equipe Signal IMage et Son (SIMS)"
  company = "Laboratoire des Sciences du Numérique de Nantes (LS2N)"
  company_url = "https://www.ls2n.fr/equipe/sims/"
  location = "Nantes"
  date_start = "2020-10-03"
  date_end = "2021-11-30"
  description = """
  *MIMOSA UNMIX:* Poursuite des travaux de recherche réalisés dans le cadre de mon stage de fin de master sur le problème du démélange spectral parcimonieux et rédaction de l'article scientifique associé.
  """
  info_sup_tag = 1
  info_sup = """
  **Encadrement:** S.Bourguignon.

  **Documents:** [Séminaires SiMS 09/21](/files/LATIFM_MIMOSA_UNMIX_SLIDES.pdf), [ANR MIMOSA](https://mimosa.ls2n.fr/)   

  **Résumé:** L’imagerie hyperspectrale concerne l’acquisition simultanée d’images dans un grand nombre de longueurs d’onde. Une problématique récurrente de traitement de ces données consiste à résoudre un problème de séparation de sources : en raison d’une faible résolution spatiale des instruments, le spectre de réflectance lumineuse mesuré en une position donnée résulte de la superposition de spectres élémentaires, i.e. un mélange dont il s’agit de retrouver les proportions.

  En démélange dit supervisé, le mélange est recherché dans un « dictionnaire » connu de spectres de référence. Une contrainte physique, dite de parcimonie, stipule alors qu’un faible nombre de composants dans le mélange suffit à décrire chaque spectre observé. Mathématiquement, il s’agit d’ajuster un modèle linéaire au sens des moindres carrés, sous la contrainte que le vecteur de coefficients recherchés possède peu de composantes non-nulles, i.e. une faible « norme » $\\ell_0$. C’est un problème NP-difficile relevant essentiellement de l’optimisation combinatoire.

  Alors que la plupart des travaux dans le domaine considèrent des approches relâchées, privilégiant un faible temps de calcul, nous proposons une méthode de résolution exacte garantissant l’optimalité des solutions obtenues.

  Dans sa thèse de doctorat, Ramzi Ben Mhenni a développé des algorithmes de type branch-and-bound pour l’optimisation parcimonieuse exacte. Nous en proposons ici une version spécifique au problème de démélange. En effet, les coefficients du mélange sont positifs et de somme unité, contraintes qui requièrent une architecture algorithmique spécifique.

  Lorsque le mélange est composé d’un nombre restreint de spectres, ce qui est généralement le cas lorsque ces spectres sont « appris » d’un jeu d’observations, nous montrons que cette approche reste peu coûteuse en calcul et fournit des meilleures solutions en comparaison avec les méthodes de la littérature. Lorsque la taille du dictionnaire augmente, e.g. pour un dictionnaire composé d’un grand nombre de spectres mesurés en laboratoire, les solutions obtenues restent de meilleure qualité, au prix d’un temps de calcul bien supérieur.

  Un solveur libre, codé en C++, est mis à disposition de la communauté scientifique.




  """

[[experience]]
  title = " Stage de recherche - Equipe Signal IMage et Son (SIMS)"
  company = "Laboratoire des Sciences du Numérique de Nantes (LS2N)"
  company_url = "https://www.ls2n.fr/equipe/sims/"
  location = "Nantes"
  date_start = "2020-02-03"
  date_end = "2020-07-03"
  description = """
  Développement d'un algorithme de type branch-and-bound pour le problème de démélange spectral parcimonieux sous contrainte de non négativité et de somme unitaire.
  """
  info_sup_tag = 1
  info_sup = """
  L'objectif de ces travaux de recherche consiste au développement d'un algorithme de branch-and-bound dédié au problème de démélange spectral parcimonieux.  
  Ce problème de minimisation sous contrainte de parcimonie (*norme* $\\ell_0$) est connu pour être NP-difficile; l'approche développée durant ce stage repose sur une reformulation en nombres mixtes permettant une résolution exacte. Les résultats expérimentaux obtenus montrent que cette approche dédiée est compétitive par rapport aux résultats obtenus avec des solveurs génériques de programmation MIP *eg.* Cplex.      

  **Encadrement:** S.Bourguignon, R.Ben Mhenni, J.Ninin - Equipe Signal, IMage et Son ([SIMS](https://www.ls2n.fr/equipe/sims/)).

  **Documents :** [Rapport](/files/LATIFM_M2_BBHS.pdf), [Planches](/files/LATIFM_M2_BBHS_PRES.pdf), [Prototype MATLAB](https://gitlab.com/mlatif/bbdsp)
  """

[[experience]]
  title = " Stagiaire - Equipe Modélisation, Optimisation et DEcision pour la Logistique, l'Industrie et les Services (MODELIS)"
  company = "Laboratoire des Sciences du Numérique de Nantes (LS2N)"
  company_url = "https://www.ls2n.fr/equipe/modelis/"
  location = "Nantes"
  date_start = "2018-06-01"
  date_end = "2018-04-01"
  description = """
  Conception d'une matheuristique pour le problème de collecte et livraison avec fenêtres de temps (PDPTW).
  """
  info_sup_tag = 1
  info_sup = """
  Résolution du Pickup and Delivery Problem with Time Windows par une approche de type matheuristique, la méthode mise en place pour la résolution de ce problème reposait sur :
    - Une heuristique de recherche à voisinage large (LNS)
    - Une résolution d'un problème de couverture d'ensemble (SCP)  
  Mon rôle dans la conception de cette matheuristique :
  - Création des indicateurs pour l'étude de la faisabilité des insertions de requête *e.g.* calcul du Forward Time Slack, analyse du coût simulé après insertion d'une requête
  - Conception de la composante de résolution exacte de la matheuristique *i.e.* le Set Covering Problem.

  **Encadrement:**  F.Lehuédé, Q.Tonneau.

  **Documents :** [Rapport](/files/LATIFM_L3_PDPTW_RAP.pdf), [Planches](/files/LATIFM_L3_PDPTW_PRES.pdf)
  """
+++
