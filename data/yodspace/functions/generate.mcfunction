summon armor_stand ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Invisible:1b,Tags:["genheight"," 1"]}
summon armor_stand ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Invisible:1b,Tags:["genheight"," 2"]}
summon armor_stand ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Invisible:1b,Tags:["genheight"," 3"]}
summon armor_stand ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Invisible:1b,Tags:["genheight"," 4"]}

tag @e[sort=random,limit=1,tag=genheight,distance=..3] add pick

execute as @e[tag=genheight,tag=1,tag=pick] at @s run setblock ~ ~75 ~ minecraft:mob_spawner{RequiredPlayerRange:1000000,SpawnData:{id:"minecraft:armor_stand",NoGravity:1b,Tags:["placeasteroid"]}} replace
execute as @e[tag=genheight,tag=2,tag=pick] at @s run setblock ~ ~100 ~ minecraft:mob_spawner{RequiredPlayerRange:1000000,SpawnData:{id:"minecraft:armor_stand",NoGravity:1b,Tags:["placeasteroid"]}} replace
execute as @e[tag=genheight,tag=3,tag=pick] at @s run setblock ~ ~125 ~ minecraft:mob_spawner{RequiredPlayerRange:1000000,SpawnData:{id:"minecraft:armor_stand",NoGravity:1b,Tags:["placeasteroid"]}} replace
execute as @e[tag=genheight,tag=4,tag=pick] at @s run setblock ~ ~150 ~ minecraft:mob_spawner{RequiredPlayerRange:1000000,SpawnData:{id:"minecraft:armor_stand",NoGravity:1b,Tags:["placeasteroid"]}} replace
