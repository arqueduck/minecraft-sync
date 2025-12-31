import crafttweaker.api.item.IItemStack;

function addRGBDyeAndBlockPrinterRecipe(baseRecipeName: string, itemOutput: IItemStack, blockOutput: IItemStack, weight: int): void {
  ForbiddenSmoothiesPrinter.addRecipe(baseRecipeName, itemOutput, [<item:sf5_things:rgb_dye>], weight);
  ForbiddenSmoothiesPrinter.addRecipe(baseRecipeName + "_x9", blockOutput, [<item:sf5_things:block_of_rgb_dye>], weight);
}

addRGBDyeAndBlockPrinterRecipe("rgb_printer_amethyst_shard", <item:minecraft:amethyst_shard>, <item:minecraft:amethyst_shard> * 9, 1);
addRGBDyeAndBlockPrinterRecipe("rgb_printer_certus_quartz_crystal", <item:ae2:certus_quartz_crystal>, <item:ae2:certus_quartz_crystal> * 9, 1);
addRGBDyeAndBlockPrinterRecipe("rgb_printer_coal", <item:minecraft:coal>, <item:minecraft:coal_block>, 4);
addRGBDyeAndBlockPrinterRecipe("rgb_printer_diamond", <item:minecraft:diamond>, <item:minecraft:diamond_block>, 1);
addRGBDyeAndBlockPrinterRecipe("rgb_printer_emerald", <item:minecraft:emerald>, <item:minecraft:emerald_block>, 1);
addRGBDyeAndBlockPrinterRecipe("rgb_printer_lapis_lazuli", <item:minecraft:lapis_lazuli>, <item:minecraft:lapis_block>, 1);
addRGBDyeAndBlockPrinterRecipe("rgb_printer_quartz", <item:minecraft:quartz>, <item:minecraft:quartz> * 9, 1);
addRGBDyeAndBlockPrinterRecipe("rgb_printer_raw_aluminum", <item:immersiveengineering:raw_aluminum>, <item:immersiveengineering:raw_block_aluminum>, 1);
addRGBDyeAndBlockPrinterRecipe("rgb_printer_raw_copper", <item:minecraft:raw_copper>, <item:minecraft:raw_copper_block>, 3);
addRGBDyeAndBlockPrinterRecipe("rgb_printer_raw_gold", <item:minecraft:raw_gold>, <item:minecraft:raw_gold_block>, 2);
addRGBDyeAndBlockPrinterRecipe("rgb_printer_raw_iron", <item:minecraft:raw_iron>, <item:minecraft:raw_iron_block>, 6);
addRGBDyeAndBlockPrinterRecipe("rgb_printer_raw_lead", <item:thermal:raw_lead>, <item:thermal:raw_lead_block>, 1);
addRGBDyeAndBlockPrinterRecipe("rgb_printer_raw_nickel", <item:thermal:raw_nickel>, <item:thermal:raw_nickel_block>, 1);
addRGBDyeAndBlockPrinterRecipe("rgb_printer_raw_silver", <item:thermal:raw_silver>, <item:thermal:raw_silver_block>, 1);
addRGBDyeAndBlockPrinterRecipe("rgb_printer_raw_tin", <item:thermal:raw_tin>, <item:thermal:raw_tin_block>, 2);
addRGBDyeAndBlockPrinterRecipe("rgb_printer_raw_uranium", <item:immersiveengineering:raw_uranium>, <item:immersiveengineering:raw_block_uranium>, 1);
addRGBDyeAndBlockPrinterRecipe("rgb_printer_raw_zinc", <item:create:raw_zinc>, <item:create:raw_zinc_block>, 2);
addRGBDyeAndBlockPrinterRecipe("rgb_printer_redstone", <item:minecraft:redstone>, <item:minecraft:redstone_block>, 5);
addRGBDyeAndBlockPrinterRecipe("rgb_printer_andesite_pebble", <item:exnihilosequentia:andesite_pebble>, <item:exnihilosequentia:andesite_pebble> * 9, 1);
addRGBDyeAndBlockPrinterRecipe("rgb_printer_deepslate_pebble", <item:exnihilosequentia:deepslate_pebble>, <item:exnihilosequentia:deepslate_pebble> * 9, 1);
addRGBDyeAndBlockPrinterRecipe("rgb_printer_diorite_pebble", <item:exnihilosequentia:diorite_pebble>, <item:exnihilosequentia:diorite_pebble> * 9, 1);
addRGBDyeAndBlockPrinterRecipe("rgb_printer_dripstone_pebble", <item:exnihilosequentia:dripstone_pebble>, <item:exnihilosequentia:dripstone_pebble> * 9, 1);
addRGBDyeAndBlockPrinterRecipe("rgb_printer_granite_pebble", <item:exnihilosequentia:granite_pebble>, <item:exnihilosequentia:granite_pebble> * 9, 1);
addRGBDyeAndBlockPrinterRecipe("rgb_printer_sky_dust", <item:ae2:sky_dust>, <item:ae2:sky_dust> * 9, 1);
addRGBDyeAndBlockPrinterRecipe("rgb_printer_draconium_dust", <item:draconicevolution:draconium_dust>, <item:draconicevolution:draconium_dust> * 9, 1);
