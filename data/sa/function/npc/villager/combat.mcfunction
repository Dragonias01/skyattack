# ============================================================================
# NPC: Combat Merchant
# Datei: sa:npc/villager/combat
# Version: 1.21.11
# ============================================================================

kill @e[type=villager,tag=combat_merchant]


summon villager -17 99 -35 {\
Tags:["combat_merchant"],\
VillagerData:{type:plains,profession:weaponsmith,level:5},\
CustomName:[{text:"[Combat Merchant]",color:yellow}],\
Invulnerable:1b,\
NoAI:1b,\
NoGravity:1b,\
OnGround:1b,\
PersistenceRequired:1b,\
Silent:1b,\
Offers:{Recipes:[\
{maxUses:99999,rewardExp:0b,priceMultiplier:0,demand:0,specialPrice:0,\
buy:{id:"minecraft:zombie_head",count:25,components:{item_name:[{text:"compressed_mob_mesh",italic:false}]}},\
buyB:{id:"minecraft:wooden_sword",count:1,components:{item_name:[{text:"element_sword_common",italic:false}]}},\
sell:{id:"minecraft:stone_sword",count:1,components:{\
custom_name:[{text:"Element Sword",bold:true,italic:false,color:green}],\
lore:[{text:" "},{text:"+",extra:[{text:"100",extra:[{text:"% Mob Drop Chance ",color:gray}],color:green}],color:gray,italic:false},{text:Uncommon,bold:true,italic:false,color:green,underlined:false,strikethrough:false,obfuscated:false}],\
item_name:[{text:"element_sword_uncommon",italic:false}],\
unbreakable:{}}}},\
{maxUses:99999,rewardExp:0b,priceMultiplier:0,demand:0,specialPrice:0,\
buy:{id:"minecraft:zombie_head",count:32,components:{item_name:[{text:"compressed_mob_mesh",italic:false}]}},\
sell:{id:"minecraft:potion",count:1,components:{\
potion_contents:{custom_effects:[{id:"minecraft:resistance",amplifier:1,duration:72000}]},\
custom_name:[{text:"Resistance II",italic:false,color:blue}],\
lore:[[{text:"Provides Resistance II for one hour",italic:false,color:gray}],"",[{text:Rare,bold:true,italic:false,color:blue}]],\
item_name:[{text:"resistance_2_potion",italic:false}]}}},\
{maxUses:99999,rewardExp:0b,priceMultiplier:0,demand:0,specialPrice:0,\
buy:{id:"minecraft:zombie_head",count:2,components:{item_name:[{text:"compressed_mob_mesh",italic:false}]}},\
sell:{id:"minecraft:glow_berries",count:1,components:{\
custom_name:[{text:"Combat Fruit",italic:false,color:green}],\
lore:[[{text:"Increases Combat XP gain for one hour",italic:false,color:gray}],"",[{text:Uncommon,bold:true,italic:false,color:green}]],\
item_name:[{text:"combat_fruit",italic:false}],\
food:{nutrition:0,saturation:0,can_always_eat:1b},\
consumable:{consume_seconds:99999,animation:none,has_consume_particles:0b}}}},\
{maxUses:99999,rewardExp:0b,priceMultiplier:0,demand:0,specialPrice:0,\
buy:{id:"minecraft:zombie_head",count:10,components:{item_name:[{text:"compressed_mob_mesh",italic:false}]}},\
sell:{id:"minecraft:trial_key",count:1,components:{\
custom_name:[{text:"Dungeon Key",italic:false,color:gold}],\
lore:[[{text:"Opens the First Dungeon",italic:false,color:gray}],"",[{text:Legendary,bold:true,italic:false,color:gold}]],\
item_name:[{text:"dungeon_key",italic:false}]}}}\
]}\
}

