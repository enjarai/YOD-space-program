summon armor_stand ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,Tags:["strucgen","1"]}
summon armor_stand ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,Tags:["strucgen","2"]}

tag @e[tag=strucgen,sort=random,limit=1] add pick

execute if entity @e[tag=strucgen,tag=1,tag=pick] run 
execute if entity @e[tag=strucgen,tag=2,tag=pick] run 
