# 🌦️ Pipeline ETL : Analyse Météorologique de Dakar 2025

[![Python](https://img.shields.io/badge/Python-3.10+-blue?style=for-the-badge&logo=python)](https://www.python.org/)
[![PostgreSQL](https://img.shields.io/badge/Database-PostgreSQL-336791?style=for-the-badge&logo=postgresql)](https://www.postgresql.org/)
[![Pandas](https://img.shields.io/badge/Library-Pandas-150458?style=for-the-badge&logo=pandas)](https://pandas.pydata.org/)

---

## 👤 Informations Étudiant
* **Auteur :** **Omar Diop**
* **Formation :** Master 1 Intelligence Artificielle & Data Science
* **Institution :** Swiss UMEF, Dakar
* **Projet :** Examen Final - Module Cycle de Vie de la Donnée

---

## 📌 Présentation du Projet
Ce projet consiste en la mise en place d'un pipeline **ETL** (Extract, Transform, Load) complet. L'objectif est d'orchestrer un flux de données automatisé pour récupérer, traiter et stocker les données météorologiques de la ville de Dakar pour l'année 2025.



---

## 🏗️ Architecture du Pipeline
Le projet respecte les étapes standards de l'ingénierie de données en entreprise :

1.  **Extraction (API)** : Récupération des données historiques via l'API **Open-Meteo**.
2.  **Transformation (Python)** : 
    * Nettoyage et structuration des données avec **Pandas**.
    * **Feature Engineering** : Création d'une variable binaire `is_rainy` (pluie > 0mm).
3.  **Chargement (SQL)** : Insertion sécurisée dans **PostgreSQL** via le driver **Psycopg2**.
4.  **Analyse** : Requêtage SQL pour générer des statistiques mensuelles.



---

## 🛠️ Stack Technique

| Composant | Technologie |
| :--- | :--- |
| **Langage** | Python 3.10+ |
| **Librairies** | `requests`, `pandas`, `psycopg2`, `matplotlib` |
| **Base de données** | PostgreSQL 14+ |
| **Environnement** | Jupyter Notebook (`.ipynb`) |

---

## 📂 Structure des fichiers
```bash
.
├── meteo.ipynb           # Notebook principal (Cycle complet ETL)
├── requirements.txt      # Dépendances Python
└── README.md             # Documentation du projet
