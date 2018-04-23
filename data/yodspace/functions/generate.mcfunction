summon armor_stand ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Invisible:1b,Tags:["genheight"," 1"]}
summon armor_stand ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Invisible:1b,Tags:["genheight"," 2"]}
summon armor_stand ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Invisible:1b,Tags:["genheight"," 3"]}
summon armor_stand ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Invisible:1b,Tags:["genheight"," 4"]}

tag @e[sort=random,limit=1,tag=genheight,distance=..3] add pick

execute if entity @e[tag=genheight,tag=1,tag=pick] run setblock ~ ~75 ~ minecraft:mob_spawner{RequiredPlayerRange:1000,SpawnData:{id:"minecraft:armor_stand",NoGravity:1b,Tags:["placeasteroid"]}} replace
execute if entity @e[tag=genheight,tag=2,tag=pick] run setblock ~ ~100 ~ minecraft:mob_spawner{RequiredPlayerRange:1000,SpawnData:{id:"minecraft:armor_stand",NoGravity:1b,Tags:["placeasteroid"]}} replace
execute if entity @e[tag=genheight,tag=3,tag=pick] run setblock ~ ~125 ~ minecraft:mob_spawner{RequiredPlayerRange:1000,SpawnData:{id:"minecraft:armor_stand",NoGravity:1b,Tags:["placeasteroid"]}} replace
execute if entity @e[tag=genheight,tag=4,tag=pick] run setblock ~ ~150 ~ minecraft:mob_spawner{RequiredPlayerRange:1000,SpawnData:{id:"minecraft:armor_stand",NoGravity:1b,Tags:["placeasteroid"]}} replace
