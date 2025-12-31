public enum Stage {
  Colorless = "colorless",

  Red = "red",
  Green = "green",
  Lime = "lime",
  Blue = "blue",
  Light_Blue = "lightblue",
  // LightBlue = "light_blue",
  Gray = "gray",
  Light_Gray = "lightgray",
  // LightGray = "lightgray",
  Yellow = "yellow",
  Purple = "purple",
  Magenta = "magenta",
  Pink = "pink",
  White = "white",
  Black = "black",
  Brown = "brown",
  Cyan = "cyan",
  Orange = "orange";
}

public function getStageForColor(color as Color) as Stage? {
  if color.getName() == ColorName.None {
    return Stage.Colorless;
  }

  if color.getName() == ColorName.Red {
    return Stage.Red;
  }

  if color.getName() == ColorName.Green {
    return Stage.Green;
  }

  if color.getName() == ColorName.Lime {
    return Stage.Lime;
  }

  if color.getName() == ColorName.Blue {
    return Stage.Blue;
  }

  if color.getName() == ColorName.LightBlue {
    return Stage.Light_Blue;
  }

  if color.getName() == ColorName.Gray {
    return Stage.Gray;
  }

  if color.getName() == ColorName.LightGray {
    return Stage.Light_Gray;
  }

  if color.getName() == ColorName.Yellow {
    return Stage.Yellow;
  }

  if color.getName() == ColorName.Purple {
    return Stage.Purple;
  }

  if color.getName() == ColorName.Magenta {
    return Stage.Magenta;
  }

  if color.getName() == ColorName.Pink {
    return Stage.Pink;
  }

  if color.getName() == ColorName.White {
    return Stage.White;
  }

  if color.getName() == ColorName.Black {
    return Stage.Black;
  }

  if color.getName() == ColorName.Brown {
    return Stage.Brown;
  }

  if color.getName() == ColorName.Cyan {
    return Stage.Cyan;
  }

  if color.getName() == ColorName.Orange {
    return Stage.Orange;
  }


  return null;
}

public enum MobStage {
  // MobStage GENERATOR START
  // !THIS SECTION IS MANAGED BY A SCRIPT. DO NOT MANUALLY EDIT THIS SECTION!

  ABYSSOLOGER = "abyssologer",
  ADELIE_PENGUIN = "adelie_penguin",
  ALBINO_COW = "albino_cow",
  ALLAY = "allay",
  AXOLOTL = "axolotl",
  BABY_GHAST = "baby_ghast",
  BAT = "bat",
  BEE = "bee",
  BLACK_VEIN_CREEPER = "black_vein_creeper",
  BLAZE = "blaze",
  BLUE_CHU_CHU = "blue_chu_chu",
  BLUE_VEIN_CREEPER = "blue_vein_creeper",
  BONE_SPIDER = "bone_spider",
  BOULDERING_DROWNED = "bouldering_drowned",
  BOULDERING_ZOMBIE = "bouldering_zombie",
  BROWN_VEIN_CREEPER = "brown_vein_creeper",
  CAMEL = "camel",
  CAT = "cat",
  CAVE_SPIDER = "cave_spider",
  CHICKEN = "chicken",
  CLUCKSHROOM = "cluckshroom",
  COD = "cod",
  COW = "cow",
  CREAM_COW = "cream_cow",
  CREEPER = "creeper",
  CREEPER_TOT = "creeper_tot",
  CRYSTAL_ZOMBIE = "crystal_zombie",
  CYAN_VEIN_CREEPER = "cyan_vein_creeper",
  DOLPHIN = "dolphin",
  DONKEY = "donkey",
  DROWNED = "drowned",
  DRYGMY = "drygmy",
  ELDER_GUARDIAN = "elder_guardian",
  ENDER_DRAGON = "ender_dragon",
  ENDER_TOT = "ender_tot",
  ENDERMAN = "enderman",
  ENDERMITE = "endermite",
  ENERGETIC_SHEEP = "energetic_sheep",
  EVOKER = "evoker",
  FAIRY = "fairy",
  FANCY_CHICKEN = "fancy_chicken",
  FOX = "fox",
  FROG = "frog",
  FURNACE_GOLEM = "furnace_golem",
  GHAST = "ghast",
  GHAST_COW = "ghast_cow",
  GLOW_SKELETON = "glow_skeleton",
  GLOW_SQUID = "glow_squid",
  GOAT = "goat",
  GOLD_CHU_CHU = "gold_chu_chu",
  GRAY_VEIN_CREEPER = "gray_vein_creeper",
  GREEN_CHU_CHU = "green_chu_chu",
  GREEN_VEIN_CREEPER = "green_vein_creeper",
  GUARDIAN = "guardian",
  HOGLIN = "hoglin",
  HORNED_SHEEP = "horned_sheep",
  HORSE = "horse",
  HUSK = "husk",
  HYPER_RABBIT = "hyper_rabbit",
  ILLUSIONER = "illusioner",
  IRON_GOLEM = "iron_golem",
  JUMBO_RABBIT = "jumbo_rabbit",
  LAVA_MONSTER = "lava_monster",
  LAVA_SQUID = "lava_squid",
  LIGHT_BLUE_VEIN_CREEPER = "light_blue_vein_creeper",
  LIGHT_GRAY_VEIN_CREEPER = "light_gray_vein_creeper",
  LIME_VEIN_CREEPER = "lime_vein_creeper",
  LLAMA = "llama",
  LOBBER_DROWNED = "lobber_drowned",
  LOBBER_ZOMBIE = "lobber_zombie",
  MAGENTA_VEIN_CREEPER = "magenta_vein_creeper",
  MAGMA_COW = "magma_cow",
  MAGMA_CUBE = "magma_cube",
  MELON_GOLEM = "melon_golem",
  MOOBLOOM = "moobloom",
  MOOLIP = "moolip",
  MOOSHROOM = "mooshroom",
  MOTHER_LAVA_SQUID = "mother_lava_squid",
  MULE = "mule",
  OCELOT = "ocelot",
  OPALESCENT_EYE = "opalescent_eye",
  ORANGE_VEIN_CREEPER = "orange_vein_creeper",
  OVERGROWN_SKELETON = "overgrown_skeleton",
  PANDA = "panda",
  PARROT = "parrot",
  PHANTOM = "phantom",
  PIG = "pig",
  PIGLIN = "piglin",
  PIGLIN_BRUTE = "piglin_brute",
  PILLAGER = "pillager",
  PINK_VEIN_CREEPER = "pink_vein_creeper",
  POLAR_BEAR = "polar_bear",
  PUFFERFISH = "pufferfish",
  PURPLE_VEIN_CREEPER = "purple_vein_creeper",
  RABBIT = "rabbit",
  RAVAGER = "ravager",
  RED_CHU_CHU = "red_chu_chu",
  RED_VEIN_CREEPER = "red_vein_creeper",
  SALMON = "salmon",
  SHEEP = "sheep",
  SHRIMP = "shrimp",
  SHULKER = "shulker",
  SILVERFISH = "silverfish",
  SKELETON = "skeleton",
  SKELETON_HORSE = "skeleton_horse",
  SKELETON_WOLF = "skeleton_wolf",
  SLIME = "slime",
  SNIFFER = "sniffer",
  SNOW_GOLEM = "snow_golem",
  SPIDER = "spider",
  SQUID = "squid",
  STARBUNCLE = "starbuncle",
  STRAY = "stray",
  STRAY_BONE_SPIDER = "stray_bone_spider",
  STRIDER = "strider",
  SWAMP_ZOMBIE = "swamp_zombie",
  TADPOLE = "tadpole",
  TEACUP_PIG = "teacup_pig",
  TRADER_LLAMA = "trader_llama",
  TROPICAL_FISH = "tropical_fish",
  TROPICAL_SLIME = "tropical_slime",
  TUNA = "tuna",
  TURTLE = "turtle",
  UMBRA_COW = "umbra_cow",
  VEX = "vex",
  VILER_WITCH = "viler_witch",
  VILLAGER = "villager",
  VINDICATOR = "vindicator",
  WANDERING_TRADER = "wandering_trader",
  WANDERING_WINEMAKER = "wandering_winemaker",
  WARDEN = "warden",
  WHIRLISPRIG = "whirlisprig",
  WHITE_VEIN_CREEPER = "white_vein_creeper",
  WITCH = "witch",
  WITHER = "wither",
  WITHER_SKELETON = "wither_skeleton",
  WITHER_SKELETON_WOLF = "wither_skeleton_wolf",
  WOLF = "wolf",
  WOOLY_COW = "wooly_cow",
  YELLOW_VEIN_CREEPER = "yellow_vein_creeper",
  ZOGLIN = "zoglin",
  ZOMBIE = "zombie",
  ZOMBIE_HORSE = "zombie_horse",
  ZOMBIE_VILLAGER = "zombie_villager",
  ZOMBIFIED_PIG = "zombified_pig",
  ZOMBIFIED_PIGLIN = "zombified_piglin"

  // !THIS SECTION IS MANAGED BY A SCRIPT. DO NOT MANUALLY EDIT THIS SECTION!
  // MobStage GENERATOR END
}
