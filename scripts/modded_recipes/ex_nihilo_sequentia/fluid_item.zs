import mods.exnihilosequentia.PrecipitateRecipe;
/*
<recipetype:exnihilosequentia:fluid_item>.create("dummy_fluid_item")
    .setFluidInTank(<fluid:minecraft:lava>)
    .setInputItem(<item:minecraft:diamond>)
    .setResult(<item:minecraft:diamond_block>);
        */





<recipetype:exnihilosequentia:precipitate>.addRecipe("sand_to_clay_precipitate", <fluid:minecraft:water> * 1000, <item:minecraft:sand>, <item:minecraft:clay>);



// Color Fluids to Blocks of Dye
<recipetype:exnihilosequentia:precipitate>.addRecipe("sand_and_black_water_precipitate", <fluid:colouredstuff:water_black> * 1000, <item:minecraft:sand>, <item:sf5_things:block_of_black_dye>);
<recipetype:exnihilosequentia:precipitate>.addRecipe("sand_and_blue_water_precipitate", <fluid:colouredstuff:water_blue> * 1000, <item:minecraft:sand>, <item:sf5_things:block_of_blue_dye>);
<recipetype:exnihilosequentia:precipitate>.addRecipe("sand_and_brown_water_precipitate", <fluid:colouredstuff:water_brown> * 1000, <item:minecraft:sand>, <item:sf5_things:block_of_brown_dye>);
<recipetype:exnihilosequentia:precipitate>.addRecipe("sand_and_cyan_water_precipitate", <fluid:colouredstuff:water_cyan> * 1000, <item:minecraft:sand>, <item:sf5_things:block_of_cyan_dye>);
<recipetype:exnihilosequentia:precipitate>.addRecipe("sand_and_gray_water_precipitate", <fluid:colouredstuff:water_gray> * 1000, <item:minecraft:sand>, <item:sf5_things:block_of_gray_dye>);
<recipetype:exnihilosequentia:precipitate>.addRecipe("sand_and_green_water_precipitate", <fluid:colouredstuff:water_green> * 1000, <item:minecraft:sand>, <item:sf5_things:block_of_green_dye>);
<recipetype:exnihilosequentia:precipitate>.addRecipe("sand_and_light_blue_water_precipitate", <fluid:colouredstuff:water_light_blue> * 1000, <item:minecraft:sand>, <item:sf5_things:block_of_light_blue_dye>);
<recipetype:exnihilosequentia:precipitate>.addRecipe("sand_and_light_gray_water_precipitate", <fluid:colouredstuff:water_light_gray> * 1000, <item:minecraft:sand>, <item:sf5_things:block_of_light_gray_dye>);
<recipetype:exnihilosequentia:precipitate>.addRecipe("sand_and_lime_water_precipitate", <fluid:colouredstuff:water_lime> * 1000, <item:minecraft:sand>, <item:sf5_things:block_of_lime_dye>);
<recipetype:exnihilosequentia:precipitate>.addRecipe("sand_and_magenta_water_precipitate", <fluid:colouredstuff:water_magenta> * 1000, <item:minecraft:sand>, <item:sf5_things:block_of_magenta_dye>);
<recipetype:exnihilosequentia:precipitate>.addRecipe("sand_and_orange_water_precipitate", <fluid:colouredstuff:water_orange> * 1000, <item:minecraft:sand>, <item:sf5_things:block_of_orange_dye>);
<recipetype:exnihilosequentia:precipitate>.addRecipe("sand_and_pink_water_precipitate", <fluid:colouredstuff:water_pink> * 1000, <item:minecraft:sand>, <item:sf5_things:block_of_pink_dye>);
<recipetype:exnihilosequentia:precipitate>.addRecipe("sand_and_purple_water_precipitate", <fluid:colouredstuff:water_purple> * 1000, <item:minecraft:sand>, <item:sf5_things:block_of_purple_dye>);
<recipetype:exnihilosequentia:precipitate>.addRecipe("sand_and_red_water_precipitate", <fluid:colouredstuff:water_red> * 1000, <item:minecraft:sand>, <item:sf5_things:block_of_red_dye>);
<recipetype:exnihilosequentia:precipitate>.addRecipe("sand_and_white_water_precipitate", <fluid:colouredstuff:water_white> * 1000, <item:minecraft:sand>, <item:sf5_things:block_of_white_dye>);
<recipetype:exnihilosequentia:precipitate>.addRecipe("sand_and_yellow_water_precipitate", <fluid:colouredstuff:water_yellow> * 1000, <item:minecraft:sand>, <item:sf5_things:block_of_yellow_dye>);


// Milk and Green Dye make Slime Block
<recipetype:exnihilosequentia:precipitate>.addRecipe("slime_precipitate", <fluid:minecraft:milk> * 1000, <item:minecraft:lime_dye>, <item:minecraft:slime_block>);
