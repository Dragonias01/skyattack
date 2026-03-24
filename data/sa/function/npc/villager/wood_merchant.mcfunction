# ============================================================================
# NPC: Wood Merchant (Logging Merchant)
# Datei: sa:npc/villager/wood_merchant
# Version: 1.21.11
# ============================================================================

kill @e[type=villager,tag=wood_merchant]

summon villager 0 99 -64 {\
  Tags:["wood_merchant"],\
  VillagerData:{type:jungle,profession:toolsmith,level:5},\
  CustomName:[{text:"[Wood Merchant]",color:yellow}],\
  Invulnerable:1b,\
  NoAI:1b,\
  NoGravity:1b,\
  OnGround:1b,\
  PersistenceRequired:1b,\
  Silent:1b,\
  Offers:{Recipes:[\
    {maxUses:99999,rewardExp:0b,priceMultiplier:0,demand:0,specialPrice:0,\
      buy:{id:"minecraft:basalt",count:9,components:{item_name:[{text:"compressed_log",italic:false}]}},\
      sell:{id:"minecraft:oak_wood",count:1,components:{\
        custom_name:[{text:"Double Compressed Log",italic:false,color:blue}],\
        lore:[[{text:"Doppelt komprimiertes Holz",italic:false,color:dark_aqua}],"",[{text:Rare,bold:true,italic:false,color:blue}]],\
        item_name:[{text:"double_compressed_log",italic:false}]}}},\
    {maxUses:99999,rewardExp:0b,priceMultiplier:0,demand:0,specialPrice:0,\
      buy:{id:"minecraft:oak_wood",count:25,components:{item_name:[{text:"double_compressed_log",italic:false}]}},\
      buyB:{id:"minecraft:wooden_axe",count:1,components:{item_name:[{text:"element_axe_common",italic:false}]}},\
      sell:{id:"minecraft:stone_axe",count:1,components:{\
        custom_name:[{text:"Element Axe",bold:true,italic:false,color:green}],\
        lore:[{text:" "},{text:"+",extra:[{text:"100",extra:[{text:"% Log Ertrag ",color:gray}],color:green}],color:gray,italic:false},{text:Uncommon,bold:true,italic:false,color:green,underlined:false,strikethrough:false,obfuscated:false}],\
        item_name:[{text:"element_axe_uncommon",italic:false}],\
        unbreakable:{}}}},\
    {maxUses:99999,rewardExp:0b,priceMultiplier:0,demand:0,specialPrice:0,\
      buy:{id:"minecraft:oak_wood",count:12,components:{item_name:[{text:"double_compressed_log",italic:false}]}},\
      sell:{id:"minecraft:potion",count:1,components:{\
        potion_contents:{custom_effects:[{id:"minecraft:strength",amplifier:1,duration:72000}]},\
        custom_name:[{text:"Stärketrank",italic:false,color:blue}],\
        lore:[[{text:"Gewährt Stärke II für eine Stunde",italic:false,color:gray}],"",[{text:Rare,bold:true,italic:false,color:blue}]],\
        item_name:[{text:"strength_potion",italic:false}]}}},\
    {maxUses:99999,rewardExp:0b,priceMultiplier:0,demand:0,specialPrice:0,\
      buy:{id:"minecraft:oak_wood",count:2,components:{item_name:[{text:"double_compressed_log",italic:false}]}},\
      sell:{id:"minecraft:sweet_berries",count:1,components:{\
        custom_name:[{text:"Foraging Fruit",italic:false,color:green}],\
        lore:[[{text:"Erhöht den Foraging XP Gain für eine Stunde",italic:false,color:gray}],"",[{text:Uncommon,bold:true,italic:false,color:green}]],\
        item_name:[{text:"foraging_fruit",italic:false}],\
        food:{nutrition:0,saturation:0,can_always_eat:1b},\
        consumable:{consume_seconds:99999,animation:none,has_consume_particles:0b}}}},\
    {maxUses:99999,rewardExp:0b,priceMultiplier:0,demand:0,specialPrice:0,\
      buy:{id:"minecraft:oak_wood",count:45,components:{item_name:[{text:"double_compressed_log",italic:false}]}},\
      sell:{id:"minecraft:gray_dye",count:1,components:{\
        "minecraft:item_model":"minecraft:nether_star",\
        custom_name:[{text:"XP Katalysator",italic:false,color:dark_purple}],\
        lore:[[{text:"Extrahiert von blöcken Erfahrungs Punkte, sobald er im Inventar Liegt.",italic:false,color:gray}],"",[{text:Epic,bold:true,italic:false,color:dark_purple}]],\
        item_name:[{text:"xp_katalysator",italic:false}]}}},\
    {maxUses:99999,rewardExp:0b,priceMultiplier:0,demand:0,specialPrice:0,\
      buy:{id:"minecraft:oak_wood",count:10,components:{item_name:[{text:"double_compressed_log",italic:false}]}},\
      sell:{id:"minecraft:trial_key",count:1,components:{\
        custom_name:[{text:"Dungeon Key",italic:false,color:gold}],\
        lore:[[{text:"Entschlüsselt Den Ersten Dungeon",italic:false,color:gray}],"",[{text:Legendary,bold:true,italic:false,color:gold}]],\
        item_name:[{text:"dungeon_key",italic:false}]}}}\
  ]}\
}

