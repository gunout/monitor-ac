# ⛽ Monitor Aides Carburant 2026

> **Dashboard interactif pour suivre le dispositif d'aide au carburant mis en place par le Gouvernement français en 2026.**

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)
[![Version](https://img.shields.io/badge/version-1.0.0-blue.svg)](https://github.com/gunout/monitor-ac/releases)
[![DSFR](https://img.shields.io/badge/design-DSFR%201.11.2-000091.svg)](https://www.systeme-de-design.gouv.fr/)
[![HTML](https://img.shields.io/badge/HTML-5-E34F26.svg?logo=html5&logoColor=white)](https://developer.mozilla.org/fr/docs/Web/HTML)
[![CSS](https://img.shields.io/badge/CSS-3-1572B6.svg?logo=css3&logoColor=white)](https://developer.mozilla.org/fr/docs/Web/CSS)
[![JavaScript](https://img.shields.io/badge/JavaScript-Vanilla-F7DF1E.svg?logo=javascript&logoColor=black)](https://developer.mozilla.org/fr/docs/Web/JavaScript)
[![Chart.js](https://img.shields.io/badge/Chart.js-4.4.0-FF6384.svg?logo=chartdotjs&logoColor=white)](https://www.chartjs.org/)
[![jsPDF](https://img.shields.io/badge/jsPDF-2.5.1-FF0000.svg)](https://github.com/parallax/jsPDF)
[![Git LFS](https://img.shields.io/badge/Git%20LFS-enabled-F64935.svg?logo=git-lfs&logoColor=white)](https://git-lfs.github.com/)
[![PRs Welcome](https://img.shields.io/badge/PRs-welcome-brightgreen.svg)](http://makeapullrequest.com)
[![Made in France](https://img.shields.io/badge/Made%20in-France-000091.svg)](https://www.gouvernement.fr/)

---

## 📖 Table des matières

- [Présentation](#-présentation)
- [Fonctionnalités](#-fonctionnalités)
- [Aperçu](#-aperçu)
- [Démarrage rapide](#-démarrage-rapide)
- [Structure du projet](#-structure-du-projet)
- [Configuration](#-configuration)
- [Les dispositifs d'aide](#-les-dispositifs-daide)
- [Données live](#-données-live)
- [Simulateur d'éligibilité](#-simulateur-déligibilité)
- [Export PDF](#-export-pdf)
- [Stack technique](#-stack-technique)
- [Contribuer](#-contribuer)
- [Licence](#-licence)
- [Remerciements](#-remerciements)

---

## 🎯 Présentation

**Monitor Aides Carburant 2026** est un dashboard statique, 100 % client-side, qui centralise les informations officielles sur les dispositifs d'aide au carburant mis en place par le Gouvernement français en 2026.

L'application agrège les données publiques de **data.gouv.fr** (prix des carburants en temps réel), propose un **simulateur d'éligibilité** pour l'indemnité Grands Rouleurs, et génère des **rapports PDF** structurés.

### 🎯 Objectifs

- **Transparence** : rendre accessible l'information sur les dispositifs d'aide
- **Pédagogie** : expliquer les conditions d'éligibilité de chaque dispositif
- **Aide à la décision** : permettre à chacun de vérifier son éligibilité en 30 secondes
- **Visualisation** : offrir une vue claire de l'évolution des prix des carburants

### ✨ Points clés

- 🚀 **Aucun backend** — tout tourne dans le navigateur
- 🎨 **Design DSFR** — conforme au Système de Design de l'État
- 📊 **Données live** — lecture du dataset officiel data.gouv.fr
- 🧮 **Simulateur** — éligibilité Grands Rouleurs en temps réel
- 📄 **Export PDF** — rapports professionnels
- 🌙 **Mode sombre** — persistant via `localStorage`
- 📱 **Responsive** — adapté mobile, tablette et desktop

---

## 🚀 Fonctionnalités

### 📊 Vue d'ensemble

- **Hero animé** avec compteurs (100 €, 5,5 M bénéficiaires, 30/09/26)
- **4 cartes de synthèse** : Grands Rouleurs, Transporteurs, Agriculteurs GNR, BTP
- **Conditions Grands Rouleurs** : 10 critères d'éligibilité
- **Barème transporteurs** : 7 types de véhicules

### ⛽ Données live

- **Prix moyen** Gazole, SP95-E10, E85 calculés en temps réel
- **Min / Max** par carburant avec localisation des stations
- **Top 5 stations** les moins chères
- **Liste complète** des stations (limité à 100 pour la performance)

### 📅 Calendrier

Tableau complet des 5 dispositifs avec :
- Dates d'ouverture et de clôture
- Canaux de dépôt
- Statut en temps réel (clôturé / ouvert / dernière chance)

### 🧮 Simulateur d'éligibilité

Formulaire interactif pour vérifier l'éligibilité à l'indemnité **Grands Rouleurs** :
- RFR par part
- Distance domicile-travail et annuelle
- Année de naissance
- Motorisation du véhicule
- Statut IFI

Résultat en temps réel avec score détaillé (X/5 critères).

### 📈 Graphiques (Chart.js)

- **Histogramme** : distribution des prix gazole (10 tranches)
- **Comparaison** : min / moyen / max par carburant
- **Évolution mensuelle** : Gazole, SP95-E10, E85 sur 10 mois

### 📄 Export PDF

- **Page 1** : Synthèse des dispositifs
- **Page 2** : Calendrier des demandes
- **Page 3** : Statistiques live (si données chargées)

### 🎨 Interface

- **Mode sombre** : toggle avec persistance
- **Barre de progression** : position de lecture
- **Bouton scroll-top** : retour en haut
- **Onglets fluides** : navigation animée
- **Cartes interactives** : hover avec translation

---

## 🖼️ Aperçu

> 📸 *Ajoutez vos captures dans `docs/` : `screenshot-overview.png`, `screenshot-data.png`, `screenshot-simulator.png`*

```
┌──────────────────────────────────────────────────────────────┐
│  🇫🇷 Monitor Aides Carburant · Pro Live Data                 │
├──────────────────────────────────────────────────────────────┤
│  📊 Vue d'ensemble  ⛽ Données live  📅 Calendrier            │
│  🧮 Simulateur  📈 Graphiques  🔗 Liens                       │
├──────────────────────────────────────────────────────────────┤
│  ┌────────────┬────────────┬────────────┬────────────┐       │
│  │ 👤 100 €   │ 🚛 60 000 €│ 🌾 50 000 €│ 🏗️ 4 000 €  │       │
│  │ Grands R.  │ Transport. │ Agri GNR   │ BTP        │       │
│  └────────────┴────────────┴────────────┴────────────┘       │
│  ⛽ 11 000 stations · Gazole 1.789 € · SP95 1.850 €           │
│  📈 [Graphiques interactifs Chart.js]                          │
└──────────────────────────────────────────────────────────────┘
```

---

## 🚀 Démarrage rapide

### Prérequis

- Un **navigateur moderne** (Chrome 90+, Firefox 88+, Safari 14+)
- **Python 3** (pour servir les fichiers en local)
- Le fichier **`data/prix-carburants.json`** (généré via `scripts/fetch-data.py`)

### Installation

```bash
# 1. Cloner le dépôt
git clone https://github.com/gunout/monitor-ac.git
cd monitor-ac

# 2. Télécharger les données (optionnel — sinon fetch direct)
python3 scripts/fetch-data.py

# 3. Servir en local
python3 -m http.server 8022
```

**Ouvrir** : http://localhost:8022

### Alternative : sans serveur local

Le fichier `index.html` fonctionne aussi en **double-clic** (protocole `file://`), à condition de ne pas avoir besoin de charger `data/prix-carburants.json` via `fetch`. Dans ce cas, le dashboard utilise les données live de data.gouv.fr directement.

### Alternative : GitHub Pages

Le dashboard est déployable automatiquement sur **GitHub Pages** :

1. **Settings** → **Pages**
2. **Source** : `Deploy from a branch`
3. **Branch** : `main` / `/ (root)`
4. **Save**

Accessible à : `https://gunout.github.io/monitor-ac/`

⚠️ **Note** : GitHub Pages ne sert pas les fichiers Git LFS. Si `data/prix-carburants.json` est en LFS, le fetch direct échouera. Solution : charger depuis `data.gouv.fr` directement.

---

## 📁 Structure du projet

```
monitor-ac/
├── 📄 index.html                  # Dashboard complet (HTML + CSS + JS inline)
├── 📄 README.md                   # Ce fichier
├── 📄 LICENSE                     # MIT
├── 📄 .gitignore                  # Exclusions Git
├── 📄 .gitattributes              # Configuration Git LFS
├── 🚀 start.sh                    # Serveur local avec détection port
├── 📁 data/                       # Données
│   └── prix-carburants.json       # Dataset (28 Mo, téléchargeable)
├── 📁 docs/                       # Documentation
│   ├── SOURCES.md                 # Sources officielles
│   └── CHANGELOG.md               # Historique
├── 📁 scripts/                    # Scripts Python
│   └── fetch-data.py              # Téléchargement des données
└── 📁 examples/                   # Exemples de rapports PDF
```

---

## ⚙️ Configuration

### Fichier `data/prix-carburants.json`

Structure attendue (issue du dataset data.gouv.fr) :

```json
[
  {
    "id": 89100001,
    "latitude": "4818300",
    "longitude": "330900",
    "cp": "89100",
    "pop": "R",
    "adresse": "84 ROUTE DE MAILLOT",
    "ville": "Sens",
    "gazole_prix": 1.789,
    "sp95_prix": 1.850,
    "e85_prix": 0.950
  }
]
```

### Script de téléchargement

```python
# scripts/fetch-data.py
import urllib.request
from pathlib import Path

DATA_DIR = Path(__file__).parent.parent / "data"
DATA_DIR.mkdir(exist_ok=True)

URL = ("https://data.economie.gouv.fr/api/explore/v2.1/"
       "catalog/datasets/prix-des-carburants-en-france-flux-instantane-v2/exports/json")

def download():
    print(f"Téléchargement depuis data.gouv.fr...")
    req = urllib.request.Request(URL, headers={"User-Agent": "Monitor/1.0"})
    with urllib.request.urlopen(req, timeout=120) as r:
        data = r.read()
    output = DATA_DIR / "prix-carburants.json"
    output.write_bytes(data)
    size_mb = len(data) / (1024 * 1024)
    print(f"  ✓ {output} — {size_mb:.1f} Mo")

if __name__ == "__main__":
    download()
```

### Ajouter un nouveau dispositif

Éditez la section correspondante dans `index.html` :

```html
<tr>
  <td><strong>Nouveau dispositif</strong></td>
  <td><span class="tag nouveau">Public</span></td>
  <td>1er janv. 2026</td>
  <td>31 déc. 2026</td>
  <td>portail.gouv.fr</td>
  <td><span class="tag open">Ouvert</span></td>
</tr>
```

---

## 💰 Les dispositifs d'aide

### 👤 Grands Rouleurs — 100 €

| Critère | Condition |
|---|---|
| **Résidence fiscale** | France (2024) |
| **Année de naissance** | Avant le 1ᵉʳ janvier 2009 |
| **RFR par part** | ≤ 16 880 € |
| **Revenus d'activité** | Déclarés en 2024 |
| **IFI** | Non redevable en 2024 |
| **Distance** | ≥ 15 km/trajet OU ≥ 8 000 km/an |
| **Véhicule** | 2/3/4 roues motorisé |
| **Motorisation** | Thermique ou hybride non rechargeable |
| **Assurance** | Véhicule assuré |

**Date limite** : 30 septembre 2026 (prolongée)
**Canal** : impots.gouv.fr

### 🚛 Transporteurs — jusqu'à 60 000 €

Barème par véhicule :

| Type | Montant |
|---|---|
| Autocars | 250 € |
| Ambulances, VSL | 70 € |
| PL ≤ 3,5T | 70 € |
| PL > 3,5T et ≤ 7,5T | 70 € |
| PL > 7,5T et < 26T | 70 € |
| PL ≥ 26T | 400 € |
| Tracteurs routiers | 500 € |

**Date limite** : 15 juin 2026
**Canal** : ASP Public

### 🌾 Agriculteurs GNR — jusqu'à 50 000 €

Remboursement de 3,86 €/hl de GNR, plafonné à 50 000 €.

**Date limite** : 31 juillet 2026
**Canal** : Chorus Pro

### 🏗️ BTP — jusqu'à 4 000 €

20 c€/L sur le GNR de mai 2026, plafonné à 4 000 €.

**Ouverture** : 8 juin 2026
**Canal** : impots.gouv.fr

### 🎣 Pêche — 20 c€/L

Sur le carburant acheté entre le 1ᵉʳ et le 30 avril 2026.

**Ouverture** : 1ᵉʳ juin 2026
**Canal** : ASP Public

---

## 📊 Données live

### Dataset officiel

**Prix des carburants en France — Flux instantané v2**

- **Source** : DGCCRF / Ministère de l'Économie
- **Fréquence** : mise à jour toutes les **10 minutes**
- **Couverture** : ~11 000 stations-service (métropole + outre-mer)
- **Carburants** : Gazole, SP95-E10, SP98, E85, GPLc

### API REST

```
GET https://data.economie.gouv.fr/api/explore/v2.1/catalog/datasets/prix-des-carburants-en-france-flux-instantane-v2/exports/json
```

### Métriques calculées

- **Prix moyen** par carburant
- **Prix minimum** et **maximum** avec localisation
- **Distribution** des prix (histogramme 10 tranches)
- **Top 5 stations** les moins chères

### Auto-reload

Le dashboard recharge automatiquement les données toutes les **5 minutes**.

---

## 🧮 Simulateur d'éligibilité

Le simulateur prend en entrée :

| Champ | Type | Exemple |
|---|---|---|
| RFR par part | Nombre | 15 000 € |
| Distance domicile-travail | Nombre | 20 km |
| Distance annuelle | Nombre | 10 000 km |
| Année de naissance | Nombre | 1985 |
| Motorisation | Sélection | Thermique / Hybride / Électrique |
| Redevable IFI 2024 | Sélection | Oui / Non |

**Résultat** : score sur 5 critères + montant estimé (100 €).

---

## 📄 Export PDF

Le bouton **📄** en haut à droite génère un rapport PDF via jsPDF :

1. **Page 1** : Synthèse des dispositifs
2. **Page 2** : Calendrier des demandes
3. **Page 3** : Statistiques live (si données chargées)

Nom du fichier : `monitor-aides-carburant-2026.pdf`

---

## 🛠️ Stack technique

| Composant | Version | Rôle |
|---|---|---|
| **DSFR** | 1.11.2 | Design System de l'État |
| **Chart.js** | 4.4.0 | Graphiques interactifs |
| **jsPDF** | 2.5.1 | Génération PDF |
| **Vanilla JS** | — | Aucun framework |

### Compatibilité

| Navigateur | Version min |
|---|---|
| Chrome | 90+ |
| Firefox | 88+ |
| Safari | 14+ |
| Edge | 90+ |

---

## 🤝 Contribuer

Les contributions sont **les bienvenues** !

### Signaler un bug

Ouvrez une [issue](https://github.com/gunout/monitor-ac/issues) avec :
- Description du problème
- Étapes de reproduction
- Comportement attendu vs observé
- Captures d'écran
- Navigateur utilisé

### Proposer une fonctionnalité

1. Fork le projet
2. Créez une branche : `git checkout -b feature/ma-fonctionnalite`
3. Committez : `git commit -m "feat: ajout de ma fonctionnalité"`
4. Pushez : `git push origin feature/ma-fonctionnalite`
5. Ouvrez une Pull Request

### Convention de commits

```
feat:     nouvelle fonctionnalité
fix:      correction de bug
docs:     documentation
style:    formatage
refactor: refactoring
test:     ajout de tests
chore:    maintenance
```

### Idées d'amélioration

- [ ] Carte interactive des stations (Leaflet / MapLibre)
- [ ] Comparateur de prix entre villes
- [ ] Historique des prix sur 12 mois
- [ ] Alertes email sur baisse de prix
- [ ] Mode PWA (installation mobile)
- [ ] Multi-langue (EN, DE, ES)

---

## 📜 Licence

Ce projet est sous licence **MIT** — voir le fichier [LICENSE](LICENSE) pour plus de détails.

```
MIT License

Copyright (c) 2026 gunout

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
```

---

## 🙏 Remerciements

- **[Gouvernement français](https://www.gouvernement.fr/)** — dispositif d'aide
- **[info.gouv.fr](https://www.info.gouv.fr/)** — source officielle
- **[data.gouv.fr](https://www.data.gouv.fr/)** — plateforme open data
- **[Etalab](https://www.etalab.gouv.fr/)** — pilotage open data
- **[DSFR](https://www.systeme-de-design.gouv.fr/)** — Design System de l'État
- **[Chart.js](https://www.chartjs.org/)** — graphiques
- **[jsPDF](https://github.com/parallax/jsPDF)** — export PDF

---

## 📊 Statistiques du projet

![GitHub last commit](https://img.shields.io/github/last-commit/gunout/monitor-ac)
![GitHub commit activity](https://img.shields.io/github/commit-activity/m/gunout/monitor-ac)
![GitHub issues](https://img.shields.io/github/issues/gunout/monitor-ac)
![GitHub stars](https://img.shields.io/github/stars/gunout/monitor-ac)
![GitHub forks](https://img.shields.io/github/forks/gunout/monitor-ac)

---

<div align="center">

**🇫🇷 Liberté · Égalité · Fraternité**

Fait avec ❤️ pour la transparence de la donnée publique

---

<div align="center">

### 🇫🇷 Gunout · 2026

![Made in France](https://img.shields.io/badge/Made_in-France-002395?style=flat-square&labelColor=FFFFFF&logo=data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHZpZXdCb3g9IjAgMCA5MDAgNjAwIj48cmVjdCB3aWR0aD0iOTAwIiBoZWlnaHQ9IjYwMCIgZmlsbD0iIzAwMjM5NSIvPjxyZWN0IHdpZHRoPSI5MDAiIGhlaWdodD0iNDAwIiB5PSIxMDAiIGZpbGw9IiNmZmYiLz48cmVjdCB3aWR0aD0iOTAwIiBoZWlnaHQ9IjIwMCIgeT0iNDAwIiBmaWxsPSIjZWQyOTM5Ii8+PC9zdmc+)
![GitHub](https://img.shields.io/badge/GitHub-gunout-181717?style=flat-square&logo=github&logoColor=white)
![Year](https://img.shields.io/badge/2026-ED2939?style=flat-square&labelColor=FFFFFF)

<sub>© 2026 <strong>Gunout</strong> — Tous droits réservés.</sub>

</div>

[⬆ Retour en haut](#-monitor-aides-carburant-2026)

</div>
