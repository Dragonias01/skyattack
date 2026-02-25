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
execute in sa:dungeon_editor run setblock -38 60 63 minecraft:structure_block{mode:"SAVE",name:"sa:room2",posX:1,posY:1,posZ:1,sizeX:0,sizeY:0,sizeZ:0,showboundingbox:1b}
execute in sa:dungeon_editor run setblock -47 60 103 minecraft:structure_block{mode:"SAVE",name:"sa:room3",posX:1,posY:1,posZ:1,sizeX:0,sizeY:0,sizeZ:0,showboundingbox:1b}

#Hallways
execute in sa:dungeon_editor run place template sa:hallway1 -77 61 6
execute in sa:dungeon_editor run place template sa:hallway5 -77 61 37
execute in sa:dungeon_editor run place template sa:hallway2 -77 61 68
execute in sa:dungeon_editor run place template sa:hallway3 -85 61 105
execute in sa:dungeon_editor run place template sa:hallway4 -77 61 141

execute in sa:dungeon_editor run setblock -78 60 5 minecraft:structure_block{mode:"SAVE",name:"sa:hallway1",posX:0,posY:0,posZ:0,sizeX:0,sizeY:0,sizeZ:0,showboundingbox:1b}
execute in sa:dungeon_editor run setblock -78 60 36 minecraft:structure_block{mode:"SAVE",name:"sa:hallway5",posX:0,posY:0,posZ:0,sizeX:0,sizeY:0,sizeZ:0,showboundingbox:1b}
execute in sa:dungeon_editor run setblock -78 60 67 minecraft:structure_block{mode:"SAVE",name:"sa:hallway2",posX:0,posY:0,posZ:0,sizeX:0,sizeY:0,sizeZ:0,showboundingbox:1b}
execute in sa:dungeon_editor run setblock -86 60 104 minecraft:structure_block{mode:"SAVE",name:"sa:hallway3",posX:0,posY:0,posZ:0,sizeX:0,sizeY:0,sizeZ:0,showboundingbox:1b}
execute in sa:dungeon_editor run setblock -78 60 140 minecraft:structure_block{mode:"SAVE",name:"sa:hallway4",posX:0,posY:0,posZ:0,sizeX:0,sizeY:0,sizeZ:0,showboundingbox:1b}

#Ends
execute in sa:dungeon_editor run place template sa:end1 8 61 7
execute in sa:dungeon_editor run place template sa:end2 8 61 12
execute in sa:dungeon_editor run place template sa:end3 8 61 17
execute in sa:dungeon_editor run place template sa:end4 8 61 21
execute in sa:dungeon_editor run place template sa:end5 8 61 25

execute in sa:dungeon_editor run setblock 7 60 6 minecraft:structure_block{mode:"SAVE",name:"sa:end1",posX:0,posY:0,posZ:0,sizeX:0,sizeY:0,sizeZ:0,showboundingbox:1b}
execute in sa:dungeon_editor run setblock 7 60 11 minecraft:structure_block{mode:"SAVE",name:"sa:end2",posX:0,posY:0,posZ:0,sizeX:0,sizeY:0,sizeZ:0,showboundingbox:1b}
execute in sa:dungeon_editor run setblock 7 60 16 minecraft:structure_block{mode:"SAVE",name:"sa:end3",posX:0,posY:0,posZ:0,sizeX:0,sizeY:0,sizeZ:0,showboundingbox:1b}
execute in sa:dungeon_editor run setblock 7 60 20 minecraft:structure_block{mode:"SAVE",name:"sa:end4",posX:0,posY:0,posZ:0,sizeX:0,sizeY:0,sizeZ:0,showboundingbox:1b}
execute in sa:dungeon_editor run setblock 7 60 24 minecraft:structure_block{mode:"SAVE",name:"sa:end5",posX:0,posY:0,posZ:0,sizeX:0,sizeY:0,sizeZ:0,showboundingbox:1b}

#Features
execute in sa:dungeon_editor run place template sa:feature1 18 61 7
execute in sa:dungeon_editor run place template sa:feature2 18 61 19
execute in sa:dungeon_editor run place template sa:feature3 18 61 30
execute in sa:dungeon_editor run place template sa:feature4 18 61 42
execute in sa:dungeon_editor run place template sa:feature5 18 61 54

execute in sa:dungeon_editor run setblock 17 60 6 minecraft:structure_block{mode:"SAVE",name:"sa:feature1",posX:0,posY:0,posZ:0,sizeX:0,sizeY:0,sizeZ:0,showboundingbox:1b}
execute in sa:dungeon_editor run setblock 17 60 18 minecraft:structure_block{mode:"SAVE",name:"sa:feature2",posX:0,posY:0,posZ:0,sizeX:0,sizeY:0,sizeZ:0,showboundingbox:1b}
execute in sa:dungeon_editor run setblock 17 60 29 minecraft:structure_block{mode:"SAVE",name:"sa:feature3",posX:0,posY:0,posZ:0,sizeX:0,sizeY:0,sizeZ:0,showboundingbox:1b}
execute in sa:dungeon_editor run setblock 17 60 41 minecraft:structure_block{mode:"SAVE",name:"sa:feature4",posX:0,posY:0,posZ:0,sizeX:0,sizeY:0,sizeZ:0,showboundingbox:1b}
execute in sa:dungeon_editor run setblock 17 60 53 minecraft:structure_block{mode:"SAVE",name:"sa:feature5",posX:0,posY:0,posZ:0,sizeX:0,sizeY:0,sizeZ:0,showboundingbox:1b}


execute in sa:dungeon_editor run fill 26 60 7 18 60 62 packed_mud


execute in sa:dungeon_editor run place template sa:main_island 32 61 9
execute in sa:dungeon_editor run setblock 31 60 8 minecraft:structure_block{mode:"SAVE",name:"sa:main_island",posX:1,posY:1,posZ:1,sizeX:37,sizeY:48,sizeZ:35,showboundingbox:1b}

