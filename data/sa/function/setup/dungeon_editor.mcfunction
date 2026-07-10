setblock 0 59 0 diamond_block
#platzieren der strukturen
#Start
place template sa:dungeon/floor1/rooms/start -4 61 6
setblock -5 60 5 minecraft:structure_block{mode:"SAVE",name:"sa:dungeon/floor1/rooms/start",posX:1,posY:1,posZ:1,sizeX:9,sizeY:9,sizeZ:9, showboundingbox:1b,ignoreEntities:false}

#Rooms
place template sa:dungeon/floor1/rooms/blackmarket -33 61 6
place template sa:dungeon/floor1/rooms/room1 -37 61 33
place template sa:dungeon/floor1/rooms/room2 -37 61 64
place template sa:dungeon/floor1/rooms/room3 -46 61 104
place template sa:dungeon/floor1/rooms/room4 -46 61 143

setblock -34 60 5 minecraft:structure_block{mode:"SAVE",name:"sa:dungeon/floor1/rooms/blackmarket",posX:1,posY:1,posZ:1,sizeX:23,sizeY:18,sizeZ:24, showboundingbox:1b,ignoreEntities:false}
setblock -38 60 32 minecraft:structure_block{mode:"SAVE",name:"sa:dungeon/floor1/rooms/room1",posX:1,posY:1,posZ:1,sizeX:27,sizeY:15,sizeZ:27, showboundingbox:1b,ignoreEntities:false}
setblock -38 60 63 minecraft:structure_block{mode:"SAVE",name:"sa:dungeon/floor1/rooms/room2",posX:1,posY:1,posZ:1,sizeX:27,sizeY:15,sizeZ:36, showboundingbox:1b,ignoreEntities:false}
setblock -47 60 103 minecraft:structure_block{mode:"SAVE",name:"sa:dungeon/floor1/rooms/room3",posX:1,posY:1,posZ:1,sizeX:36,sizeY:17,sizeZ:37,showboundingbox:1b,ignoreEntities:false}
setblock -47 60 142 minecraft:structure_block{mode:"SAVE",name:"sa:dungeon/floor1/rooms/room4",posX:1,posY:1,posZ:1,sizeX:47,sizeY:47,sizeZ:47,showboundingbox:1b,ignoreEntities:false}


place template sa:dungeon/floor1/arena/boss_arena_1 -127 61 6
setblock -128 60 5 minecraft:structure_block{mode:"SAVE",name:"sa:dungeon/floor1/arena/boss_arena_1",posX:1,posY:1,posZ:1,sizeX:47,sizeY:26,sizeZ:47,showboundingbox:1b,ignoreEntities:false}


#Hallways
place template sa:dungeon/floor1/hallways/hallway1 -77 61 6
place template sa:dungeon/floor1/hallways/hallway5 -77 61 37
place template sa:dungeon/floor1/hallways/hallway2 -77 61 68
place template sa:dungeon/floor1/hallways/hallway3 -85 61 105
place template sa:dungeon/floor1/hallways/hallway4 -80 61 141

setblock -78 60 5 minecraft:structure_block{mode:"SAVE",name:"sa:dungeon/floor1/hallways/hallway1",posX:1,posY:1,posZ:1,sizeX:25,sizeY:17,sizeZ:27, showboundingbox:1b,ignoreEntities:false}
setblock -78 60 36 minecraft:structure_block{mode:"SAVE",name:"sa:dungeon/floor1/hallways/hallway5",posX:1,posY:1,posZ:1,sizeX:25,sizeY:17,sizeZ:27, showboundingbox:1b,ignoreEntities:false}
setblock -78 60 67 minecraft:structure_block{mode:"SAVE",name:"sa:dungeon/floor1/hallways/hallway2",posX:1,posY:1,posZ:1,sizeX:22,sizeY:11,sizeZ:33, showboundingbox:1b,ignoreEntities:false}
setblock -86 60 104 minecraft:structure_block{mode:"SAVE",name:"sa:dungeon/floor1/hallways/hallway3",posX:1,posY:1,posZ:1,sizeX:33,sizeY:7,sizeZ:33, showboundingbox:1b,ignoreEntities:false}
setblock -81 60 140 minecraft:structure_block{mode:"SAVE",name:"sa:dungeon/floor1/hallways/hallway4",posX:1,posY:1,posZ:1,sizeX:25,sizeY:7,sizeZ:26, showboundingbox:1b,ignoreEntities:false}
#button für die Interaktion mit den Dungeons
summon minecraft:interaction -23 79 166 {Tags:["button","enter_boss_room"],width:1.1f,height:1.1f}


#Ends
place template sa:dungeon/floor1/ends/end1 8 61 7
place template sa:dungeon/floor1/ends/end2 8 61 12
place template sa:dungeon/floor1/ends/end3 8 61 17
place template sa:dungeon/floor1/ends/end4 8 61 20
place template sa:dungeon/floor1/ends/end5 8 61 25

setblock 7 60 6 minecraft:structure_block{mode:"SAVE",name:"sa:dungeon/floor1/ends/end1",posX:1,posY:1,posZ:1,sizeX:5,sizeY:6,sizeZ:2, showboundingbox:1b,ignoreEntities:false}
setblock 7 60 11 minecraft:structure_block{mode:"SAVE",name:"sa:dungeon/floor1/ends/end2",posX:1,posY:1,posZ:1,sizeX:5,sizeY:6,sizeZ:2, showboundingbox:1b,ignoreEntities:false}
setblock 7 60 16 minecraft:structure_block{mode:"SAVE",name:"sa:dungeon/floor1/ends/end3",posX:1,posY:1,posZ:1,sizeX:5,sizeY:6,sizeZ:2, showboundingbox:1b,ignoreEntities:false}
setblock 7 60 19 minecraft:structure_block{mode:"SAVE",name:"sa:dungeon/floor1/ends/end4",posX:1,posY:1,posZ:1,sizeX:5,sizeY:6,sizeZ:3, showboundingbox:1b,ignoreEntities:false}
setblock 7 60 24 minecraft:structure_block{mode:"SAVE",name:"sa:dungeon/floor1/ends/end5",posX:1,posY:1,posZ:1,sizeX:5,sizeY:6,sizeZ:2, showboundingbox:1b,ignoreEntities:false}

#Features
place template sa:dungeon/floor1/features/feature1 18 61 7
place template sa:dungeon/floor1/features/feature2 18 61 16
place template sa:dungeon/floor1/features/feature3 18 61 25
place template sa:dungeon/floor1/features/feature4 18 61 34
place template sa:dungeon/floor1/features/feature5 18 61 43

setblock 17 60 6 minecraft:structure_block{mode:"SAVE",name:"sa:dungeon/floor1/features/feature1",posX:1,posY:1,posZ:1,sizeX:5,sizeY:3,sizeZ:5, showboundingbox:1b,ignoreEntities:false}
setblock 17 60 15 minecraft:structure_block{mode:"SAVE",name:"sa:dungeon/floor1/features/feature2",posX:1,posY:1,posZ:1,sizeX:5,sizeY:3,sizeZ:5, showboundingbox:1b,ignoreEntities:false}
setblock 17 60 24 minecraft:structure_block{mode:"SAVE",name:"sa:dungeon/floor1/features/feature3",posX:1,posY:1,posZ:1,sizeX:5,sizeY:3,sizeZ:5, showboundingbox:1b,ignoreEntities:false}
setblock 17 60 33 minecraft:structure_block{mode:"SAVE",name:"sa:dungeon/floor1/features/feature4",posX:1,posY:1,posZ:1,sizeX:5,sizeY:3,sizeZ:5, showboundingbox:1b,ignoreEntities:false}
setblock 17 60 42 minecraft:structure_block{mode:"SAVE",name:"sa:dungeon/floor1/features/feature5",posX:1,posY:1,posZ:1,sizeX:5,sizeY:3,sizeZ:5, showboundingbox:1b,ignoreEntities:false}


fill 18 60 7 24 60 49 packed_mud


place template sa:hub/main_island 32 61 9
setblock 31 60 8 minecraft:structure_block{mode:"SAVE",name:"sa:hub/main_island",posX:1,posY:1,posZ:1,sizeX:37,sizeY:48,sizeZ:35, showboundingbox:1b,ignoreEntities:false}



setblock 35 70 64 minecraft:structure_block{mode:"SAVE",name:"sa:hub/ship_1",posX:1,posY:1,posZ:1,sizeX:24,sizeY:44,sizeZ:48, showboundingbox:1b,ignoreEntities:false}
place template sa:hub/ship_1 36 71 65
setblock 35 70 112 minecraft:structure_block{mode:"SAVE",name:"sa:hub/ship_2",posX:1,posY:1,posZ:1,sizeX:24,sizeY:44,sizeZ:40, showboundingbox:1b,ignoreEntities:false}
place template sa:hub/ship_2 36 71 113

#Hub1
setblock 35 70 158 minecraft:structure_block{mode:"SAVE",name:"sa:hub/hub_1",posX:1,posY:1,posZ:1,sizeX:47,sizeY:23,sizeZ:47,showboundingbox:1b,ignoreEntities:false}
place template sa:hub/hub_1 36 71 159

setblock 84 71 173 minecraft:structure_block{mode:"SAVE",name:"sa:dungeon_room",posX:1,posY:1,posZ:1,sizeX:17,sizeY:15,sizeZ:17,showboundingbox:1b,ignoreEntities:false}
place template sa:dungeon_room 85 72 174

setblock 105 71 168 minecraft:structure_block{mode:"SAVE",name:"sa:dungeon_1",posX:1,posY:1,posZ:1,sizeX:48,sizeY:14,sizeZ:27,showboundingbox:1b,ignoreEntities:false}
place template sa:dungeon_1 106 72 169

setblock 153 71 168 minecraft:structure_block{mode:"SAVE",name:"sa:dungeon_2",posX:1,posY:1,posZ:1,sizeX:12,sizeY:14,sizeZ:27,showboundingbox:1b,ignoreEntities:false}
place template sa:dungeon_2 154 72 169

#Skillrooms
setblock 45 70 240 minecraft:structure_block{mode:"SAVE",name:"sa:hub/skillroom",posX:1,posY:1,posZ:1,sizeX:23,sizeY:14,sizeZ:35, showboundingbox:1b,ignoreEntities:false}
place template sa:hub/skillroom 46 71 241
#Rooms
setblock 50 70 225 minecraft:structure_block{mode:"SAVE",name:"sa:hub/logging",posX:1,posY:1,posZ:1,sizeX:13,sizeY:10,sizeZ:12, showboundingbox:1b,ignoreEntities:false}
place template sa:hub/logging 51 71 226

setblock 30 70 245 minecraft:structure_block{mode:"SAVE",name:"sa:hub/farming",posX:1,posY:1,posZ:1,sizeX:12,sizeY:10,sizeZ:13, showboundingbox:1b,ignoreEntities:false}
place template sa:hub/farming 31 71 246

setblock 30 70 258 minecraft:structure_block{mode:"SAVE",name:"sa:hub/combat",posX:1,posY:1,posZ:1,sizeX:12,sizeY:10,sizeZ:13, showboundingbox:1b,ignoreEntities:false}
place template sa:hub/combat 31 71 259

setblock 71 70 245 minecraft:structure_block{mode:"SAVE",name:"sa:hub/fishing",posX:1,posY:1,posZ:1,sizeX:12,sizeY:10,sizeZ:13, showboundingbox:1b,ignoreEntities:false}
place template sa:hub/fishing 72 71 246

setblock 71 70 257 minecraft:structure_block{mode:"SAVE",name:"sa:hub/mining",posX:1,posY:1,posZ:1,sizeX:12,sizeY:10,sizeZ:13, showboundingbox:1b,ignoreEntities:false}
place template sa:hub/mining 72 71 258

setblock 74 71 214 minecraft:structure_block{mode:"SAVE",name:"sa:hub/fishing_room",posX:1,posY:1,posZ:1,sizeX:25,sizeY:17,sizeZ:25,showboundingbox:1b,ignoreEntities:false}
place template sa:hub/fishing_room 75 72 215


# ============================================================================
# Floor 2
# ============================================================================

#Start
place template sa:dungeon/floor2/rooms/start -142 61 23
setblock -143 60 22 minecraft:structure_block{mode:"SAVE",name:"sa:dungeon/floor2/rooms/start",posX:1,posY:1,posZ:1,sizeX:9,sizeY:9,sizeZ:13, showboundingbox:1b,ignoreEntities:false}

#Boss Arena
place template sa:dungeon/floor2/arena/boss_arena_1 -135 61 61
setblock -136 60 60 minecraft:structure_block{mode:"SAVE",name:"sa:dungeon/floor2/arena/boss_arena_1",posX:1,posY:1,posZ:1,sizeX:47,sizeY:26,sizeZ:47,showboundingbox:1b,ignoreEntities:false}

# Type 1 Rooms
    place template sa:dungeon/floor2/rooms/type_1/1 -197 61 6
    place template sa:dungeon/floor2/rooms/type_1/2 -254 61 6
    place template sa:dungeon/floor2/rooms/type_1/3 -311 61 6
    #structure blocks
    setblock -198 60 5 minecraft:structure_block{mode:"SAVE",name:"sa:dungeon/floor2/rooms/type_1/1",posX:1,posY:1,posZ:1,sizeX:47,sizeY:47,sizeZ:47,showboundingbox:1b,ignoreEntities:false}
    setblock -255 60 5 minecraft:structure_block{mode:"SAVE",name:"sa:dungeon/floor2/rooms/type_1/2",posX:1,posY:1,posZ:1,sizeX:47,sizeY:47,sizeZ:47,showboundingbox:1b,ignoreEntities:false}
    setblock -312 60 5 minecraft:structure_block{mode:"SAVE",name:"sa:dungeon/floor2/rooms/type_1/3",posX:1,posY:1,posZ:1,sizeX:47,sizeY:47,sizeZ:47,showboundingbox:1b,ignoreEntities:false}

# Type 2 Rooms
    place template sa:dungeon/floor2/rooms/type_2/1 -197 61 57
    place template sa:dungeon/floor2/rooms/type_2/2 -254 61 57
    place template sa:dungeon/floor2/rooms/type_2/3 -311 61 57
    #structure blocks
    setblock -198 60 56 minecraft:structure_block{mode:"SAVE",name:"sa:dungeon/floor2/rooms/type_2/1",posX:1,posY:1,posZ:1,sizeX:47,sizeY:47,sizeZ:47,showboundingbox:1b,ignoreEntities:false}
    setblock -255 60 56 minecraft:structure_block{mode:"SAVE",name:"sa:dungeon/floor2/rooms/type_2/2",posX:1,posY:1,posZ:1,sizeX:47,sizeY:47,sizeZ:47,showboundingbox:1b,ignoreEntities:false}
    setblock -312 60 56 minecraft:structure_block{mode:"SAVE",name:"sa:dungeon/floor2/rooms/type_2/3",posX:1,posY:1,posZ:1,sizeX:47,sizeY:47,sizeZ:47,showboundingbox:1b,ignoreEntities:false}

# Type 3 Rooms
    place template sa:dungeon/floor2/rooms/type_3/1 -197 61 108
    place template sa:dungeon/floor2/rooms/type_3/2 -254 61 108
    place template sa:dungeon/floor2/rooms/type_3/3 -311 61 108
    #structure blocks
    setblock -198 60 107 minecraft:structure_block{mode:"SAVE",name:"sa:dungeon/floor2/rooms/type_3/1",posX:1,posY:1,posZ:1,sizeX:47,sizeY:47,sizeZ:47,showboundingbox:1b,ignoreEntities:false}
    setblock -255 60 107 minecraft:structure_block{mode:"SAVE",name:"sa:dungeon/floor2/rooms/type_3/2",posX:1,posY:1,posZ:1,sizeX:47,sizeY:47,sizeZ:47,showboundingbox:1b,ignoreEntities:false}
    setblock -312 60 107 minecraft:structure_block{mode:"SAVE",name:"sa:dungeon/floor2/rooms/type_3/3",posX:1,posY:1,posZ:1,sizeX:47,sizeY:47,sizeZ:47,showboundingbox:1b,ignoreEntities:false}

# Type 4 Rooms
    place template sa:dungeon/floor2/rooms/type_4/1 -197 61 158
    place template sa:dungeon/floor2/rooms/type_4/2 -254 61 158
    place template sa:dungeon/floor2/rooms/type_4/3 -311 61 158
    #structure blocks
    setblock -198 60 157 minecraft:structure_block{mode:"SAVE",name:"sa:dungeon/floor2/rooms/type_4/1",posX:1,posY:1,posZ:1,sizeX:47,sizeY:47,sizeZ:47,showboundingbox:1b,ignoreEntities:false}
    setblock -255 60 157 minecraft:structure_block{mode:"SAVE",name:"sa:dungeon/floor2/rooms/type_4/2",posX:1,posY:1,posZ:1,sizeX:47,sizeY:47,sizeZ:47,showboundingbox:1b,ignoreEntities:false}
    setblock -312 60 157 minecraft:structure_block{mode:"SAVE",name:"sa:dungeon/floor2/rooms/type_4/3",posX:1,posY:1,posZ:1,sizeX:47,sizeY:47,sizeZ:47,showboundingbox:1b,ignoreEntities:false}

# Type 5 Rooms
    place template sa:dungeon/floor2/rooms/type_5/1 -197 61 209
    place template sa:dungeon/floor2/rooms/type_5/2 -254 61 209
    place template sa:dungeon/floor2/rooms/type_5/3 -311 61 209
    #structure blocks
    setblock -198 60 208 minecraft:structure_block{mode:"SAVE",name:"sa:dungeon/floor2/rooms/type_5/1",posX:1,posY:1,posZ:1,sizeX:47,sizeY:47,sizeZ:47,showboundingbox:1b,ignoreEntities:false}
    setblock -255 60 208 minecraft:structure_block{mode:"SAVE",name:"sa:dungeon/floor2/rooms/type_5/2",posX:1,posY:1,posZ:1,sizeX:47,sizeY:47,sizeZ:47,showboundingbox:1b,ignoreEntities:false}
    setblock -312 60 208 minecraft:structure_block{mode:"SAVE",name:"sa:dungeon/floor2/rooms/type_5/3",posX:1,posY:1,posZ:1,sizeX:47,sizeY:47,sizeZ:47,showboundingbox:1b,ignoreEntities:false}
