scoreboard objectives add rockettimeout dummy
scoreboard players add @e[tag=rocket] rockettimeout 1

execute if entity @s[scores={rockettimeout=1}] run clone ~2 ~-4 ~2 ~-2 ~4 ~-2 ~-2 ~-3 ~-2 replace move
execute if entity @s[scores={rockettimeout=1}] run execute as @e[distance=..1.5] at @s run tp @s ~ ~1 ~
particle minecraft:flame ~ ~-4 ~ 0.5 0.5 0.5 0 5 force

scoreboard players set @e[tag=rocket,scores={rockettimeout=10..}] rockettimeout 0

execute positioned ~ 200 ~ run kill @s[distance=2..]
