execute at @s run playsound minecraft:entity.lightning_bolt.thunder master @e[type=player,distance=..64] ~ ~ ~ 1.0 1.0
execute as @e[type=player,distance=..16] run colorfulskies color @s cloud 3c44a9
execute as @e[type=player,distance=..16] run colorfulskies color @s sun 3c44a9
execute as @e[type=player,distance=..16] run colorfulskies color @s moon 3c44a9
execute as @e[type=player,distance=..16] run colorfulskies color @s sunrise 3c44a9
execute as @e[type=player,distance=..16] run colorfulskies color @s sky 3c44a9

gamerule doWeatherCycle true
weather rain
