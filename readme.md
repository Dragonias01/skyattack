# Sky Attack — Skyblock Datapack

**Minecraft Java Edition 1.21.11 | Pack Format 94**

Sky Attack ist ein Skyblock-Datapack, das klassisches Skyblock-Gameplay mit tiefen Progressionssystemen, eigenen Skill-Trees, Custom-Items und einem Hub-Zielsystem kombiniert. Spieler starten auf einer kleinen Insel im Void und kämpfen sich durch mehrere miteinander verknüpfte Ressourcen- und Fortschrittssysteme.

---

## Inhalt

- [Weltaufbau](#weltaufbau)
- [Spielstart & Inseln](#spielstart--inseln)
- [Skill-Systeme](#skill-systeme)
- [Custom Items & Compressed Items](#custom-items--compressed-items)
- [Villager-Merchant-Trades](#villager-merchant-trades)
- [Hub & Goal-System](#hub--goal-system)
- [Loot-Systeme](#loot-systeme)
- [Custom Rezepte](#custom-rezepte)
- [Dungeons (WIP)](#dungeons-wip)
- [Gamerules](#gamerules)
- [Bekannte Bugs & offene Punkte](#bekannte-bugs--offene-punkte)
- [Technische Details](#technische-details)

---

## Weltaufbau

Overworld und Nether sind vollständig leer — kein Terrain, keine Strukturen, nur Void. Biome existieren jedoch in beiden Dimensionen und beeinflussen Wetter, Lichtverhalten sowie Mob-Spawning und Fishing-Lootpools. Der Hub-Bereich befindet sich in der Dimension `sa:hub`.

---

## Spielstart & Inseln

Beim ersten Join wird einem Spieler automatisch eine freie Insel zugewiesen. Es gibt 8 Inseln, kreisförmig mit Radius 250 Blöcke angeordnet:

| Insel | X    | Z    | Richtung  |
|-------|------|------|-----------|
| 1     | 0    | -250 | Nord      |
| 2     | 177  | -177 | Nord-Ost  |
| 3     | 250  | 0    | Ost       |
| 4     | 177  | 177  | Süd-Ost   |
| 5     | 0    | 250  | Süd       |
| 6     | -177 | 177  | Süd-West  |
| 7     | -250 | 0    | West      |
| 8     | -177 | -177 | Nord-West |

Benachbarte Inseln sind ca. 191 Blöcke voneinander entfernt und damit gut sichtbar.

---

## Skill-Systeme

Es gibt fünf Skill-Tracks, die alle nach demselben Muster funktionieren: Aktionen geben XP, XP füllen eine Goal-Leiste, bei Erreichen des Goals steigt das Level. Höhere Level erhöhen die Drop-Chancen passiv.

| Skill   | Trigger-Aktion              | Zugehöriges Tool   |
|---------|-----------------------------|--------------------|
| Mining  | Stein / Compressed Stone abbauen | Element Pickaxe |
| Logging | Eiche fällen                | Element Axe        |
| Farming | Kartoffeln ernten           | Element Hoe        |
| Combat  | Mobs töten (Zombie, Creeper, Skeleton, Spider, Witch, Enderman) | Element Sword |
| Fishing | Angeln                      | Element Rod        |

**Skalierung der Level-Goals:**
- Level 1–9: Feste Werte
- Level 10–19: ×1,5 pro Level
- Level 20–49: ×1,1 pro Level
- Level 50+: ×1,01 pro Level
- Max Level: Serverseitig konfigurierbar

---

## Custom Items & Compressed Items

Compressed Items sind die zentrale Währung des Progressionssystems. Sie entstehen durch Crafting oder Merchant-Trades und werden für Hub-Goals und Upgrades benötigt.

| Item                    | Basis-Material (Vanilla) | Seltenheit |
|-------------------------|--------------------------|------------|
| Compressed Stone        | `tuff`                   | Uncommon   |
| Double Compressed Stone | `deepslate`              | Rare       |
| Compressed Log          | `basalt`                 | Uncommon   |
| Double Compressed Log   | `oak_wood`               | Rare       |
| Biomass                 | `green_dye`              | Uncommon   |
| Compressed Biomass      | `dried_kelp_block`       | Rare       |
| Fish Mesh               | `frogspawn`              | Uncommon   |
| Compressed Fish         | `wet_sponge`             | Rare       |
| Mob Mesh                | `spider_eye` *(o.ä.)*    | Uncommon   |
| Compressed Mob Mesh     | `zombie_head`            | Rare       |
| Mob Essence             | *(WIP)*                  | —          |

**Element Tools** — upgradbare Werkzeuge, die den Drop-Multiplikator des jeweiligen Skills erhöhen:

| Tool              | Stufen                                  |
|-------------------|-----------------------------------------|
| Element Pickaxe   | Common → Uncommon → Rare → Epic → Legendary → Mythic |
| Element Axe       | Common → Uncommon → ...                |
| Element Hoe       | Common → Uncommon → ...                |
| Element Sword     | Common → Uncommon → ...                |
| Element Rod       | Common → Uncommon → ...                |

Blueprints für Element Tools droppen beim Skillen (Drop-Chance abhängig vom Level und ausgerüstetem Tool).

---

## Villager-Merchant-Trades

Fünf spezialisierte Merchant-Villager befinden sich im Hub. Alle haben `NoAI`, `NoGravity`, `Invulnerable` und unbegrenzte Trades.

### Mining Merchant
Position: `17 99 -35`

| Kaufe                   | Preis             | Erhalte                   |
|-------------------------|-------------------|---------------------------|
| Double Compressed Stone | 64 Compressed Stone | 1× Double Compressed Stone |
| Element Pickaxe (Common) | 25 DCS + Common Pickaxe | Element Pickaxe (Uncommon) |
| Night Vision Potion     | 32 Compressed Stone | Potion (1 Std)            |
| Haste II Potion         | 5 DCS             | Potion (1 Std)            |
| Mining Fruit            | 2 DCS             | Mining Fruit (Uncommon)   |
| Dungeon Key             | 10 DCS            | Dungeon Key (Legendary)   |

### Wood Merchant (Logging)
Position: `0 99 -64`

| Kaufe                  | Preis             | Erhalte                    |
|------------------------|-------------------|----------------------------|
| Double Compressed Log  | 64 Compressed Log | 1× Double Compressed Log   |
| Element Axe (Uncommon) | 25 DCL + Common Axe | Element Axe (Uncommon)   |
| Strength II Potion     | 12 DCL            | Potion (1 Std)             |
| Foraging Fruit         | 2 DCL             | Foraging Fruit (Uncommon)  |
| XP Katalysator         | 45 DCL            | XP Katalysator (Legendary) |
| Dungeon Key            | 10 DCL            | Dungeon Key (Legendary)    |

### Farming Merchant
Position: `-17 99 -47`

| Kaufe                    | Preis               | Erhalte                      |
|--------------------------|---------------------|------------------------------|
| Compressed Biomass       | 64 Biomass          | 1× Compressed Biomass        |
| Element Hoe (Uncommon)   | 25 CB + Common Hoe  | Element Hoe (Uncommon)       |
| Speed II Potion          | 32 Compressed Stone | Potion (1 Std)               |
| Farming Fruit            | 2 CB                | Farming Fruit (Uncommon)     |
| Dungeon Key              | 10 CB               | Dungeon Key (Legendary)      |

### Fishing Merchant
Position: `17 99 -47`

| Kaufe                   | Preis                  | Erhalte                    |
|-------------------------|------------------------|----------------------------|
| Compressed Fish         | 64 Fish Mesh           | 1× Compressed Fish         |
| Element Rod (Uncommon)  | 25 CF + Common Rod     | Element Rod (Uncommon)     |
| Glückstrank             | 2 CF                   | Luck Potion (1 Std)        |
| WIP                     | 10 CF                  | WIP                        |

### Combat Merchant
Position: `-17 99 -35`

| Kaufe                        | Preis               | Erhalte                     |
|------------------------------|---------------------|-----------------------------|
| Element Sword (Uncommon)     | 25 CMM + Common Sword | Element Sword (Uncommon)  |
| Resistance II Potion         | 32 CMM              | Potion (1 Std)              |
| Combat Fruit                 | 2 CMM               | Combat Fruit (Uncommon)     |
| Dungeon Key                  | 10 CMM              | Dungeon Key (Legendary)     |

---

## Hub & Goal-System

Der Hub enthält ein physisches Goal-System: Interaktive Ziel-Entities, an denen Spieler Items abgeben, um Server-weit Fortschritte freizuschalten. Goals haben Abhängigkeiten untereinander.

**Freischalt-Reihenfolge:**

```
Levelbaum Goal (Start)
└── Skill Rooms Goal
    └── Mining Goal
        └── Fishing Goal
            ├── Fishing Pond Goal
            └── Farming Goal
                └── Combat Goal
    └── Dungeon Goal (via DungeonMaster)
```

Weitere Goals (Schmied, Techniker) sind implementiert aber noch nicht vollständig aktiviert.

---

## Loot-Systeme

### Fishing
Das Angelsystem wurde umfangreich überarbeitet:
- **Junk-Pool**: Enthält u.a. Bambus (biom-abhängig mit höherer Chance in Jungle-Biomen), Kohle, Flint
- **Creature-Pool**: Beim Angeln kann statt einem Item ein Mob gespawnt werden (biom-abhängig, z.B. Guardian, Slime)
- **Treasure & Fish** Pools wurden ebenfalls erweitert

### Mob Drops
Ausgewählte Mobs haben angepasste Loot-Tables, um im Void-Skyblock benötigte Ressourcen zugänglich zu machen.

### Bonus Loot Tables
Skill-basierte Bonus-Drops nutzen `minecraft:bonus/`-Loot-Tables (stone, oak_log, potato, etc.).

---

## Custom Rezepte

Eine Reihe von Crafting-Rezepten macht normalerweise unerreichbare Skyblock-Ressourcen zugänglich. Darunter:

- **Magma Block**: Campfire-Cooking aus `coal_block` (36.000 Ticks)
- **Compressed Items**: 3×3 Crafting-Rezepte (z.B. 9× Biomass → Compressed Biomass)
- Weitere Rezepte für u.a. Moss-Chain und Gras-Chain

> ⚠️ **Bekannte blockierte Chains (ausstehende Fixes):**
> - `bamboo_block` hat noch keine Akquisitionsquelle → `moss_block` und `grass_block` blocked
> - `coal_block` hat noch keine Drop-Quelle → `magma_block` blocked
> - `lava_bucket` Advancement benötigt `magma_block` im Inventar → gesamte Lava-Progression blockiert

---

## Dungeons (WIP)

Das Dungeon-System ist in Entwicklung. Geplant:
- Dungeon Master NPC im Hub mit Dialog
- Dungeon 1: Vollständiger Durchgang + Boss-Arena + Boss-Mechaniken
- Freischaltung über Dungeon Key (von Merchants erhältlich)

---

## Gamerules

| Regel              | Wert    |
|--------------------|---------|
| keepInventory      | `true`  |
| difficulty         | Hard    |
| randomTickSpeed    | 15      |
| mobGriefing        | `false` |

---

## Bekannte Bugs & offene Punkte

- `compressed_fish.json` Crafting-Rezept: `item_name` hat einen Leerzeichen-Fehler (`"compressed_ender pearl"` statt `"compressed_fish"`) — Output-Item wird von keinem anderen System erkannt
- Loot-Table-Fixes für `bamboo_block` und `coal` stehen noch aus (blockieren 4 Rezept-Chains)
- Fishing Pond: Biom und Loot-Table noch nicht implementiert
- Loot-Boxen: Nicht implementiert
- XP-Baum: Nicht implementiert
- Beim Tod: Halbierung der XP noch nicht implementiert
- Aufhol-System für zurückliegende Spieler fehlt
- Wiki-Dialoge: Mehrere Seiten noch auf WIP-Platzhalter

---

## Technische Details

```
Namespace:     sa
Pack Format:   94 (min: [94, 1], max: 94)
Version:       Minecraft Java 1.21.11
Dimension:     sa:hub (Hub-Welt)
Tick-Funktion: sa:tick
Load-Funktion: sa:load
```

**Scoreboard-Übersicht (Auszug):**

| Objective          | Typ   | Beschreibung                    |
|--------------------|-------|---------------------------------|
| `fishing_xp`       | dummy | Fishing XP pro Spieler          |
| `fishing_lvl`      | dummy | Fishing Level pro Spieler       |
| `mining_xp/lvl`    | dummy | Mining XP/Level pro Spieler     |
| `logging_xp/lvl`   | dummy | Logging XP/Level pro Spieler    |
| `farming_xp/lvl`   | dummy | Farming XP/Level pro Spieler    |
| `combat_xp/lvl`    | dummy | Combat XP/Level pro Spieler     |
| `hub_*`            | dummy | Hub-Goal Fortschritte (server)  |
| `island`           | dummy | Insel-ID pro Spieler            |
| `menue_open`       | dummy | Menü-Status pro Spieler         |