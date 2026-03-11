setblock 0 59 0 diamond_block
#platzieren der strukturen
#Start
execute in sa:dungeon_editor run place template sa:start -4 61 6
execute in sa:dungeon_editor run setblock -5 60 5 minecraft:structure_block{mode:"SAVE",name:"sa:start",posX:1,posY:1,posZ:1,sizeX:9,sizeY:9,sizeZ:9,showboundingbox:1b}

#Rooms
execute in sa:dungeon_editor run place template sa:blackmarket -33 61 6
execute in sa:dungeon_editor run place template sa:room1 -37 61 33
execute in sa:dungeon_editor run place template sa:room2 -37 61 64
execute in sa:dungeon_editor run place template sa:room3 -46 61 104

execute in sa:dungeon_editor run setblock -34 60 5 minecraft:structure_block{mode:"SAVE",name:"sa:blackmarket",posX:1,posY:1,posZ:1,sizeX:23,sizeY:18,sizeZ:24,showboundingbox:1b}
execute in sa:dungeon_editor run setblock -38 60 32 minecraft:structure_block{mode:"SAVE",name:"sa:room1",posX:1,posY:1,posZ:1,sizeX:27,sizeY:15,sizeZ:27,showboundingbox:1b}
execute in sa:dungeon_editor run setblock -38 60 63 minecraft:structure_block{mode:"SAVE",name:"sa:room2",posX:1,posY:1,posZ:1,sizeX:27,sizeY:15,sizeZ:36,showboundingbox:1b}
execute in sa:dungeon_editor run setblock -47 60 103 minecraft:structure_block{mode:"SAVE",name:"sa:room3",posX:1,posY:1,posZ:1,sizeX:36,sizeY:15,sizeZ:36,showboundingbox:1b}

#Hallways
execute in sa:dungeon_editor run place template sa:hallway1 -77 61 6
execute in sa:dungeon_editor run place template sa:hallway5 -77 61 37
execute in sa:dungeon_editor run place template sa:hallway2 -77 61 68
execute in sa:dungeon_editor run place template sa:hallway3 -85 61 105
execute in sa:dungeon_editor run place template sa:hallway4 -77 61 141

execute in sa:dungeon_editor run setblock -78 60 5 minecraft:structure_block{mode:"SAVE",name:"sa:hallway1",posX:1,posY:1,posZ:1,sizeX:25,sizeY:17,sizeZ:27,showboundingbox:1b}
execute in sa:dungeon_editor run setblock -78 60 36 minecraft:structure_block{mode:"SAVE",name:"sa:hallway5",posX:1,posY:1,posZ:1,sizeX:25,sizeY:17,sizeZ:27,showboundingbox:1b}
execute in sa:dungeon_editor run setblock -78 60 67 minecraft:structure_block{mode:"SAVE",name:"sa:hallway2",posX:1,posY:1,posZ:1,sizeX:22,sizeY:11,sizeZ:33,showboundingbox:1b}
execute in sa:dungeon_editor run setblock -86 60 104 minecraft:structure_block{mode:"SAVE",name:"sa:hallway3",posX:1,posY:1,posZ:1,sizeX:33,sizeY:7,sizeZ:33,showboundingbox:1b}
execute in sa:dungeon_editor run setblock -78 60 140 minecraft:structure_block{mode:"SAVE",name:"sa:hallway4",posX:1,posY:1,posZ:1,sizeX:22,sizeY:7,sizeZ:22,showboundingbox:1b}

#Ends
execute in sa:dungeon_editor run place template sa:end1 8 61 7
execute in sa:dungeon_editor run place template sa:end2 8 61 12
execute in sa:dungeon_editor run place template sa:end3 8 61 17
execute in sa:dungeon_editor run place template sa:end4 8 61 20
execute in sa:dungeon_editor run place template sa:end5 8 61 25

execute in sa:dungeon_editor run setblock 7 60 6 minecraft:structure_block{mode:"SAVE",name:"sa:end1",posX:1,posY:1,posZ:1,sizeX:5,sizeY:6,sizeZ:2,showboundingbox:1b}
execute in sa:dungeon_editor run setblock 7 60 11 minecraft:structure_block{mode:"SAVE",name:"sa:end2",posX:1,posY:1,posZ:1,sizeX:5,sizeY:6,sizeZ:2,showboundingbox:1b}
execute in sa:dungeon_editor run setblock 7 60 16 minecraft:structure_block{mode:"SAVE",name:"sa:end3",posX:1,posY:1,posZ:1,sizeX:5,sizeY:6,sizeZ:2,showboundingbox:1b}
execute in sa:dungeon_editor run setblock 7 60 19 minecraft:structure_block{mode:"SAVE",name:"sa:end4",posX:1,posY:1,posZ:1,sizeX:5,sizeY:6,sizeZ:3,showboundingbox:1b}
execute in sa:dungeon_editor run setblock 7 60 24 minecraft:structure_block{mode:"SAVE",name:"sa:end5",posX:1,posY:1,posZ:1,sizeX:5,sizeY:6,sizeZ:2,showboundingbox:1b}

#Features
execute in sa:dungeon_editor run place template sa:feature1 18 61 7
execute in sa:dungeon_editor run place template sa:feature2 18 61 16
execute in sa:dungeon_editor run place template sa:feature3 18 61 25
execute in sa:dungeon_editor run place template sa:feature4 18 61 34
execute in sa:dungeon_editor run place template sa:feature5 18 61 43

execute in sa:dungeon_editor run setblock 17 60 6 minecraft:structure_block{mode:"SAVE",name:"sa:feature1",posX:1,posY:1,posZ:1,sizeX:7,sizeY:7,sizeZ:7,showboundingbox:1b}
execute in sa:dungeon_editor run setblock 17 60 15 minecraft:structure_block{mode:"SAVE",name:"sa:feature2",posX:1,posY:1,posZ:1,sizeX:7,sizeY:7,sizeZ:7,showboundingbox:1b}
execute in sa:dungeon_editor run setblock 17 60 24 minecraft:structure_block{mode:"SAVE",name:"sa:feature3",posX:1,posY:1,posZ:1,sizeX:7,sizeY:7,sizeZ:7,showboundingbox:1b}
execute in sa:dungeon_editor run setblock 17 60 33 minecraft:structure_block{mode:"SAVE",name:"sa:feature4",posX:1,posY:1,posZ:1,sizeX:7,sizeY:7,sizeZ:7,showboundingbox:1b}
execute in sa:dungeon_editor run setblock 17 60 42 minecraft:structure_block{mode:"SAVE",name:"sa:feature5",posX:1,posY:1,posZ:1,sizeX:7,sizeY:7,sizeZ:7,showboundingbox:1b}


execute in sa:dungeon_editor run fill 18 60 7 24 60 49 packed_mud


execute in sa:dungeon_editor run place template sa:hub/main_island 32 61 9
execute in sa:dungeon_editor run setblock 31 60 8 minecraft:structure_block{mode:"SAVE",name:"sa:hub/main_island",posX:1,posY:1,posZ:1,sizeX:37,sizeY:48,sizeZ:35,showboundingbox:1b}



execute in sa:dungeon_editor run setblock 35 70 64 minecraft:structure_block{mode:"SAVE",name:"sa:hub/ship_1",posX:1,posY:1,posZ:1,sizeX:24,sizeY:44,sizeZ:48,showboundingbox:1b}
execute in sa:dungeon_editor run place template sa:hub/ship_1 36 71 65
execute in sa:dungeon_editor run setblock 35 70 112 minecraft:structure_block{mode:"SAVE",name:"sa:hub/ship_2",posX:1,posY:1,posZ:1,sizeX:24,sizeY:44,sizeZ:40,showboundingbox:1b}
execute in sa:dungeon_editor run place template sa:hub/ship_2 36 71 113

#Hub1
execute in sa:dungeon_editor run setblock 35 70 158 minecraft:structure_block{mode:"SAVE",name:"sa:hub/hub_1",posX:1,posY:1,posZ:1,sizeX:47,sizeY:22,sizeZ:47,showboundingbox:1b,ignoreEntities:false}
execute in sa:dungeon_editor run place template sa:hub/hub_1 36 71 159

execute in sa:dungeon_editor run setblock 84 71 173 minecraft:structure_block{mode:"SAVE",name:"sa:dungeon_room",posX:1,posY:1,posZ:1,sizeX:17,sizeY:15,sizeZ:17,showboundingbox:1b,ignoreEntities:false}
execute in sa:dungeon_editor run place template sa:dungeon_room 85 72 174

execute in sa:dungeon_editor run setblock 105 71 168 minecraft:structure_block{mode:"SAVE",name:"sa:dungeon_1",posX:1,posY:1,posZ:1,sizeX:48,sizeY:14,sizeZ:27,showboundingbox:1b,ignoreEntities:false}
execute in sa:dungeon_editor run place template sa:dungeon_1 106 72 169

execute in sa:dungeon_editor run setblock 153 71 168 minecraft:structure_block{mode:"SAVE",name:"sa:dungeon_2",posX:1,posY:1,posZ:1,sizeX:12,sizeY:14,sizeZ:27,showboundingbox:1b,ignoreEntities:false}
execute in sa:dungeon_editor run place template sa:dungeon_2 154 72 169

#Skillrooms
execute in sa:dungeon_editor run setblock 45 70 240 minecraft:structure_block{mode:"SAVE",name:"sa:hub/skillroom",posX:1,posY:1,posZ:1,sizeX:23,sizeY:14,sizeZ:35,showboundingbox:1b}
execute in sa:dungeon_editor run place template sa:hub/skillroom 46 71 241
#Rooms
execute in sa:dungeon_editor run setblock 50 70 225 minecraft:structure_block{mode:"SAVE",name:"sa:hub/logging",posX:1,posY:1,posZ:1,sizeX:13,sizeY:10,sizeZ:12,showboundingbox:1b}
execute in sa:dungeon_editor run place template sa:hub/logging 51 71 226

execute in sa:dungeon_editor run setblock 30 70 245 minecraft:structure_block{mode:"SAVE",name:"sa:hub/farming",posX:1,posY:1,posZ:1,sizeX:12,sizeY:10,sizeZ:13,showboundingbox:1b}
execute in sa:dungeon_editor run place template sa:hub/farming 31 71 246

execute in sa:dungeon_editor run setblock 30 70 258 minecraft:structure_block{mode:"SAVE",name:"sa:hub/combat",posX:1,posY:1,posZ:1,sizeX:12,sizeY:10,sizeZ:13,showboundingbox:1b}
execute in sa:dungeon_editor run place template sa:hub/combat 31 71 259

execute in sa:dungeon_editor run setblock 71 70 245 minecraft:structure_block{mode:"SAVE",name:"sa:hub/fishing",posX:1,posY:1,posZ:1,sizeX:12,sizeY:10,sizeZ:13,showboundingbox:1b}
execute in sa:dungeon_editor run place template sa:hub/fishing 72 71 246

execute in sa:dungeon_editor run setblock 71 70 257 minecraft:structure_block{mode:"SAVE",name:"sa:hub/mining",posX:1,posY:1,posZ:1,sizeX:12,sizeY:10,sizeZ:13,showboundingbox:1b}
execute in sa:dungeon_editor run place template sa:hub/mining 72 71 258

execute in sa:dungeon_editor run setblock 74 71 214 minecraft:structure_block{mode:"SAVE",name:"sa:hub/fishing_room",posX:1,posY:1,posZ:1,sizeX:25,sizeY:17,sizeZ:25,showboundingbox:1b}
execute in sa:dungeon_editor run place template sa:hub/fishing_room 75 72 215