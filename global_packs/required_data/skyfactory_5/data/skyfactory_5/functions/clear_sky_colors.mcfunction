#Sets cloud, sun, and moon to green and disables sunrise colors
execute as @e[type=player,distance=..16] run colorfulskies disablesunrise @s true
execute as @e[type=player,distance=..16] run colorfulskies color @s cloud clear
execute as @e[type=player,distance=..16] run colorfulskies color @s sun clear
execute as @e[type=player,distance=..16] run colorfulskies color @s moon clear
execute as @e[type=player,distance=..16] run colorfulskies color @s sunrise clear
execute as @e[type=player,distance=..16] run colorfulskies color @s sky clear
