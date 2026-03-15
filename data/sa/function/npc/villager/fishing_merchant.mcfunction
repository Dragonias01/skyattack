# ============================================================================
# NPC: Fishing Merchant
# Datei: sa:npc/villager/fishing_merchant
# Version: 1.21.11
# ============================================================================
# Trades:
#   1. Fish Mesh            64x              → Compressed Fish (wet_sponge, Rare)
#   2. Compressed Fish      25x + Element Rod (Common) → Element Rod (Uncommon)
#   3. Compressed Fish       2x              → Potion of Luck (1 Std, Rare)
#   4. Compressed Fish      10x              → Placeholder (WIP)
#   5. Compressed Fish      10x              → Placeholder (WIP)
# ============================================================================
# HINWEIS: Fish Mesh item_name = "fish_mesh" – bitte gegen deinen Code-Stand prüfen!
#          Compressed Fish = wet_sponge (neues Item, Rare)
# ============================================================================

# ── Alten Merchant entfernen (Re-Setup Sicherheit) ────────────────────────
kill @e[type=villager,tag=fishing_merchant]

# ── Fishing Merchant spawnen ──────────────────────────────────────────────
# POSITION ANPASSEN: 17 99 -47
summon villager 17 99 -47 {\
  Tags:["fishing_merchant"],\
  VillagerData:{type:swamp,profession:fisherman,level:5},\
  CustomName:[{text:"[Fishing Merchant]",color:yellow}],\
  Invulnerable:1b,\
  NoAI:1b,\
  NoGravity:1b,\
  OnGround:1b,\
  PersistenceRequired:1b,\
  Silent:1b,\
  Offers:{Recipes:[\
    {maxUses:99999,rewardExp:0b,priceMultiplier:0,demand:0,specialPrice:0,\
      buy:{id:"minecraft:frogspawn",count:9,components:{item_name:[{text:"fish_mesh",italic:false}]}},\
      sell:{id:"minecraft:wet_sponge",count:1,components:{\
        custom_name:[{text:"Compressed Fish",bold:true,italic:false,color:blue}],\
        lore:[[{text:"Doppelt komprimierter Fisch",italic:false,color:dark_aqua}],"",[{text:Rare,bold:true,italic:false,color:blue}]],\
        item_name:[{text:"compressed_fish",italic:false}]}}},\
    {maxUses:99999,rewardExp:0b,priceMultiplier:0,demand:0,specialPrice:0,\
      buy:{id:"minecraft:wet_sponge",count:25,components:{item_name:[{text:"compressed_fish",italic:false}]}},\
      buyB:{id:"minecraft:fishing_rod",count:1,components:{item_name:[{text:"element_rod_common",italic:false}]}},\
      sell:{id:"minecraft:fishing_rod",count:1,components:{\
        custom_name:[{text:"Element Rod",bold:true,italic:false,color:green}],\
        lore:[{text:" "},{text:"+",extra:[{text:"100",extra:[{text:"% Fishing Ertrag ",color:gray}],color:green}],color:gray,italic:false},{text:Uncommon,bold:true,italic:false,color:green,underlined:false,strikethrough:false,obfuscated:false}],\
        item_name:[{text:"element_rod_uncommon",italic:false}],\
        unbreakable:{}}}},\
    {maxUses:99999,rewardExp:0b,priceMultiplier:0,demand:0,specialPrice:0,\
      buy:{id:"minecraft:wet_sponge",count:2,components:{item_name:[{text:"compressed_fish",italic:false}]}},\
      sell:{id:"minecraft:potion",count:1,components:{\
        potion_contents:{custom_effects:[{id:"minecraft:luck",amplifier:0,duration:72000}]},\
        custom_name:[{text:"Glückstrank",italic:false,color:blue}],\
        lore:[[{text:"Gewährt Glück für eine Stunde",italic:false,color:gray}],"",[{text:Rare,bold:true,italic:false,color:blue}]],\
        item_name:[{text:"luck_potion",italic:false}]}}},\
    {maxUses:99999,rewardExp:0b,priceMultiplier:0,demand:0,specialPrice:0,\
      buy:{id:"minecraft:wet_sponge",count:10,components:{item_name:[{text:"compressed_fish",italic:false}]}},\
      sell:{id:"minecraft:barrier",count:1,components:{\
        custom_name:[{text:"WIP",italic:false,color:red}],\
        lore:[[{text:"Work In Progress",italic:false,color:gray}],"",[{text:Temporarily,italic:false,color:red}]]}}},\
    {maxUses:99999,rewardExp:0b,priceMultiplier:0,demand:0,specialPrice:0,\
      buy:{id:"minecraft:wet_sponge",count:10,components:{item_name:[{text:"compressed_fish",italic:false}]}},\
      sell:{id:"minecraft:barrier",count:1,components:{\
        custom_name:[{text:"WIP",italic:false,color:red}],\
        lore:[[{text:"Work In Progress",italic:false,color:gray}],"",[{text:Temporarily,italic:false,color:red}]]}}}\
  ]}\
}