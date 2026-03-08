# ============================================================================
# NPC: Mining Merchant
# Datei: sa:npc/villager/mining_merchant
# Version: 1.21.11
# ============================================================================
# ACHTUNG: Position anpassen! Platzhalter-Koordinaten – ersetzen.
# Der Merchant spawnt im Mining Raum nahe dem Eingang.
# ============================================================================

# ── Alten Merchant entfernen (Re-Setup Sicherheit) ────────────────────────
kill @e[type=villager,tag=mining_merchant]

# ── Mining Merchant spawnen ───────────────────────────────────────────────
# POSITION ANPASSEN: Koordinaten durch richtige Position ersetzen
# summon villager X 99 Z { ... }
summon villager 17 99 -35 {Tags:["mining_merchant"],VillagerData:{type:plains,profession:toolsmith,level:5},Offers:{Recipes:[{maxUses:99999,rewardExp:0b,priceMultiplier:0,demand:0,specialPrice:0,buy:{id:"minecraft:tuff",count:64,components:{custom_name:[{text:"Compressed Stone",bold:true,italic:false,color:green}],lore:[[{text:"Komprimierter Stein",italic:false,color:gray}],"",[{text:Uncommon,bold:true,italic:false,color:green}]],item_name:[{text:compressed_stone,italic:false}]}},sell:{id:"minecraft:deepslate",count:1,components:{custom_name:[{text:"Double Compressed Stone",italic:false,color:blue}],lore:[[{text:"Doppelt komprimierter Stein",italic:false,color:dark_aqua}],"",[{text:Rare,bold:true,italic:false,color:blue}]],item_name:[{text:double_compressed_stone,italic:false}]}}},{buy:{id:barrier,count:1,components:{custom_name:[{text:WIP,italic:false,color:red}],lore:[[{text:"Work In Progress",italic:false,color:gray}],"",[{text:Temporarily,italic:false,color:red}]]}},sell:{id:barrier,count:1,components:{custom_name:[{text:WIP,italic:false,color:red}],lore:[[{text:"Work In Progress",italic:false,color:gray}],"",[{text:Temporarily,italic:false,color:red}]]}}},{buy:{id:barrier,count:1,components:{custom_name:[{text:WIP,italic:false,color:red}],lore:[[{text:"Work In Progress",italic:false,color:gray}],"",[{text:Temporarily,italic:false,color:red}]]}},sell:{id:barrier,count:1,components:{custom_name:[{text:WIP,italic:false,color:red}],lore:[[{text:"Work In Progress",italic:false,color:gray}],"",[{text:Temporarily,italic:false,color:red}]]}}}]},CustomName:[{"text":"[Mining Merchant]","color":"yellow"}],Invulnerable:1b,NoAI:1b,NoGravity:1b,OnGround:1b,PersistenceRequired:1b,Silent:1b}
