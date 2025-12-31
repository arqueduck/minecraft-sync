import crafttweaker.api.recipe.type.CraftingRecipe;
import crafttweaker.api.recipe.type.Recipe;
import crafttweaker.api.world.Container;
import crafttweaker.api.item.IItemStack;

val slabRecipes as stdlib.List<Recipe<Container>> = craftingTable.getRecipesByOutput(<tag:items:skyfactory_5:slabs>);
for rec in slabRecipes {

    val output = rec.resultItem * 1;
    val input = rec.ingredients[0];
    if rec.ingredients.length == 3 && input is IItemStack {
        craftingTable.addShaped(rec.id.path + "_to_block", input as IItemStack, [[output], [output]]);
    }
}
