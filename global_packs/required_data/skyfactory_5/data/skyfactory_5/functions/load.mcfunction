#Loads in tree structure, sets gamerules
scoreboard objectives add spawn_tree_generated dummy
execute unless score spawn_tree spawn_tree_generated matches 0.. run gamerule spawnRadius 0
execute unless score spawn_tree spawn_tree_generated matches 0.. run function skyfactory_5:spawn_structure
execute unless score spawn_tree spawn_tree_generated matches 0.. run gamerule doWeatherCycle false
execute unless score spawn_tree spawn_tree_generated matches 0.. run gamerule doInsomnia false
execute unless score spawn_tree spawn_tree_generated matches 0.. run gamerule doTraderSpawning false
execute unless score spawn_tree spawn_tree_generated matches 0.. run gamerule doPatrolSpawning false
execute unless score spawn_tree spawn_tree_generated matches 0.. run function skyfactory_5:spawn_tree_score_update
#Don't worry about this >.>
scoreboard objectives add potato_dimension_fill dummy

#Loads teams for color glow effect
team add sf5_white_team
team modify sf5_white_team color white

team add sf5_orange_team
team modify sf5_orange_team color gold

team add sf5_magenta_team
team modify sf5_magenta_team color light_purple

team add sf5_light_blue_team
team modify sf5_light_blue_team color aqua

team add sf5_yellow_team
team modify sf5_yellow_team color yellow

team add sf5_lime_team
team modify sf5_lime_team color green

team add sf5_pink_team
team modify sf5_pink_team color light_purple

team add sf5_gray_team
team modify sf5_gray_team color dark_gray

team add sf5_light_gray_team
team modify sf5_light_gray_team color gray

team add sf5_cyan_team
team modify sf5_cyan_team color dark_aqua

team add sf5_purple_team
team modify sf5_purple_team color dark_purple

team add sf5_blue_team
team modify sf5_blue_team color blue

team add sf5_brown_team
team modify sf5_brown_team color dark_red

team add sf5_green_team
team modify sf5_green_team color dark_green

team add sf5_red_team
team modify sf5_red_team color red

team add sf5_black_team
team modify sf5_black_team color black
