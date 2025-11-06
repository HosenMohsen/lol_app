//
//  ReadMe.Md
//  lol_app
//
//  Created by HOSEN Mohsen on 06/11/2025.
//

# 🎮 League of Legends Explorer

League of Legends Explorer est une application iOS permettant de consulter les champions du jeu *League of Legends*, d’afficher leurs détails, leurs skins et d’explorer facilement leur univers.

Ce projet utilise SwiftUI et une architecture claire et évolutive.  
Un *Design System* sous forme de Swift Package permet de centraliser toutes les ressources visuelles et composants UI réutilisables.

---

## ✨ Fonctionnalités

-  Affichage de la liste des champions
-  Barre de recherche avec filtrage en temps réel
- Aperçu d’une carte champion avec splash art
-  Page de détails du champion (nom, rôle, lore…)
- Carrousel animé des skins du champion *(en cours / à venir)*
-  Design system modulaire pour un style cohérent

---

##  Architecture

Le projet est divisé en deux modules :

LeagueOfLegendsExplorer (App)
├─ UI Screens (ChampionView, ChampionDetailsView…)
├─ ViewModels
└─ Network Layer
 DesignSystem (Swift Package)
├─ Colors
├─ Images
├─ Components UI (Cards, SearchBarView…)


Resources/champions.json


Structure simplifiée :

```json
{
  "id": "Aatrox",
  "name": "Aatrox",
  "blurb": "...",
  "image": { "url": "https://..." },
  "skins": [
    { "name": "Base", "url": "https://..." }
  ]
}
```

Pour le cloner : git clone git@github.com:HosenMohsen/lol_app.git


Pour ce projet, je pense avoir la note de 15/20 car la majorité des demandes ont été respectées. De plus, ce projet est visuellement bien fait. Le petit moins, c'est peut-être comment j'ai organisé le projet, je ne suis pas sûr si ce que j'ai fait est vraiment correct.
