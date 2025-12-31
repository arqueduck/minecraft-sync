public function getGatewayTreeDropsForColor(color: Color): string[] {
  if (color.getName() == ColorName.Black) {
    return [
      "gateways:normal/enderman",
      "gateways:normal/spider"
    ];
  }

  if (color.getName() == ColorName.Blue) {
    return [
      "gateways:normal/drowned",
      "gateways:normal/squid"
    ];
  }

  if (color.getName() == ColorName.Brown) {
    return ["gateways:normal/cow"];
  }

  if (color.getName() == ColorName.Cyan) {
    return ["gateways:normal/glow_squid"];
  }

  if (color.getName() == ColorName.Gray) {
    return ["gateways:normal/cat"];
  }

  if (color.getName() == ColorName.Green) {
    return [
      "gateways:normal/frog",
      "gateways:normal/zombie"
    ];
  }

  if (color.getName() == ColorName.LightBlue) {
    return ["gateways:normal/allay"];
  }

  if (color.getName() == ColorName.LightGray) {
    return ["gateways:normal/iron_golem"];
  }

  if (color.getName() == ColorName.Lime) {
    return ["gateways:normal/creeper"];
  }

  if (color.getName() == ColorName.Magenta) {
    return [];
  }

  if (color.getName() == ColorName.Orange) {
    return ["gateways:normal/wooly_cow"];
  }

  if (color.getName() == ColorName.Pink) {
    return ["gateways:normal/pig"];
  }

  if (color.getName() == ColorName.Purple) {
    return ["gateways:normal/bone_spider","gateways:normal/shulker"];
  }

  if (color.getName() == ColorName.Red) {
    return ["gateways:normal/cluckshroom", "gateways:normal/strider"];
  }

  if (color.getName() == ColorName.White) {
    return ["gateways:normal/skeleton", "gateways:normal/goat"];
  }

  if (color.getName() == ColorName.Yellow) {
    return ["gateways:normal/bee"];
  }

  return [];
}

// GENERATOR START
// !THIS SECTION IS MANAGED BY A SCRIPT. DO NOT MANUALLY EDIT THIS SECTION!
public function getGatewaysForColor(color: Color): string[] {
  if color.getName() == ColorName.Black {
    return [
      "gateways:normal/adelie_penguin",
      "gateways:normal/black_vein_creeper",
      "gateways:normal/cave_spider",
      "gateways:normal/ender_dragon",
      "gateways:normal/ender_tot",
      "gateways:normal/enderman",
      "gateways:normal/spider",
      "gateways:normal/umbra_cow",
      "gateways:normal/wither",
      "gateways:normal/wither_skeleton",
      "gateways:normal/wither_skeleton_wolf",
      "gateways:titan/adelie_penguin",
      "gateways:titan/black_vein_creeper",
      "gateways:titan/cave_spider",
      "gateways:titan/ender_dragon",
      "gateways:titan/ender_tot",
      "gateways:titan/enderman",
      "gateways:titan/spider",
      "gateways:titan/umbra_cow",
      "gateways:titan/wither",
      "gateways:titan/wither_skeleton",
      "gateways:titan/wither_skeleton_wolf"
    ];
  }
  if color.getName() == ColorName.Blue {
    return [
      "gateways:normal/blue_chu_chu",
      "gateways:normal/blue_vein_creeper",
      "gateways:normal/bouldering_drowned",
      "gateways:normal/drowned",
      "gateways:normal/lobber_drowned",
      "gateways:normal/phantom",
      "gateways:normal/squid",
      "gateways:normal/trader_llama",
      "gateways:normal/viler_witch",
      "gateways:normal/wandering_trader",
      "gateways:titan/blue_chu_chu",
      "gateways:titan/blue_vein_creeper",
      "gateways:titan/bouldering_drowned",
      "gateways:titan/drowned",
      "gateways:titan/lobber_drowned",
      "gateways:titan/phantom",
      "gateways:titan/squid",
      "gateways:titan/trader_llama",
      "gateways:titan/viler_witch",
      "gateways:titan/wandering_trader"
    ];
  }
  if color.getName() == ColorName.Brown {
    return [
      "gateways:normal/bat",
      "gateways:normal/brown_vein_creeper",
      "gateways:normal/cod",
      "gateways:normal/cow",
      "gateways:normal/donkey",
      "gateways:normal/ghast_cow",
      "gateways:normal/horse",
      "gateways:normal/husk",
      "gateways:normal/mule",
      "gateways:normal/rabbit",
      "gateways:normal/tadpole",
      "gateways:normal/villager",
      "gateways:titan/bat",
      "gateways:titan/brown_vein_creeper",
      "gateways:titan/cod",
      "gateways:titan/cow",
      "gateways:titan/donkey",
      "gateways:titan/ghast_cow",
      "gateways:titan/horse",
      "gateways:titan/husk",
      "gateways:titan/mule",
      "gateways:titan/rabbit",
      "gateways:titan/tadpole",
      "gateways:titan/villager"
    ];
  }
  if color.getName() == ColorName.Cyan {
    return [
      "gateways:normal/cyan_vein_creeper",
      "gateways:normal/drygmy",
      "gateways:normal/fancy_chicken",
      "gateways:normal/glow_skeleton",
      "gateways:normal/glow_squid",
      "gateways:normal/stray_bone_spider",
      "gateways:normal/tropical_slime",
      "gateways:normal/warden",
      "gateways:titan/cyan_vein_creeper",
      "gateways:titan/drygmy",
      "gateways:titan/fancy_chicken",
      "gateways:titan/glow_skeleton",
      "gateways:titan/glow_squid",
      "gateways:titan/stray_bone_spider",
      "gateways:titan/tropical_slime",
      "gateways:titan/warden"
    ];
  }
  if color.getName() == ColorName.Gray {
    return [
      "gateways:normal/abyssologer",
      "gateways:normal/bouldering_zombie",
      "gateways:normal/cat",
      "gateways:normal/evoker",
      "gateways:normal/gray_vein_creeper",
      "gateways:normal/illusioner",
      "gateways:normal/pillager",
      "gateways:normal/ravager",
      "gateways:normal/silverfish",
      "gateways:normal/vindicator",
      "gateways:titan/abyssologer",
      "gateways:titan/bouldering_zombie",
      "gateways:titan/cat",
      "gateways:titan/evoker",
      "gateways:titan/gray_vein_creeper",
      "gateways:titan/illusioner",
      "gateways:titan/pillager",
      "gateways:titan/ravager",
      "gateways:titan/silverfish",
      "gateways:titan/vindicator"
    ];
  }
  if color.getName() == ColorName.Green {
    return [
      "gateways:normal/frog",
      "gateways:normal/green_chu_chu",
      "gateways:normal/green_vein_creeper",
      "gateways:normal/lobber_zombie",
      "gateways:normal/overgrown_skeleton",
      "gateways:normal/sniffer",
      "gateways:normal/swamp_zombie",
      "gateways:normal/zombie",
      "gateways:normal/zombie_horse",
      "gateways:normal/zombie_villager",
      "gateways:titan/frog",
      "gateways:titan/green_chu_chu",
      "gateways:titan/green_vein_creeper",
      "gateways:titan/lobber_zombie",
      "gateways:titan/overgrown_skeleton",
      "gateways:titan/sniffer",
      "gateways:titan/swamp_zombie",
      "gateways:titan/zombie",
      "gateways:titan/zombie_horse",
      "gateways:titan/zombie_villager"
    ];
  }
  if color.getName() == ColorName.LightBlue {
    return [
      "gateways:normal/allay",
      "gateways:normal/dolphin",
      "gateways:normal/fairy",
      "gateways:normal/light_blue_vein_creeper",
      "gateways:normal/tuna",
      "gateways:normal/vex",
      "gateways:titan/allay",
      "gateways:titan/dolphin",
      "gateways:titan/fairy",
      "gateways:titan/light_blue_vein_creeper",
      "gateways:titan/tuna",
      "gateways:titan/vex"
    ];
  }
  if color.getName() == ColorName.LightGray {
    return [
      "gateways:normal/elder_guardian",
      "gateways:normal/furnace_golem",
      "gateways:normal/guardian",
      "gateways:normal/iron_golem",
      "gateways:normal/light_gray_vein_creeper",
      "gateways:normal/stray",
      "gateways:normal/witch",
      "gateways:normal/wolf",
      "gateways:titan/elder_guardian",
      "gateways:titan/furnace_golem",
      "gateways:titan/guardian",
      "gateways:titan/iron_golem",
      "gateways:titan/light_gray_vein_creeper",
      "gateways:titan/stray",
      "gateways:titan/witch",
      "gateways:titan/wolf"
    ];
  }
  if color.getName() == ColorName.Lime {
    return [
      "gateways:normal/creeper",
      "gateways:normal/creeper_tot",
      "gateways:normal/lime_vein_creeper",
      "gateways:normal/slime",
      "gateways:normal/turtle",
      "gateways:normal/whirlisprig",
      "gateways:titan/creeper",
      "gateways:titan/creeper_tot",
      "gateways:titan/lime_vein_creeper",
      "gateways:titan/slime",
      "gateways:titan/turtle",
      "gateways:titan/whirlisprig"
    ];
  }
  if color.getName() == ColorName.Magenta {
    return [
      "gateways:normal/crystal_zombie",
      "gateways:normal/magenta_vein_creeper",
      "gateways:normal/starbuncle",
      "gateways:titan/crystal_zombie",
      "gateways:titan/magenta_vein_creeper",
      "gateways:titan/starbuncle"
    ];
  }
  if color.getName() == ColorName.Orange {
    return [
      "gateways:normal/blaze",
      "gateways:normal/fox",
      "gateways:normal/hyper_rabbit",
      "gateways:normal/lava_monster",
      "gateways:normal/lava_squid",
      "gateways:normal/magma_cow",
      "gateways:normal/magma_cube",
      "gateways:normal/mother_lava_squid",
      "gateways:normal/orange_vein_creeper",
      "gateways:normal/pufferfish",
      "gateways:normal/tropical_fish",
      "gateways:normal/wooly_cow",
      "gateways:titan/blaze",
      "gateways:titan/fox",
      "gateways:titan/hyper_rabbit",
      "gateways:titan/lava_monster",
      "gateways:titan/lava_squid",
      "gateways:titan/magma_cow",
      "gateways:titan/magma_cube",
      "gateways:titan/mother_lava_squid",
      "gateways:titan/orange_vein_creeper",
      "gateways:titan/pufferfish",
      "gateways:titan/tropical_fish",
      "gateways:titan/wooly_cow"
    ];
  }
  if color.getName() == ColorName.Pink {
    return [
      "gateways:normal/axolotl",
      "gateways:normal/hoglin",
      "gateways:normal/jumbo_rabbit",
      "gateways:normal/moolip",
      "gateways:normal/pig",
      "gateways:normal/piglin",
      "gateways:normal/piglin_brute",
      "gateways:normal/pink_vein_creeper",
      "gateways:normal/shrimp",
      "gateways:normal/teacup_pig",
      "gateways:normal/zoglin",
      "gateways:normal/zombified_pig",
      "gateways:normal/zombified_piglin",
      "gateways:titan/axolotl",
      "gateways:titan/hoglin",
      "gateways:titan/jumbo_rabbit",
      "gateways:titan/moolip",
      "gateways:titan/pig",
      "gateways:titan/piglin",
      "gateways:titan/piglin_brute",
      "gateways:titan/pink_vein_creeper",
      "gateways:titan/shrimp",
      "gateways:titan/teacup_pig",
      "gateways:titan/zoglin",
      "gateways:titan/zombified_pig",
      "gateways:titan/zombified_piglin"
    ];
  }
  if color.getName() == ColorName.Purple {
    return [
      "gateways:normal/bone_spider",
      "gateways:normal/endermite",
      "gateways:normal/purple_vein_creeper",
      "gateways:normal/shulker",
      "gateways:titan/bone_spider",
      "gateways:titan/endermite",
      "gateways:titan/purple_vein_creeper",
      "gateways:titan/shulker"
    ];
  }
  if color.getName() == ColorName.Red {
    return [
      "gateways:normal/cluckshroom",
      "gateways:normal/mooshroom",
      "gateways:normal/parrot",
      "gateways:normal/red_chu_chu",
      "gateways:normal/red_vein_creeper",
      "gateways:normal/salmon",
      "gateways:normal/strider",
      "gateways:normal/wandering_winemaker",
      "gateways:titan/cluckshroom",
      "gateways:titan/mooshroom",
      "gateways:titan/parrot",
      "gateways:titan/red_chu_chu",
      "gateways:titan/red_vein_creeper",
      "gateways:titan/salmon",
      "gateways:titan/strider",
      "gateways:titan/wandering_winemaker"
    ];
  }
  if color.getName() == ColorName.White {
    return [
      "gateways:normal/albino_cow",
      "gateways:normal/baby_ghast",
      "gateways:normal/chicken",
      "gateways:normal/energetic_sheep",
      "gateways:normal/ghast",
      "gateways:normal/goat",
      "gateways:normal/horned_sheep",
      "gateways:normal/llama",
      "gateways:normal/melon_golem",
      "gateways:normal/opalescent_eye",
      "gateways:normal/panda",
      "gateways:normal/polar_bear",
      "gateways:normal/sheep",
      "gateways:normal/skeleton",
      "gateways:normal/skeleton_horse",
      "gateways:normal/skeleton_wolf",
      "gateways:normal/snow_golem",
      "gateways:normal/white_vein_creeper",
      "gateways:titan/albino_cow",
      "gateways:titan/baby_ghast",
      "gateways:titan/chicken",
      "gateways:titan/energetic_sheep",
      "gateways:titan/ghast",
      "gateways:titan/goat",
      "gateways:titan/horned_sheep",
      "gateways:titan/llama",
      "gateways:titan/melon_golem",
      "gateways:titan/opalescent_eye",
      "gateways:titan/panda",
      "gateways:titan/polar_bear",
      "gateways:titan/sheep",
      "gateways:titan/skeleton",
      "gateways:titan/skeleton_horse",
      "gateways:titan/skeleton_wolf",
      "gateways:titan/snow_golem",
      "gateways:titan/white_vein_creeper"
    ];
  }
  if color.getName() == ColorName.Yellow {
    return [
      "gateways:normal/bee",
      "gateways:normal/camel",
      "gateways:normal/cream_cow",
      "gateways:normal/gold_chu_chu",
      "gateways:normal/moobloom",
      "gateways:normal/ocelot",
      "gateways:normal/yellow_vein_creeper",
      "gateways:titan/bee",
      "gateways:titan/camel",
      "gateways:titan/cream_cow",
      "gateways:titan/gold_chu_chu",
      "gateways:titan/moobloom",
      "gateways:titan/ocelot",
      "gateways:titan/yellow_vein_creeper"
    ];
  }

  return [];
}
// GENERATOR END
