kill @e[type=villager,tag=fishing_merchant]

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
buy:{id:"minecraft:frogspawn",count:9,components:{item_name:[{text:"fish_mesh",italic:false}],custom_name:{italic:0b,text:"Fish Mesh",bold:1b,color:"green"},lore:[{italic:0b,text:"Too many...",bold:0b,color:"gray"},"",{italic:0b,text:"Uncommon",bold:1b,color:"green"}]}},\
sell:{id:"minecraft:wet_sponge",count:1,components:{custom_name:[{text:"Compressed Fish",bold:true,italic:false,color:blue}],lore:[[{text:"Double compressed fish",italic:false,color:dark_aqua}],"",[{text:Rare,bold:true,italic:false,color:blue}]],item_name:[{text:"compressed_fish",italic:false}]}}},\
{maxUses:99999,rewardExp:0b,priceMultiplier:0,demand:0,specialPrice:0,\
buy:{id:"minecraft:wet_sponge",count:25,components:{custom_name:[{text:"Compressed Fish",bold:true,italic:false,color:blue}],lore:[[{text:"Double compressed fish",italic:false,color:dark_aqua}],"",[{text:Rare,bold:true,italic:false,color:blue}]],item_name:[{text:"compressed_fish",italic:false}]}},\
buyB:{id:"minecraft:fishing_rod",count:1,components:{item_name:[{text:"element_rod_common",italic:false}]}},\
sell:{id:"minecraft:fishing_rod",count:1,components:{custom_name:[{text:"Element Rod",bold:true,italic:false,color:green}],lore:[{text:" "},{text:"+",extra:[{text:"100",extra:[{text:"% Fishing Yield ",color:gray}],color:green}],color:gray,italic:false},{text:Uncommon,bold:true,italic:false,color:green,underlined:false,strikethrough:false,obfuscated:false}],item_name:[{text:"element_rod_uncommon",italic:false}],unbreakable:{}}}},\
{maxUses:99999,rewardExp:0b,priceMultiplier:0,demand:0,specialPrice:0,\
buy:{id:"minecraft:wet_sponge",count:12,components:{custom_name:[{text:"Compressed Fish",bold:true,italic:false,color:blue}],lore:[[{text:"Double compressed fish",italic:false,color:dark_aqua}],"",[{text:Rare,bold:true,italic:false,color:blue}]],item_name:[{text:"compressed_fish",italic:false}]}},\
sell:{id:"minecraft:potion",count:1,components:{potion_contents:{custom_effects:[{id:"minecraft:luck",amplifier:0,duration:72000}]},custom_name:[{text:"Luck Potion",italic:false,color:blue}],lore:[[{text:"Grants Luck for one hour",italic:false,color:gray}],"",[{text:Rare,bold:true,italic:false,color:blue}]],item_name:[{text:"luck_potion",italic:false}]}}},\
{maxUses:99999,rewardExp:0b,priceMultiplier:0,demand:0,specialPrice:0,\
buy:{id:"minecraft:wet_sponge",count:2,components:{custom_name:[{text:"Compressed Fish",bold:true,italic:false,color:blue}],lore:[[{text:"Double compressed fish",italic:false,color:dark_aqua}],"",[{text:Rare,bold:true,italic:false,color:blue}]],item_name:[{text:"compressed_fish",italic:false}]}},\
sell:{id:"minecraft:gray_dye",count:1,components:{"minecraft:item_model":"minecraft:wind_charge",custom_name:[{text:"Fishing Fruit",italic:false,color:green}],lore:[[{text:"Increases Fishing XP gain for one hour",italic:false,color:gray}],"",[{text:Uncommon,bold:true,italic:false,color:green}]],item_name:[{text:"fishing_fruit",italic:false}],food:{nutrition:0,saturation:0,can_always_eat:1b},consumable:{consume_seconds:99999,animation:none,has_consume_particles:0b}}}},{maxUses:99999,rewardExp:0b,priceMultiplier:0,demand:0,specialPrice:0,\
buy:{id:"minecraft:wet_sponge",count:10,components:{custom_name:[{text:"Compressed Fish",bold:true,italic:false,color:blue}],lore:[[{text:"Double compressed fish",italic:false,color:dark_aqua}],"",[{text:Rare,bold:true,italic:false,color:blue}]],item_name:[{text:"compressed_fish",italic:false}]}},\
sell:{id:"minecraft:trial_key",count:1,components:{"minecraft:item_model":"minecraft:nautilus_shell",custom_name:[{text:"Dungeon Key",italic:false,color:gold}],lore:[[{text:"Opens the Second Dungeon Floor",italic:false,color:gray}],"",[{text:Legendary,bold:true,italic:false,color:gold}]],item_name:[{text:"dungeon_key",italic:false}]}}},\
{maxUses:99999,rewardExp:0b,priceMultiplier:0,demand:0,specialPrice:0,\
buy:{id:"minecraft:wet_sponge",count:10,components:{custom_name:[{text:"Compressed Fish",bold:true,italic:false,color:blue}],lore:[[{text:"Double compressed fish",italic:false,color:dark_aqua}],"",[{text:Rare,bold:true,italic:false,color:blue}]],item_name:[{text:"compressed_fish",italic:false}]}},\
sell:{id:"minecraft:barrier",count:1,components:{custom_name:[{text:"WIP",italic:false,color:red}],lore:[[{text:"Work In Progress",italic:false,color:gray}],"",[{text:Temporarily,italic:false,color:red}]]}}}\
]}\
}
    