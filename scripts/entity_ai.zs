import crafttweaker.api.entity.Entity;
import crafttweaker.api.entity.EntityType;
import mods.angrymobs.AITweaks;
// Villagers and Wandering Traders need to be given a lower speed
// due to 1.0F making them, uniquely way too fast
AITweaks.addMeleeAttackTweak(<entitytype:minecraft:giant>, 1, 1.0F, 1.0D, false);
AITweaks.addMeleeAttackTweak(<entitytype:minecraft:villager>, 1, 0.5F, 4.5D, false);
AITweaks.addMeleeAttackTweak(<entitytype:minecraft:wandering_trader>, 1, 0.5F, 4.5D, false);
AITweaks.addMeleeAttackTweak(<entitytype:vinery:wandering_winemaker>, 1, 0.5F, 4.5D, false);


AITweaks.addLeapTweak(<entitytype:minecraft:villager>, 2, 0.3F);
AITweaks.addLeapTweak(<entitytype:minecraft:wandering_trader>, 2, 0.3F);
AITweaks.addLeapTweak(<entitytype:vinery:wandering_winemaker>, 2, 0.3F);

// Melee
AITweaks.addMeleeAttackTweak(<entitytype:vinery:mule>, 1, 1.0F, 4.5D, false);
AITweaks.addMeleeAttackTweak(<entitytype:colourfulllamas:llama>, 1, 1.0F, 4.5D, false);
AITweaks.addMeleeAttackTweak(<entitytype:minecraft:sniffer>, 1, 1.0F, 21.0D, false);
AITweaks.addMeleeAttackTweak(<entitytype:minecraft:parrot>, 1, 4.5F, 3.5D, false);
AITweaks.addMeleeAttackTweak(<entitytype:waddles:adelie_penguin>, 1, 1.0F, 16.0D, false);
AITweaks.addMeleeAttackTweak(<entitytype:earthmobsmod:hyper_rabbit>, 1, 1.0F, 12.0D, false);
AITweaks.addLeapTweak(<entitytype:vinery:mule>, 2, 0.3F);
AITweaks.addLeapTweak(<entitytype:colourfulllamas:llama>, 2, 0.3F);
AITweaks.addLeapTweak(<entitytype:minecraft:sniffer>, 2, 0.2F);
AITweaks.addLeapTweak(<entitytype:minecraft:parrot>, 2, 0.3F);
AITweaks.addLeapTweak(<entitytype:waddles:adelie_penguin>, 2, 0.3F);
AITweaks.addLeapTweak(<entitytype:earthmobsmod:hyper_rabbit>, 2, 0.3F);

// Ranged Entities
// Egg Throw
AITweaks.addProjectileAttackTweak(<entitytype:earthmobsmod:cluck_shroom>, <entitytype:earthmobsmod:smelly_egg>, "minecraft:entity.egg.throw", 1, 3.0F, 1.0F);
AITweaks.addProjectileAttackTweak(<entitytype:earthmobsmod:duck>, <entitytype:earthmobsmod:duck_egg>, "minecraft:entity.egg.throw", 1, 3.0F, 1.0F);
AITweaks.addProjectileAttackTweak(<entitytype:minecraft:chicken>, <entitytype:minecraft:egg>, "minecraft:entity.egg.throw", 1, 3.0F, 1.0F);
AITweaks.addProjectileAttackTweak(<entitytype:earthmobsmod:fancy_chicken>, <entitytype:earthmobsmod:fancy_egg>, "minecraft:entity.egg.throw", 1, 1.0F, 1.0F);
AITweaks.addProjectileAttackTweak(<entitytype:forcecraft:cold_chicken>, <entitytype:minecraft:egg>, "minecraft:entity.egg.throw", 1, 3.0F, 1.0F);

// Llama Spit
AITweaks.addProjectileAttackTweak(<entitytype:minecraft:camel>, <entitytype:minecraft:llama_spit>, "minecraft:entity.llama.spit", 1, 4.0F, 4.0F);
AITweaks.addProjectileAttackTweak(<entitytype:minecraft:parrot>, <entitytype:minecraft:llama_spit>, "minecraft:entity.llama.spit", 1, 4.0F, 4.0F);
AITweaks.addProjectileAttackTweak(<entitytype:minecraft:strider>, <entitytype:minecraft:llama_spit>, "minecraft:entity.llama.spit", 1, 4.0F, 4.0F);
AITweaks.addProjectileAttackTweak(<entitytype:minecraft:panda>, <entitytype:minecraft:llama_spit>, "minecraft:entity.llama.spit", 1, 4.0F, 4.0F);
AITweaks.addProjectileAttackTweak(<entitytype:minecraft:allay>, <entitytype:minecraft:llama_spit>, "minecraft:entity.llama.spit", 1, 4.0F, 4.0F);
AITweaks.addProjectileAttackTweak(<entitytype:colourfulllamas:llama>, <entitytype:minecraft:llama_spit>, "minecraft:entity.llama.spit", 1, 8.0F, 4.0F);
AITweaks.addProjectileAttackTweak(<entitytype:ars_nouveau:whirlisprig>, <entitytype:minecraft:llama_spit>, "minecraft:entity.llama.spit", 1, 8.0F, 6.0F);
AITweaks.addLeapTweak(<entitytype:ars_nouveau:whirlisprig>, 2, 0.3F);

// Trident Throw
AITweaks.addProjectileAttackTweak(<entitytype:minecraft:salmon>, <entitytype:minecraft:trident>, "minecraft:item.trident.throw", 1, 1.0F, 1.0F);
AITweaks.addProjectileAttackTweak(<entitytype:sushigocrafting:tuna>, <entitytype:minecraft:trident>, "minecraft:item.trident.throw", 1, 4.0F, 1.0F);
AITweaks.addProjectileAttackTweak(<entitytype:minecraft:dolphin>, <entitytype:minecraft:trident>, "minecraft:item.trident.throw", 1, 4.0F, 1.0F);
AITweaks.addProjectileAttackTweak(<entitytype:minecraft:cod>, <entitytype:minecraft:trident>, "minecraft:item.trident.throw", 1, 1.0F, 1.0F);
AITweaks.addProjectileAttackTweak(<entitytype:minecraft:tadpole>, <entitytype:minecraft:trident>, "minecraft:item.trident.throw", 1, 1.0F, 1.0F);
AITweaks.addProjectileAttackTweak(<entitytype:minecraft:pufferfish>, <entitytype:minecraft:trident>, "minecraft:item.trident.throw", 1, 1.0F, 1.0F);
AITweaks.addProjectileAttackTweak(<entitytype:minecraft:glow_squid>, <entitytype:minecraft:trident>, "minecraft:item.trident.throw", 1, 1.0F, 1.0F);
AITweaks.addProjectileAttackTweak(<entitytype:minecraft:tropical_fish>, <entitytype:minecraft:trident>, "minecraft:item.trident.throw", 1, 1.0F, 1.0F);
AITweaks.addProjectileAttackTweak(<entitytype:minecraft:squid>, <entitytype:minecraft:trident>, "minecraft:item.trident.throw", 1, 1.0F, 1.0F);
AITweaks.addProjectileAttackTweak(<entitytype:sushigocrafting:shrimp>, <entitytype:minecraft:trident>, "minecraft:item.trident.throw", 1, 1.0F, 1.0F);
AITweaks.addLeapTweak(<entitytype:minecraft:salmon>, 2, 0.3F);
AITweaks.addLeapTweak(<entitytype:sushigocrafting:tuna>, 2, 0.3F);
AITweaks.addLeapTweak(<entitytype:minecraft:dolphin>, 2, 0.3F);
AITweaks.addLeapTweak(<entitytype:minecraft:cod>, 2, 0.3F);
AITweaks.addLeapTweak(<entitytype:minecraft:tadpole>, 2, 0.3F);
AITweaks.addLeapTweak(<entitytype:minecraft:pufferfish>, 2, 0.3F);
AITweaks.addLeapTweak(<entitytype:minecraft:glow_squid>, 2, 0.3F);
AITweaks.addLeapTweak(<entitytype:minecraft:tropical_fish>, 2, 0.3F);
AITweaks.addLeapTweak(<entitytype:minecraft:squid>, 2, 0.3F);
AITweaks.addLeapTweak(<entitytype:sushigocrafting:shrimp>, 2, 0.3F);

// Ender Pearl
AITweaks.addMeleeAttackTweak(<entitytype:minecraft:bat>, 1, 0.05F, 2.0D, false);
AITweaks.addProjectileAttackTweak(<entitytype:minecraft:bat>, <entitytype:minecraft:ender_pearl>, "minecraft:entity.snowball.throw", 2, 1.0F, 0.75F);


// AITweaks.addProjectileAttackTweak(<entitytype:minecraft:zombie>, <entitytype:minecraft:potion>.addTag({Potion: "minecraft:long_weakness"}), "minecraft:entity.snowball.throw", 2, 1.0F, 0.75F);


// .withTag({Potion: "minecraft:long_weakness"})
// <item:minecraft:splash_potion>

// Egg
// Snowball
// Ender Pearl
// Trident
// Arrow
// Tipped Arrow
// Spectral Arrow
// Splash Potion
// Lingering Potion
// Llama Spit
// Experience Bottle

val denyList as EntityType<Entity>[] = [
  <entitytype:minecraft:snow_golem>,
  <entitytype:minecraft:villager>,
  <entitytype:minecraft:wandering_trader>,
  <entitytype:veincreeper:purple>,
  <entitytype:veincreeper:black>,
  <entitytype:veincreeper:blue>,
  <entitytype:veincreeper:brown>,
  <entitytype:veincreeper:cyan>,
  <entitytype:veincreeper:gray>,
  <entitytype:veincreeper:green>,
  <entitytype:veincreeper:light_blue>,
  <entitytype:veincreeper:light_gray>,
  <entitytype:veincreeper:lime>,
  <entitytype:veincreeper:magenta>,
  <entitytype:veincreeper:orange>,
  <entitytype:veincreeper:pink>,
  <entitytype:veincreeper:red>,
  <entitytype:veincreeper:white>,
  <entitytype:veincreeper:yellow>,
  <entitytype:minecraft:bat>,
  <entitytype:minecraft:sniffer>
];

for mob in Globals.stagedMobs {
  if !mob.getCategory().isFriendly() || mob in denyList {
    continue;
  }
  AITweaks.addLeapTweak(mob, 2, 0.3F);
  AITweaks.addMeleeAttackTweak(mob, 1, 1.0F, 4.5D, false);
}
