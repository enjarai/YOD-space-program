#show init message
execute if entity @e[tag=byenjarai,type=armor_stand] run tellraw @a ["",{"text":"[console] ","color":"aqua"},{"text":"This server is running ","color":"gold"},{"selector":"@e[tag=byenjarai,type=armor_stand]","color":"red"},{"text":" by ","color":"gold"},{"text":"Enjarai","color":"red"}]
kill @e[tag=byenjarai,type=armor_stand]

#detect rocket structure
execute as @e[type=item,nbt={Item:{id:"minecraft:coal",Count:1b}}] at @s if block ~ ~-1 ~ minecraft:red_terracotta if block ~ ~-2 ~ minecraft:iron_block if block ~ ~-3 ~ minecraft:iron_block if block ~ ~3 ~ minecraft:iron_block if block ~ ~4 ~ minecraft:redstone_torch if block ~1 ~2 ~ minecraft:iron_block if block ~1 ~1 ~ minecraft:glass if block ~1 ~ ~ minecraft:red_terracotta if block ~1 ~-1 ~ minecraft:red_terracotta if block ~1 ~-2 ~ minecraft:iron_block if block ~1 ~-3 ~ minecraft:iron_block if block ~2 ~-3 ~ minecraft:iron_block if block ~2 ~-4 ~ minecraft:iron_block if block ~-1 ~2 ~ minecraft:iron_block if block ~-1 ~1 ~ minecraft:red_terracotta if block ~-1 ~ ~ minecraft:red_terracotta if block ~-1 ~-1 ~ minecraft:red_terracotta if block ~-1 ~-2 ~ minecraft:iron_block if block ~-1 ~-3 ~ minecraft:iron_block if block ~-2 ~-3 ~ minecraft:iron_block if block ~-2 ~-4 ~ minecraft:iron_block if block ~ ~2 ~1 minecraft:iron_block if block ~ ~1 ~1 minecraft:red_terracotta if block ~ ~ ~1 minecraft:red_terracotta if block ~ ~-1 ~1 minecraft:red_terracotta if block ~ ~-2 ~1 minecraft:iron_block if block ~ ~-3 ~1 minecraft:iron_block if block ~ ~-3 ~2 minecraft:iron_block if block ~ ~-4 ~2 minecraft:iron_block if block ~ ~2 ~-1 minecraft:iron_block if block ~ ~1 ~-1 minecraft:red_terracotta if block ~ ~ ~-1 minecraft:red_terracotta if block ~ ~-1 ~-1 minecraft:red_terracotta if block ~ ~-2 ~-1 minecraft:iron_block if block ~ ~-3 ~-1 minecraft:iron_block if block ~ ~-3 ~-2 minecraft:iron_block if block ~ ~-4 ~-2 minecraft:iron_block run function yodspace:build_rocket

#make rocket fly
execute as @e[type=armor_stand,tag=rocket] at @s run function yodspace:fly_rocket

#generate space
#/summon armor_stand ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,Tags:["spacegen"]}
execute as @e[tag=spacegen,tag=!completed] at @s positioned ~16 ~ ~ unless entity @e[tag=spacegen,distance=..1] run summon armor_stand ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,Tags:["spacegen"]}
execute as @e[tag=spacegen,tag=!completed] at @s positioned ~ ~ ~16 unless entity @e[tag=spacegen,distance=..1] run summon armor_stand ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,Tags:["spacegen"]}
execute as @e[tag=spacegen,tag=!completed] at @s positioned ~-16 ~ ~ unless entity @e[tag=spacegen,distance=..1] run summon armor_stand ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,Tags:["spacegen"]}
execute as @e[tag=spacegen,tag=!completed] at @s positioned ~ ~ ~-16 unless entity @e[tag=spacegen,distance=..1] run summon armor_stand ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,Tags:["spacegen"]}
execute as @e[tag=spacegen,tag=!completed] at @s run fill ~ 85 ~ ~16 0 ~16 air
execute as @e[tag=spacegen,tag=!completed] at @s positioned ~16 ~ ~ if entity @e[tag=spacegen,distance=..1] positioned ~ ~ ~16 if entity @e[tag=spacegen,distance=..1] positioned ~-16 ~ ~ if entity @e[tag=spacegen,distance=..1] positioned ~ ~ ~-16 if entity @e[tag=spacegen,distance=..1] run tag @s add completed
