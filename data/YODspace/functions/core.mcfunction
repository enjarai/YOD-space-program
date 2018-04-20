#show init message
execute if entity @e[tag=byenjarai,type=armor_stand] run tellraw @a ["",{"text":"[console] ","color":"aqua"},{"text":"This server is running ","color":"gold"},{"selector":"@e[tag=byenjarai,type=armor_stand]","color":"red"},{"text":" by ","color":"gold"},{"text":"Enjarai","color":"red"}]
kill @e[tag=byenjarai,type=armor_stand]
