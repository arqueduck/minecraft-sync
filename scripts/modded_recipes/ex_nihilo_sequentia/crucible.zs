import mods.exnihilosequentia.MeltingRecipe;
import mods.exnihilosequentia.CrucibleType;


// Sets up Ex Nihilo Crucible Melting recipes
<recipetype:exnihilosequentia:melting>.addRecipe("stone_melting_to_lava_via_tag", <tag:items:forge:stone>, <fluid:minecraft:lava> * 250, CrucibleType.fired());
<recipetype:exnihilosequentia:melting>.addRecipe("cobblestone_melting_to_lava_via_tag", <tag:items:forge:cobblestone>, <fluid:minecraft:lava> * 250, CrucibleType.fired());



// Water creation




<recipetype:exnihilosequentia:melting>.addRecipe("leaves_melting_to_water_via_tag", <tag:items:minecraft:saplings>, <fluid:minecraft:water> * 250, CrucibleType.wood());
<recipetype:exnihilosequentia:melting>.addRecipe("saplings_melting_to_water_via_tag", <tag:items:minecraft:leaves>, <fluid:minecraft:water> * 125, CrucibleType.wood());
