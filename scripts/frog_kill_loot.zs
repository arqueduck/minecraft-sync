import crafttweaker.api.loot.modifier.CommonLootModifiers;
import crafttweaker.api.loot.condition.LootConditions;
import crafttweaker.api.loot.condition.EntityPropertyLootCondition;
import crafttweaker.api.predicate.EntityPredicate;
import crafttweaker.api.entity.EntityType;
import crafttweaker.api.entity.Entity;

// val noFrogDrops = [<entitytype:minecraft:slime>] as EntityType<Entity>[];
val noFrogDrops = [] as EntityType<Entity>[];

loot.modifiers.register(
  "frog_drops",
  LootConditions.allOf(
    EntityPropertyLootCondition.create(<constant:minecraft:entitytarget:killer>, EntityPredicate.create(<entitytype:minecraft:frog>))
  ),
  (drops, ctx) => {
    if drops.length > 0 && ctx.thisEntity is Entity {
      val entity = ctx.thisEntity as Entity;
      if !(entity.type in noFrogDrops) {
        drops.add(<item:gateways:gate_pearl>.withTag({gateway: "gateways:titan/" + entity.registryName.path}));
      }
    }
    return drops;
  }
);

// Adds entities to Frog kill tag
for mob in Globals.stagedMobs {
  <tag:entity_types:minecraft:frog_food>.add(mob);
}
