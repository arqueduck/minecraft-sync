import crafttweaker.forge.api.event.interact.EntityInteractEvent;
import crafttweaker.api.entity.type.animal.Animal;

// //
// Block attributes
// //
// Trophy protection from explosions
<block:obtrophies:trophy>.setExplosionResistance(1200);


// //
// Blocking breedable entities from being fed
// when they spawn from a Gateway
// //


events.register<EntityInteractEvent>(event => {
  var entity = event.target;

  // If it's not an animal, do nothing
  if !(entity is Animal) {
    return;
  }

  var animal = entity as Animal;
  var stack = event.itemStack;
  var data = entity.data;

  // Check if the mob is spawned by a gateway
  if "gateways.owner" in data["ForgeData"] {
    if animal.isFood(stack) {
      event.cancel();
    }
  }
});


// Recipe removal test for Cooking for Blockheads debug
// craftingTable.removeByName("crafttweaker:shapeless_iron_axe");



// Debug recipes for testing
// mods.recipestages.Recipes.addShaped("debug_stage", "silent_tools_test", <item:minecraft:iron_leggings>,[[<item:minecraft:gold_ingot>, <item:minecraft:gold_ingot>, <item:minecraft:iron_ingot>],[<item:minecraft:iron_ingot>, <item:minecraft:air>, <item:minecraft:iron_ingot>],[<item:minecraft:iron_ingot>, <item:minecraft:air>, <item:silentgear:pickaxe>.withTag({SGear_UUID: [-1513530654, 2097039455, -1343663264, 537535244], SGear_Data: {Construction: {Parts: [{Item: {id: "silentgear:pickaxe_head", Count: 1, tag: {Damage: 0, Materials: [{Item: {id: "minecraft:diamond", Count: 1}, ID: "silentgear:diamond", Count: 3}]}}, ID: "silentgear:pickaxe_head"}, {Item: {id: "silentgear:rod", Count: 1, tag: {Materials: [{Item: {id: "minecraft:bamboo_planks", Count: 1}, ID: "silentgear:wood"}]}}, ID: "silentgear:rod"}]}, Properties: {ModVersion: "3.5.0", Stats: {"silentgear:charging_value": 0.8, "silentgear:enchantment_value": 10.0, "silentgear:harvest_speed": 8.0, "silentgear:attack_reach": 3.0, "silentgear:harvest_level": 3.0, "silentgear:durability": 1561.0, "silentgear:melee_damage": 4.0, "silentgear:magic_damage": 1.0, "silentgear:rarity": 69.99999, "silentgear:attack_speed": -2.8, "silentgear:repair_efficiency": 1.0}, LockStats: 0, Traits: [{Level: 2, Name: "silentgear:brittle"}, {Level: 1, Name: "silentgear:lustrous"}, {Level: 2, Name: "silentgear:flexible"}]}, Rendering: {Model: 3, ModelKey: "pickaxe:pickaxe_head{diamond,diamond,diamond},rod{wood},"}}})]]);



// Testing recipes using Cyclic Solidifier
// keep for modpack debug and testing
// var solidifier = <recipetype:cyclic:solidifier>;
// solidifier.addRecipe("megaman1", [<item:minecraft:sand>,<item:minecraft:birch_trapdoor>,<item:minecraft:sand>], <fluid:cyclic:honey>*100, <item:minecraft:stone_hoe>, 200, 8);


// Recipes made for player convenience
// NEEDS TO ADDED TO A SEPARATE FILE NAMED "Convenience Recipes"
craftingTable.addShaped(
  "hopper_logs",
  <item:minecraft:hopper>,
  [
    [<item:minecraft:iron_ingot>, <tag:items:minecraft:logs>, <item:minecraft:iron_ingot>],
    [<item:minecraft:iron_ingot>, <tag:items:minecraft:logs>, <item:minecraft:iron_ingot>],
    [<item:minecraft:air>, <item:minecraft:iron_ingot>, <item:minecraft:air>]
  ]
);

// craftingTable.addShapeless("chop_ingot", <item:minecraft:gold_nugget> * 10, [<item:minecraft:gold_ingot>, <item:minecraft:flint>]);

// craftingTable.addShapeless("cfb_test", <item:minecraft:iron_pickaxe>, [
//    <item:minecraft:stick>, <item:minecraft:stick>, <item:minecraft:iron_ingot>, <item:minecraft:iron_ingot>, <item:minecraft:iron_ingot>]);





// //
// Converts all recipes in-game to be shapeless recipes
// //
// import crafttweaker.api.recipe.type.Recipe;
// import crafttweaker.api.world.Container;
// import crafttweaker.api.recipe.type.ShapedRecipe;
// import stdlib.List;
// import crafttweaker.api.ingredient.IIngredient;
//
// for recipe in craftingTable.allRecipes {
//    var craftingRecipe = recipe as Recipe<Container>;
//    if craftingRecipe is ShapedRecipe {
//        var ingredients = (craftingRecipe.ingredients as IIngredient[]).filter(ingr => !ingr.empty);
//        craftingTable.removeByName(craftingRecipe.id);
//        craftingTable.addShapeless("shapeless_" + craftingRecipe.id.path, craftingRecipe.resultItem, ingredients);
//    }
// }



// Stage helper for staging loot tables
// Examples for how to give player's stages on events

// import mods.gamestages.StageHelper;
//
// StageHelper.grantStageWhenCrafting(<item:minecraft:stick>, "craft_example_one");
// StageHelper.grantStageOnKill(<entitytype:minecraft:creeper>, "kill_example_one");
// StageHelper.grantStageOnAdvancement("minecraft:story/enter_the_nether", "advancement_example_one");

// OnAdvancement, OnCraft, OnDimension, OnJoin, OnKill, and OnLevel



// Script used to get entity health data
// import crafttweaker.api.entity.Entity;
// import crafttweaker.api.entity.LivingEntity;
//
// events.register<crafttweaker.forge.api.event.entity.living.LivingJumpEvent>(event => {
//    var level = event.entity.level;
//
//    for entity in game.getEntityTypes() {
//        var newEnt = entity.create(level);
//        if newEnt is LivingEntity {
//            var liv = newEnt as Entity as LivingEntity;
//            println(entity.registryName as string);
//            // println(liv.maxHealth);
//            println(100 / liv.maxHealth);
//        }
//    }
// });
//
