scoreboard objectives add rockettimeout dummy
scoreboard players add @e[tag=rocket] rockettimeout 1

execute if entity @s[scores={rockettimeout=1}] run clone ~2 ~-4 ~2 ~-2 ~4 ~-2 ~-2 ~-3 ~-2 replace move
execute if entity @s[scores={rockettimeout=1}] run execute as @e[distance=..1.5] at @s run tp @s ~ ~1 ~
particle minecraft:flame ~ ~-4 ~ 0.5 0.5 0.5 0 5 force

scoreboard players set @e[tag=rocket,scores={rockettimeout=10..}] rockettimeout 0

execute positioned ~ 200 ~ if entity @s[distance=..2] as @e[distance=..1.5,tag=!rocket] at @s in the_end positioned 5000000 125 5000000 run tp @s ~ ~ ~
execute positioned ~ 200 ~ if entity @s[distance=..2] in the_end positioned 5000000 125 5000000 run setblock ~ ~-4 ~ structure_block{metadata:"",mirror:"NONE",ignoreEntities:1b,powered:0b,seed:0L,author:"enjarai",rotation:"NONE",posX:-2,mode:"LOAD",posY:0,sizeX:5,posZ:-2,integrity:1.0f,showair:0b,name:"yodspace:rocket",id:"minecraft:structure_block",sizeY: 9,sizeZ: 5,showboundingbox: 1b}
execute positioned ~ 200 ~ if entity @s[distance=..2] in the_end positioned 5000000 125 5000000 run setblock ~ ~-3 ~ redstone_block
execute positioned ~ 200 ~ if entity @s[distance=..2] run fill ~2 ~4 ~2 ~-2 ~-4 ~-2 air
execute positioned ~ 200 ~ run kill @s[distance=..2]
