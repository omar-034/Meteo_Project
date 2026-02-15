🌦️ Pipeline ETL : Analyse Météorologique de Dakar 2025
👤 Informations Étudiant
Auteur : [Omar Diop]

Formation : Master 1 IA & Data Science

Institution : Swiss UMEF, Dakar

Projet : Examen Final - Module Cycle de Vie de la Donnée

📌 Présentation du Projet
Ce projet remplace l'examen final et consiste en la mise en place d'un pipeline ETL (Extract, Transform, Load) complet. L'objectif est de récupérer, traiter et stocker les données météorologiques de la ville de Dakar pour l'année 2025 afin d'en extraire des indicateurs climatiques pertinents.

🏗️ Architecture du Pipeline
Le projet suit une logique de flux de données standard en entreprise :

Extraction (API) : Récupération des données historiques via l'API Open-Meteo.

Transformation (Python) :

Nettoyage avec Pandas.

Calcul de la colonne `is_rainy` (Feature Engineering).

Chargement (SQL) : Insertion sécurisée dans PostgreSQL en utilisant le driver Psycopg2.

Analyse : Requêtage SQL pour obtenir des statistiques mensuelles.

🛠️ Stack Technique
Langage : Python 3.10+

Librairies : requests, pandas, psycopg2, matplotlib

Base de données : PostgreSQL 14+

Format de sortie : Jupyter Notebook (.ipynb)

📂 Structure des fichiers
Bash
.
├── meteo.ipynb                   # Notebook principal contenant tout le cycle
├── requirements.txt              # Liste des dépendances Python
└── README.md                     # Documentation (ce fichier)

🚀 Installation et Utilisation
1. Cloner le projet et installer les dépendances
Bash
pip install -r requirements.txt
2. Configuration de la base de données
Le notebook se charge de créer la table automatiquement. Voici la structure utilisée :

SQL
CREATE TABLE IF NOT EXISTS meteo_dakar_2025 (
    date_day DATE PRIMARY KEY,
    temp_max FLOAT,
    temp_min FLOAT,
    apparent_temp_mean FLOAT,
    precip_sum FLOAT,
    wind_dir_dominant INT,
    sunshine_duration FLOAT,
    is_rainy BOOLEAN
);
3. Exécution
Lancez le Jupyter Notebook et exécutez les cellules dans l'ordre pour voir le pipeline s'animer, de l'appel API jusqu'aux graphiques finaux.

🌐 Perspectives de mise en production
Le projet a été pensé pour être évolutif. Une suite logique serait l'implémentation d'une API REST (Flask ou FastAPI) pour servir ces données stockées en SQL à des applications tierces ou des tableaux de bord interactifs.

📚 Références & Documentation
API : Open-Meteo Historical Data

Driver : Psycopg2 Documentation

Cours : Cycle de vie des données - Swiss UMEF Dakar.