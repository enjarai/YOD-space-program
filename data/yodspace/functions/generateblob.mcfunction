#summon armor_stand ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,Tags:["strucgen","1"]}
#summon armor_stand ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,Tags:["strucgen","2"]}

#tag @e[tag=strucgen,sort=random,limit=1] add pick

#execute if entity @e[tag=strucgen,tag=1,tag=pick] run setblock ~ ~125 ~ structure_block{metadata:"",mirror:"NONE",ignoreEntities:1b,powered:0b,seed:0L,author:"enjarai",rotation:"NONE",posX:-2,mode:"LOAD",posY:0,posZ:-2,integrity:1.0f,showair:0b,name:"yodspace:asteroids/asteroid1",id:"minecraft:structure_block",showboundingbox: 1b}
#execute if entity @e[tag=strucgen,tag=2,tag=pick] run setblock ~ ~125 ~ structure_block{metadata:"",mirror:"NONE",ignoreEntities:1b,powered:0b,seed:0L,author:"enjarai",rotation:"NONE",posX:-2,mode:"LOAD",posY:0,posZ:-2,integrity:1.0f,showair:0b,name:"yodspace:asteroids/asteroid2",id:"minecraft:structure_block",showboundingbox: 1b}

#kill @e[tag=strucgen]
#setblock ~ ~126 ~ redstone_block

execute as @e[tag=test1] at @s run fill ~5 ~5 ~5 ~-5 ~-5 ~-5 glass replace air
execute as @e[tag=test1] at @s run summon tnt ~ ~ ~
execute as @e[tag=test1] at @s run summon armor_stand ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,Tags:["asteroidcrea"]}
