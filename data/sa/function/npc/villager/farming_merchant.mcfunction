# ============================================================================
# NPC: Farming Merchant
# Datei: sa:npc/villager/farming_merchant
# Version: 1.21.11
# ============================================================================

kill @e[type=villager,tag=farming_merchant]

summon villager -17 99 -47 {\
  Tags:["farming_merchant"],\
  VillagerData:{type:plains,profession:farmer,level:5},\
  CustomName:[{text:"[Farming Merchant]",color:yellow}],\
  Invulnerable:1b,\
  NoAI:1b,\
  NoGravity:1b,\
  OnGround:1b,\
  PersistenceRequired:1b,\
  Silent:1b,\
  Offers:{Recipes:[\
    {maxUses:99999,rewardExp:0b,priceMultiplier:0,demand:0,specialPrice:0,\
      buy:{id:"minecraft:green_dye",count:9,components:{item_name:[{text:"biomass",italic:false}]}},\
      sell:{id:"minecraft:dried_kelp_block",count:1,components:{\
        custom_name:[{text:"Compressed Biomass",italic:false,color:blue}],\
        lore:[[{text:"Komprimierte Biomasse",italic:false,color:dark_aqua}],"",[{text:Rare,bold:true,italic:false,color:blue}]],\
        item_name:[{text:"compressed_biomass",italic:false}]}}},\
    {maxUses:99999,rewardExp:0b,priceMultiplier:0,demand:0,specialPrice:0,\
      buy:{id:"minecraft:dried_kelp_block",count:25,components:{item_name:[{text:"compressed_biomass",italic:false}]}},\
      buyB:{id:"minecraft:wooden_hoe",count:1,components:{item_name:[{text:"element_hoe_common",italic:false}]}},\
      sell:{id:"minecraft:stone_hoe",count:1,components:{\
        custom_name:[{text:"Element Hoe",bold:true,italic:false,color:green}],\
        lore:[{text:" "},{text:"+",extra:[{text:"100",extra:[{text:"% Farming Drops ",color:gray}],color:green}],color:gray,italic:false},{text:Uncommon,bold:true,italic:false,color:green,underlined:false,strikethrough:false,obfuscated:false}],\
        item_name:[{text:"element_hoe_uncommon",italic:false}],\
        unbreakable:{}}}},\
    {maxUses:99999,rewardExp:0b,priceMultiplier:0,demand:0,specialPrice:0,\
      buy:{id:"minecraft:tuff",count:32,components:{item_name:[{text:"compressed_stone",italic:false}]}},\
      sell:{id:"minecraft:potion",count:1,components:{\
        potion_contents:{custom_effects:[{id:"minecraft:speed",amplifier:1,duration:72000}]},\
        custom_name:[{text:"Schnelligkeitstrank II",italic:false,color:blue}],\
        lore:[[{text:"Gewährt Schnelligkeit II für eine Stunde",italic:false,color:gray}],"",[{text:Rare,bold:true,italic:false,color:blue}]],\
        item_name:[{text:"speed_potion",italic:false}]}}},\
    {maxUses:99999,rewardExp:0b,priceMultiplier:0,demand:0,specialPrice:0,\
      buy:{id:"minecraft:dried_kelp_block",count:2,components:{item_name:[{text:"compressed_biomass",italic:false}]}},\
      sell:{id:"minecraft:pitcher_pod",count:1,components:{\
        custom_name:[{text:"Farming Fruit",italic:false,color:green}],\
        lore:[[{text:"Erhöht den Farming XP Gain für eine Stunde",italic:false,color:gray}],"",[{text:Uncommon,bold:true,italic:false,color:green}]],\
        item_name:[{text:"farming_fruit",italic:false}],\
        food:{nutrition:0,saturation:0,can_always_eat:1b},\
        consumable:{consume_seconds:99999,animation:none,has_consume_particles:0b}}}},\
    {maxUses:99999,rewardExp:0b,priceMultiplier:0,demand:0,specialPrice:0,\
      buy:{id:"minecraft:dried_kelp_block",count:10,components:{item_name:[{text:"compressed_biomass",italic:false}]}},\
      sell:{id:"minecraft:trial_key",count:1,components:{\
        custom_name:[{text:"Dungeon Key",italic:false,color:gold}],\
        lore:[[{text:"Entschlüsselt Den Ersten Dungeon",italic:false,color:gray}],"",[{text:Legendary,bold:true,italic:false,color:gold}]],\
        item_name:[{text:"dungeon_key",italic:false}]}}}\
  ]}\
}

