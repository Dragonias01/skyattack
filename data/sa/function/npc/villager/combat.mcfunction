# ============================================================================
# NPC: Farming Merchant
# Datei: sa:npc/villager/farming_merchant
# Version: 1.21.11
# ============================================================================
# ACHTUNG: Position anpassen! Platzhalter-Koordinaten – ersetzen.
# Der Merchant spawnt im Farming Raum nahe dem Eingang.
# Verkauft Double Compressed Crop → benötigt für Combat Goal
# ============================================================================

# ── Alten Merchant entfernen (Re-Setup Sicherheit) ────────────────────────
kill @e[type=villager,tag=combat_merchant]

# ── Farming Merchant spawnen ──────────────────────────────────────────────

summon villager -17 99 -35 {Tags:["combat_merchant"],VillagerData:{type:plains,profession:weaponsmith,level:5},Offers:{Recipes:[{maxUses:99999,rewardExp:0b,priceMultiplier:0,demand:0,specialPrice:0,buy:{id:"minecraft:bone_block",count:25,components:{custom_name:[{text:"Double Compressed Mob Mesh",italic:false,color:blue}],lore:[[{text:"Doppelt komprimiertes Mob Mesh",italic:false,color:dark_aqua}],"",[{text:Rare,bold:true,italic:false,color:blue}]],item_name:[{text:double_compressed_mob_mesh,italic:false}]}},buyB:{id:"minecraft:wooden_sword",count:1,components:{custom_name:[{text:"Element Sword",bold:true,italic:false,color:white}],lore:[{text:" "},{text:"+",extra:[{text:"50",extra:[{text:"% Mob Drop Chance ",color:gray}],color:green}],color:gray,italic:false},{text:common,bold:true,italic:false,color:white,underlined:false,strikethrough:false,obfuscated:false}],item_name:[{text:element_sword_common,italic:false}],unbreakable:{}}},sell:{id:"minecraft:stone_sword",count:1,components:{custom_name:[{text:"Element Sword",bold:true,italic:false,color:green}],lore:[{text:" "},{text:"+",extra:[{text:"100",extra:[{text:"% Mob Drop Chance ",color:gray}],color:green}],color:gray,italic:false},{text:Uncommon,bold:true,italic:false,color:green,underlined:false,strikethrough:false,obfuscated:false}],item_name:[{text:element_sword_uncommon,italic:false}],unbreakable:{}}}},{buy:{id:barrier,count:1,components:{custom_name:[{text:WIP,italic:false,color:red}],lore:[[{text:"Work In Progress",italic:false,color:gray}],"",[{text:Temporarily,italic:false,color:red}]]}},sell:{id:barrier,count:1,components:{custom_name:[{text:WIP,italic:false,color:red}],lore:[[{text:"Work In Progress",italic:false,color:gray}],"",[{text:Temporarily,italic:false,color:red}]]}}},{buy:{id:barrier,count:1,components:{custom_name:[{text:WIP,italic:false,color:red}],lore:[[{text:"Work In Progress",italic:false,color:gray}],"",[{text:Temporarily,italic:false,color:red}]]}},sell:{id:barrier,count:1,components:{custom_name:[{text:WIP,italic:false,color:red}],lore:[[{text:"Work In Progress",italic:false,color:gray}],"",[{text:Temporarily,italic:false,color:red}]]}}}]},CustomName:[{"text":"[Combat Merchant]","color":"yellow"}],Invulnerable:1b,NoAI:1b,NoGravity:1b,OnGround:1b,PersistenceRequired:1b,Silent:1b}
