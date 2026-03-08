# ============================================================================
# NPC: Fishing Merchant
# Datei: sa:npc/villager/fishing_merchant
# Version: 1.21.11
# ============================================================================
# ACHTUNG: Position anpassen! Platzhalter-Koordinaten – ersetzen.
# Der Merchant spawnt im Fishing Raum nahe dem Eingang.
# Verkauft Double Compressed Fish → benötigt für Farming Goal & Fishing Pond Goal
# ============================================================================

# ── Alten Merchant entfernen (Re-Setup Sicherheit) ────────────────────────
kill @e[type=villager,tag=fishing_merchant]

# ── Fishing Merchant spawnen ──────────────────────────────────────────────
# POSITION ANPASSEN: Koordinaten durch richtige Position ersetzen
summon villager 17 99 -47 {Tags:["fishing_merchant"],VillagerData:{type:swamp,profession:fisherman,level:5},Offers:{Recipes:[{maxUses:99999,rewardExp:0b,priceMultiplier:0,demand:0,specialPrice:0,buy:{id:"minecraft:salmon",count:64,components:{custom_name:[{text:"Compressed Fish",bold:true,italic:false,color:green}],lore:[[{text:"Komprimierter Fisch",italic:false,color:gray}],"",[{text:Uncommon,bold:true,italic:false,color:green}]],item_name:[{text:compressed_fish,italic:false}]}},sell:{id:"minecraft:paper",count:1,components:{custom_name:[{text:"Double Compressed Fish",italic:false,color:blue}],lore:[[{text:"Doppelt komprimierter Fisch",italic:false,color:dark_aqua}],"",[{text:Rare,bold:true,italic:false,color:blue}]],item_name:[{text:double_compressed_fish,italic:false}]}}},{buy:{id:barrier,count:1,components:{custom_name:[{text:WIP,italic:false,color:red}],lore:[[{text:"Work In Progress",italic:false,color:gray}],"",[{text:Temporarily,italic:false,color:red}]]}},sell:{id:barrier,count:1,components:{custom_name:[{text:WIP,italic:false,color:red}],lore:[[{text:"Work In Progress",italic:false,color:gray}],"",[{text:Temporarily,italic:false,color:red}]]}}}]},CustomName:[{"text":"[Fishing Merchant]","color":"yellow"}],Invulnerable:1b,NoAI:1b,NoGravity:1b,OnGround:1b,PersistenceRequired:1b,Silent:1b}
