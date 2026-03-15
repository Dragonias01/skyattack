# ============================================================================
# NPC: Mining Merchant
# Datei: sa:npc/villager/mining_merchant
# Version: 1.21.11
# ============================================================================
# Trades:
#   1. Compressed Stone      64x              → Double Compressed Stone
#   2. Double Compressed Stone 25x + Element Pickaxe (Common) → Element Pickaxe (Uncommon)
#   3. Compressed Stone      32x              → Night Vision Potion (1 Std, Rare)
#   4. Double Compressed Stone  5x            → Haste II Potion (1 Std, Rare)
#   5. Double Compressed Stone  2x            → Mining Fruit (Uncommon)
#   6. Double Compressed Stone 10x            → Dungeon Key (Legendary)
# ============================================================================

# ── Alten Merchant entfernen (Re-Setup Sicherheit) ────────────────────────
kill @e[type=villager,tag=mining_merchant]

# ── Mining Merchant spawnen ───────────────────────────────────────────────
# POSITION ANPASSEN: 17 99 -35
summon villager 17 99 -35 {\
  Tags:["mining_merchant"],\
  VillagerData:{type:plains,profession:toolsmith,level:5},\
  CustomName:[{text:"[Mining Merchant]",color:yellow}],\
  Invulnerable:1b,\
  NoAI:1b,\
  NoGravity:1b,\
  OnGround:1b,\
  PersistenceRequired:1b,\
  Silent:1b,\
  Offers:{Recipes:[\
    {maxUses:99999,rewardExp:0b,priceMultiplier:0,demand:0,specialPrice:0,\
      buy:{id:"minecraft:tuff",count:9,components:{item_name:[{text:"compressed_stone",italic:false}]}},\
      sell:{id:"minecraft:deepslate",count:1,components:{\
        custom_name:[{text:"Double Compressed Stone",italic:false,color:blue}],\
        lore:[[{text:"Doppelt komprimierter Stein",italic:false,color:dark_aqua}],"",[{text:Rare,bold:true,italic:false,color:blue}]],\
        item_name:[{text:"double_compressed_stone",italic:false}]}}},\
    {maxUses:99999,rewardExp:0b,priceMultiplier:0,demand:0,specialPrice:0,\
      buy:{id:"minecraft:deepslate",count:25,components:{item_name:[{text:"double_compressed_stone",italic:false}]}},\
      buyB:{id:"minecraft:wooden_pickaxe",count:1,components:{item_name:[{text:"element_pickaxe_common",italic:false}]}},\
      sell:{id:"minecraft:stone_pickaxe",count:1,components:{\
        custom_name:[{text:"Element Pickaxe",bold:true,italic:false,color:green}],\
        lore:[{text:" "},{text:"+",extra:[{text:"100",extra:[{text:"% Mining Drops ",color:gray}],color:green}],color:gray,italic:false},{text:Uncommon,bold:true,italic:false,color:green,underlined:false,strikethrough:false,obfuscated:false}],\
        item_name:[{text:"element_pickaxe_uncommon",italic:false}],\
        unbreakable:{}}}},\
    {maxUses:99999,rewardExp:0b,priceMultiplier:0,demand:0,specialPrice:0,\
      buy:{id:"minecraft:tuff",count:32,components:{item_name:[{text:"compressed_stone",italic:false}]}},\
      sell:{id:"minecraft:potion",count:1,components:{\
        potion_contents:{custom_effects:[{id:"minecraft:night_vision",amplifier:0,duration:72000}]},\
        custom_name:[{text:"Nachtsichttrank",italic:false,color:blue}],\
        lore:[[{text:"Gewährt Nachtsicht für eine Stunde",italic:false,color:gray}],"",[{text:Rare,bold:true,italic:false,color:blue}]],\
        item_name:[{text:"night_vision_potion",italic:false}]}}},\
    {maxUses:99999,rewardExp:0b,priceMultiplier:0,demand:0,specialPrice:0,\
      buy:{id:"minecraft:deepslate",count:5,components:{item_name:[{text:"double_compressed_stone",italic:false}]}},\
      sell:{id:"minecraft:potion",count:1,components:{\
        potion_contents:{custom_effects:[{id:"minecraft:haste",amplifier:1,duration:72000}]},\
        custom_name:[{text:"Haste-Trank II",italic:false,color:blue}],\
        lore:[[{text:"Gewährt Haste II für eine Stunde",italic:false,color:gray}],"",[{text:Rare,bold:true,italic:false,color:blue}]],\
        item_name:[{text:"haste_2_potion",italic:false}]}}},\
    {maxUses:99999,rewardExp:0b,priceMultiplier:0,demand:0,specialPrice:0,\
      buy:{id:"minecraft:deepslate",count:2,components:{item_name:[{text:"double_compressed_stone",italic:false}]}},\
      sell:{id:"minecraft:glow_berries",count:1,components:{\
        custom_name:[{text:"Mining Fruit",italic:false,color:green}],\
        lore:[[{text:"Erhöht den Mining XP Gain für eine Stunde",italic:false,color:gray}],"",[{text:Uncommon,bold:true,italic:false,color:green}]],\
        item_name:[{text:"mining_fruit",italic:false}]}}},\
    {maxUses:99999,rewardExp:0b,priceMultiplier:0,demand:0,specialPrice:0,\
      buy:{id:"minecraft:deepslate",count:10,components:{item_name:[{text:"double_compressed_stone",italic:false}]}},\
      sell:{id:"minecraft:trial_key",count:1,components:{\
        custom_name:[{text:"Dungeon Key",italic:false,color:gold}],\
        lore:[[{text:"Entschlüsselt Den Ersten Dungeon",italic:false,color:gray}],"",[{text:Legendary,bold:true,italic:false,color:gold}]],\
        item_name:[{text:"dungeon_key",italic:false}]}}}\
  ]}\
}