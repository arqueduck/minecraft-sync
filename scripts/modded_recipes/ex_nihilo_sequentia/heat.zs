import crafttweaker.api.predicate.StatePropertiesPredicate;
import mods.exnihilosequentia.HeatRecipe;

val properties = StatePropertiesPredicate.create().property("lit", true).build();
val any_properties = StatePropertiesPredicate.any();
val blazeTrophyProperties = StatePropertiesPredicate.create().property("entity", "minecraft:blaze").property("VariantID", 0).build();

// <recipetype:exnihilosequentia:heat>.addRecipe("example", 1, <block:minecraft:campfire>, properties);



// Level 1
<recipetype:exnihilosequentia:heat>.addRecipe("glow_stick_heat_test", 1, <block:glow_sticks:glow_stick_white>, any_properties);

// Level 2
<recipetype:exnihilosequentia:heat>.addRecipe("black_candle_heat",2,<block:minecraft:black_candle>, properties);
<recipetype:exnihilosequentia:heat>.addRecipe("blue_candle_heat",2,<block:minecraft:blue_candle>, properties);
<recipetype:exnihilosequentia:heat>.addRecipe("brown_candle_heat",2,<block:minecraft:brown_candle>, properties);
<recipetype:exnihilosequentia:heat>.addRecipe("candle_heat",2,<block:minecraft:candle>, properties);
<recipetype:exnihilosequentia:heat>.addRecipe("cyan_candle_heat",2,<block:minecraft:cyan_candle>, properties);
<recipetype:exnihilosequentia:heat>.addRecipe("gray_candle_heat",2,<block:minecraft:gray_candle>, properties);
<recipetype:exnihilosequentia:heat>.addRecipe("green_candle_heat",2,<block:minecraft:green_candle>, properties);
<recipetype:exnihilosequentia:heat>.addRecipe("light_blue_candle_heat",2,<block:minecraft:light_blue_candle>, properties);
<recipetype:exnihilosequentia:heat>.addRecipe("light_gray_candle_heat",2,<block:minecraft:light_gray_candle>, properties);
<recipetype:exnihilosequentia:heat>.addRecipe("lime_candle_heat",2,<block:minecraft:lime_candle>, properties);
<recipetype:exnihilosequentia:heat>.addRecipe("magenta_candle_heat",2,<block:minecraft:magenta_candle>, properties);
<recipetype:exnihilosequentia:heat>.addRecipe("orange_candle_heat",2,<block:minecraft:orange_candle>, properties);
<recipetype:exnihilosequentia:heat>.addRecipe("pink_candle_heat",2,<block:minecraft:pink_candle>, properties);
<recipetype:exnihilosequentia:heat>.addRecipe("purple_candle_heat",2,<block:minecraft:purple_candle>, properties);
<recipetype:exnihilosequentia:heat>.addRecipe("red_candle_heat",2,<block:minecraft:red_candle>, properties);
<recipetype:exnihilosequentia:heat>.addRecipe("torchflower_heat",2,<block:minecraft:torchflower>, any_properties);
<recipetype:exnihilosequentia:heat>.addRecipe("white_candle_heat",2,<block:minecraft:white_candle>, properties);
<recipetype:exnihilosequentia:heat>.addRecipe("yellow_candle_heat",2,<block:minecraft:yellow_candle>, properties);
<recipetype:exnihilosequentia:heat>.addRecipe("candle_holder_heat",2,<block:supplementaries:candle_holder>, properties);
<recipetype:exnihilosequentia:heat>.addRecipe("candle_holder_black_heat",2,<block:supplementaries:candle_holder_black>, properties);
<recipetype:exnihilosequentia:heat>.addRecipe("candle_holder_blue_heat",2,<block:supplementaries:candle_holder_blue>, properties);
<recipetype:exnihilosequentia:heat>.addRecipe("candle_holder_brown_heat",2,<block:supplementaries:candle_holder_brown>, properties);
<recipetype:exnihilosequentia:heat>.addRecipe("candle_holder_cyan_heat",2,<block:supplementaries:candle_holder_cyan>, properties);
<recipetype:exnihilosequentia:heat>.addRecipe("candle_holder_gray_heat",2,<block:supplementaries:candle_holder_gray>, properties);
<recipetype:exnihilosequentia:heat>.addRecipe("candle_holder_green_heat",2,<block:supplementaries:candle_holder_green>, properties);
<recipetype:exnihilosequentia:heat>.addRecipe("candle_holder_light_blue_heat",2,<block:supplementaries:candle_holder_light_blue>, properties);
<recipetype:exnihilosequentia:heat>.addRecipe("candle_holder_light_gray_heat",2,<block:supplementaries:candle_holder_light_gray>, properties);
<recipetype:exnihilosequentia:heat>.addRecipe("candle_holder_lime_heat",2,<block:supplementaries:candle_holder_lime>, properties);
<recipetype:exnihilosequentia:heat>.addRecipe("candle_holder_magenta_heat",2,<block:supplementaries:candle_holder_magenta>, properties);
<recipetype:exnihilosequentia:heat>.addRecipe("candle_holder_orange_heat",2,<block:supplementaries:candle_holder_orange>, properties);
<recipetype:exnihilosequentia:heat>.addRecipe("candle_holder_pink_heat",2,<block:supplementaries:candle_holder_pink>, properties);
<recipetype:exnihilosequentia:heat>.addRecipe("candle_holder_purple_heat",2,<block:supplementaries:candle_holder_purple>, properties);
<recipetype:exnihilosequentia:heat>.addRecipe("candle_holder_red_heat",2,<block:supplementaries:candle_holder_red>, properties);
<recipetype:exnihilosequentia:heat>.addRecipe("candle_holder_white_heat",2,<block:supplementaries:candle_holder_white>, properties);
<recipetype:exnihilosequentia:heat>.addRecipe("candle_holder_yellow_heat",2,<block:supplementaries:candle_holder_yellow>, properties);
<recipetype:exnihilosequentia:heat>.addRecipe("sconce_lever_heat",2,<block:supplementaries:sconce_lever>, any_properties);






<recipetype:exnihilosequentia:heat>.addRecipe("redstone_torch_heat", 2, <block:minecraft:redstone_torch>, properties);
<recipetype:exnihilosequentia:heat>.addRecipe("redstone_wall_torch_heat", 2, <block:minecraft:redstone_wall_torch>, properties);


<recipetype:exnihilosequentia:heat>.addRecipe("blue_redstone_torch_heat",2,<block:chipped:blue_redstone_torch>, any_properties);
<recipetype:exnihilosequentia:heat>.addRecipe("crimson_redstone_torch_heat",2,<block:chipped:crimson_redstone_torch>, any_properties);
<recipetype:exnihilosequentia:heat>.addRecipe("green_redstone_torch_heat",2,<block:chipped:green_redstone_torch>, any_properties);
<recipetype:exnihilosequentia:heat>.addRecipe("lightstick_redstone_torch_heat",2,<block:chipped:lightstick_redstone_torch>, any_properties);
<recipetype:exnihilosequentia:heat>.addRecipe("yellow_redstone_torch_heat",2,<block:chipped:yellow_redstone_torch>, any_properties);
<recipetype:exnihilosequentia:heat>.addRecipe("blue_redstone_wall_torch_heat",2,<block:chipped:blue_redstone_wall_torch>, any_properties);
<recipetype:exnihilosequentia:heat>.addRecipe("crimson_redstone_wall_torch_heat",2,<block:chipped:crimson_redstone_wall_torch>, any_properties);
<recipetype:exnihilosequentia:heat>.addRecipe("green_redstone_wall_torch_heat",2,<block:chipped:green_redstone_wall_torch>, any_properties);
<recipetype:exnihilosequentia:heat>.addRecipe("lightstick_redstone_wall_torch_heat",2,<block:chipped:lightstick_redstone_wall_torch>, any_properties);
<recipetype:exnihilosequentia:heat>.addRecipe("yellow_redstone_wall_torch_heat",2,<block:chipped:yellow_redstone_wall_torch>, any_properties);



// Level 3
<recipetype:exnihilosequentia:heat>.addRecipe("torch_heat",3,<block:minecraft:torch>,any_properties);
<recipetype:exnihilosequentia:heat>.addRecipe("wall_torch_heat",3,<block:minecraft:wall_torch>,any_properties);
<recipetype:exnihilosequentia:heat>.addRecipe("crimson_tiki_torch_heat",3,<block:mcwlights:crimson_tiki_torch>,any_properties);
<recipetype:exnihilosequentia:heat>.addRecipe("dark_oak_tiki_torch_heat",3,<block:mcwlights:dark_oak_tiki_torch>,any_properties);
<recipetype:exnihilosequentia:heat>.addRecipe("acacia_tiki_torch_heat",3,<block:mcwlights:acacia_tiki_torch>,any_properties);
<recipetype:exnihilosequentia:heat>.addRecipe("jungle_tiki_torch_heat",3,<block:mcwlights:jungle_tiki_torch>,any_properties);
<recipetype:exnihilosequentia:heat>.addRecipe("birch_tiki_torch_heat",3,<block:mcwlights:birch_tiki_torch>,any_properties);
<recipetype:exnihilosequentia:heat>.addRecipe("spruce_tiki_torch_heat",3,<block:mcwlights:spruce_tiki_torch>,any_properties);
<recipetype:exnihilosequentia:heat>.addRecipe("force_red_torch_heat",3,<block:forcecraft:force_red_torch>,any_properties);
<recipetype:exnihilosequentia:heat>.addRecipe("oak_tiki_torch_heat",3,<block:mcwlights:oak_tiki_torch>,any_properties);
<recipetype:exnihilosequentia:heat>.addRecipe("iron_torch_heat",3,<block:chipped:iron_torch>,any_properties);
<recipetype:exnihilosequentia:heat>.addRecipe("jungle_torch_heat",3,<block:chipped:jungle_torch>,any_properties);
<recipetype:exnihilosequentia:heat>.addRecipe("spruce_torch_heat",3,<block:chipped:spruce_torch>,any_properties);



// Tinted Torches
<recipetype:exnihilosequentia:heat>.addRecipe("blue_torch_heat",3,<block:colored_torches:blue_torch>,any_properties);
<recipetype:exnihilosequentia:heat>.addRecipe("gray_torch_heat",3,<block:colored_torches:gray_torch>,any_properties);
<recipetype:exnihilosequentia:heat>.addRecipe("light_blue_torch_heat",3,<block:colored_torches:light_blue_torch>,any_properties);
<recipetype:exnihilosequentia:heat>.addRecipe("light_gray_torch_heat",3,<block:colored_torches:light_gray_torch>,any_properties);
<recipetype:exnihilosequentia:heat>.addRecipe("lime_torch_heat",3,<block:colored_torches:lime_torch>,any_properties);
<recipetype:exnihilosequentia:heat>.addRecipe("magenta_torch_heat",3,<block:colored_torches:magenta_torch>,any_properties);
<recipetype:exnihilosequentia:heat>.addRecipe("orange_torch_heat",3,<block:colored_torches:orange_torch>,any_properties);
<recipetype:exnihilosequentia:heat>.addRecipe("pink_torch_heat",3,<block:colored_torches:pink_torch>,any_properties);
<recipetype:exnihilosequentia:heat>.addRecipe("white_torch_heat",3,<block:colored_torches:white_torch>,any_properties);
<recipetype:exnihilosequentia:heat>.addRecipe("yellow_torch_heat",3,<block:colored_torches:yellow_torch>,any_properties);
<recipetype:exnihilosequentia:heat>.addRecipe("black_torch_heat",3,<block:colored_torches:black_torch>,any_properties);
<recipetype:exnihilosequentia:heat>.addRecipe("brown_torch_heat",3,<block:colored_torches:brown_torch>,any_properties);
<recipetype:exnihilosequentia:heat>.addRecipe("cyan_torch_heat",3,<block:colored_torches:cyan_torch>,any_properties);
<recipetype:exnihilosequentia:heat>.addRecipe("green_torch_heat",3,<block:colored_torches:green_torch>,any_properties);
<recipetype:exnihilosequentia:heat>.addRecipe("purple_torch_heat",3,<block:colored_torches:purple_torch>,any_properties);
<recipetype:exnihilosequentia:heat>.addRecipe("red_torch_heat",3,<block:colored_torches:red_torch>,any_properties);
// Tinted Wall Torches
<recipetype:exnihilosequentia:heat>.addRecipe("wall_blue_torch_heat",3,<block:colored_torches:wall_blue_torch>,any_properties);
<recipetype:exnihilosequentia:heat>.addRecipe("wall_gray_torch_heat",3,<block:colored_torches:wall_gray_torch>,any_properties);
<recipetype:exnihilosequentia:heat>.addRecipe("wall_light_blue_torch_heat",3,<block:colored_torches:wall_light_blue_torch>,any_properties);
<recipetype:exnihilosequentia:heat>.addRecipe("wall_light_gray_torch_heat",3,<block:colored_torches:wall_light_gray_torch>,any_properties);
<recipetype:exnihilosequentia:heat>.addRecipe("wall_lime_torch_heat",3,<block:colored_torches:wall_lime_torch>,any_properties);
<recipetype:exnihilosequentia:heat>.addRecipe("wall_magenta_torch_heat",3,<block:colored_torches:wall_magenta_torch>,any_properties);
<recipetype:exnihilosequentia:heat>.addRecipe("wall_orange_torch_heat",3,<block:colored_torches:wall_orange_torch>,any_properties);
<recipetype:exnihilosequentia:heat>.addRecipe("wall_pink_torch_heat",3,<block:colored_torches:wall_pink_torch>,any_properties);
<recipetype:exnihilosequentia:heat>.addRecipe("wall_white_torch_heat",3,<block:colored_torches:wall_white_torch>,any_properties);
<recipetype:exnihilosequentia:heat>.addRecipe("wall_yellow_torch_heat",3,<block:colored_torches:wall_yellow_torch>,any_properties);
<recipetype:exnihilosequentia:heat>.addRecipe("wall_black_torch_heat",3,<block:colored_torches:wall_black_torch>,any_properties);
<recipetype:exnihilosequentia:heat>.addRecipe("wall_brown_torch_heat",3,<block:colored_torches:wall_brown_torch>,any_properties);
<recipetype:exnihilosequentia:heat>.addRecipe("wall_cyan_torch_heat",3,<block:colored_torches:wall_cyan_torch>,any_properties);
<recipetype:exnihilosequentia:heat>.addRecipe("wall_green_torch_heat",3,<block:colored_torches:wall_green_torch>,any_properties);
<recipetype:exnihilosequentia:heat>.addRecipe("wall_purple_torch_heat",3,<block:colored_torches:wall_purple_torch>,any_properties);
<recipetype:exnihilosequentia:heat>.addRecipe("wall_red_torch_heat",3,<block:colored_torches:wall_red_torch>,any_properties);




<recipetype:exnihilosequentia:heat>.addRecipe("glow_wall_torch_heat",3,<block:chipped:glow_wall_torch>,any_properties);
<recipetype:exnihilosequentia:heat>.addRecipe("dark_oak_wall_torch_heat",3,<block:chipped:dark_oak_wall_torch>,any_properties);
<recipetype:exnihilosequentia:heat>.addRecipe("birch_wall_torch_heat",3,<block:chipped:birch_wall_torch>,any_properties);
<recipetype:exnihilosequentia:heat>.addRecipe("acacia_wall_torch_heat",3,<block:chipped:acacia_wall_torch>,any_properties);
<recipetype:exnihilosequentia:heat>.addRecipe("warped_wall_torch_heat",3,<block:chipped:warped_wall_torch>,any_properties);


<recipetype:exnihilosequentia:heat>.addRecipe("rustic_torch_heat",3,<block:mcwlights:rustic_torch>,any_properties);
<recipetype:exnihilosequentia:heat>.addRecipe("reinforced_torch_heat",3,<block:mcwlights:reinforced_torch>,any_properties);
<recipetype:exnihilosequentia:heat>.addRecipe("iron_framed_torch_heat",3,<block:mcwlights:iron_framed_torch>,any_properties);
<recipetype:exnihilosequentia:heat>.addRecipe("framed_torch_heat",3,<block:mcwlights:framed_torch>,any_properties);
<recipetype:exnihilosequentia:heat>.addRecipe("warped_tiki_torch_heat",3,<block:mcwlights:warped_tiki_torch>,any_properties);
<recipetype:exnihilosequentia:heat>.addRecipe("mangrove_tiki_torch_heat",3,<block:mcwlights:mangrove_tiki_torch>,any_properties);
<recipetype:exnihilosequentia:heat>.addRecipe("bamboo_tiki_torch_heat",3,<block:mcwlights:bamboo_tiki_torch>,any_properties);
<recipetype:exnihilosequentia:heat>.addRecipe("cherry_tiki_torch_heat",3,<block:mcwlights:cherry_tiki_torch>,any_properties);
<recipetype:exnihilosequentia:heat>.addRecipe("upgraded_torch_heat",3,<block:mcwlights:upgraded_torch>,any_properties);
<recipetype:exnihilosequentia:heat>.addRecipe("stone_torch_heat",3,<block:silentgear:stone_torch>,any_properties);
<recipetype:exnihilosequentia:heat>.addRecipe("stone_wall_torch_heat",3,<block:silentgear:wall_stone_torch>,any_properties);
<recipetype:exnihilosequentia:heat>.addRecipe("glowing_dirtstone_heat",3,<block:sf5_things:glowing_dirtstone>,any_properties);

// Level 4
<recipetype:exnihilosequentia:heat>.addRecipe("soul_cherry_tiki_torch_heat",4,<block:mcwlights:soul_cherry_tiki_torch>,any_properties);
<recipetype:exnihilosequentia:heat>.addRecipe("sconce_soul_heat",4,<block:supplementaries:sconce_soul>,any_properties);



<recipetype:exnihilosequentia:heat>.addRecipe("crimson_torch_heat",4,<block:chipped:crimson_torch>,any_properties);
<recipetype:exnihilosequentia:heat>.addRecipe("spirit_torch_heat",4,<block:occultism:spirit_torch>,any_properties);
<recipetype:exnihilosequentia:heat>.addRecipe("soul_torch_heat",4,<block:minecraft:soul_torch>,any_properties);
<recipetype:exnihilosequentia:heat>.addRecipe("crimson_wall_torch_heat",4,<block:chipped:crimson_wall_torch>,any_properties);
<recipetype:exnihilosequentia:heat>.addRecipe("spirit_wall_torch_heat",4,<block:occultism:spirit_wall_torch>,any_properties);
<recipetype:exnihilosequentia:heat>.addRecipe("soul_wall_torch_heat",4,<block:minecraft:soul_wall_torch>,any_properties);

// Level 5
<recipetype:exnihilosequentia:heat>.addRecipe("light_blue_campfire_heat",5,<block:tintedcampfires:light_blue_campfire>,properties);
<recipetype:exnihilosequentia:heat>.addRecipe("yellow_campfire_heat",5,<block:tintedcampfires:yellow_campfire>,properties);
<recipetype:exnihilosequentia:heat>.addRecipe("white_campfire_heat",5,<block:tintedcampfires:white_campfire>,properties);
<recipetype:exnihilosequentia:heat>.addRecipe("red_campfire_heat",5,<block:tintedcampfires:red_campfire>,properties);
<recipetype:exnihilosequentia:heat>.addRecipe("green_campfire_heat",5,<block:tintedcampfires:green_campfire>,properties);
<recipetype:exnihilosequentia:heat>.addRecipe("brown_campfire_heat",5,<block:tintedcampfires:brown_campfire>,properties);
<recipetype:exnihilosequentia:heat>.addRecipe("blue_campfire_heat",5,<block:tintedcampfires:blue_campfire>,properties);
<recipetype:exnihilosequentia:heat>.addRecipe("black_campfire_heat",5,<block:tintedcampfires:black_campfire>,properties);
<recipetype:exnihilosequentia:heat>.addRecipe("campfire_heat",5,<block:minecraft:campfire>,properties);
<recipetype:exnihilosequentia:heat>.addRecipe("purple_campfire_heat",5,<block:tintedcampfires:purple_campfire>,properties);
<recipetype:exnihilosequentia:heat>.addRecipe("gray_campfire_heat",5,<block:tintedcampfires:gray_campfire>,properties);
<recipetype:exnihilosequentia:heat>.addRecipe("cyan_campfire_heat",5,<block:tintedcampfires:cyan_campfire>,properties);
<recipetype:exnihilosequentia:heat>.addRecipe("pink_campfire_heat",5,<block:tintedcampfires:pink_campfire>,properties);
<recipetype:exnihilosequentia:heat>.addRecipe("orange_campfire_heat",5,<block:tintedcampfires:orange_campfire>,properties);
<recipetype:exnihilosequentia:heat>.addRecipe("magenta_campfire_heat",5,<block:tintedcampfires:magenta_campfire>,properties);
<recipetype:exnihilosequentia:heat>.addRecipe("lime_campfire_heat",5,<block:tintedcampfires:lime_campfire>,properties);
<recipetype:exnihilosequentia:heat>.addRecipe("light_gray_campfire_heat",5,<block:tintedcampfires:light_gray_campfire>,properties);
<recipetype:exnihilosequentia:heat>.addRecipe("fire_heat",5,<block:minecraft:fire>,any_properties);

// Level 6
<recipetype:exnihilosequentia:heat>.addRecipe("soul_campfire_heat",6,<block:minecraft:soul_campfire>,properties);
<recipetype:exnihilosequentia:heat>.addRecipe("spirit_campfire_heat",6,<block:occultism:spirit_campfire>,properties);
<recipetype:exnihilosequentia:heat>.addRecipe("spirit_fire_heat",6,<block:occultism:spirit_fire>,any_properties);
<recipetype:exnihilosequentia:heat>.addRecipe("blaze_heat_test", 6,<block:obtrophies:trophy>, blazeTrophyProperties);

// Level 7
<recipetype:exnihilosequentia:heat>.addRecipe("lava_heat",7,<block:minecraft:lava>,any_properties);

// Level 8
<recipetype:exnihilosequentia:heat>.addRecipe("fire_water",8,<block:enderio:fire_water>,any_properties);
<recipetype:exnihilosequentia:heat>.addRecipe("liquid_sunshine",8,<block:enderio:liquid_sunshine>,any_properties);
<recipetype:exnihilosequentia:heat>.addRecipe("magma",8,<block:cyclic:magma_block>,any_properties);
