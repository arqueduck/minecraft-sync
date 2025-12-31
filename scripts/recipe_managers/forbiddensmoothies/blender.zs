#modloaded forbiddensmoothies

import crafttweaker.api.data.IData;
import crafttweaker.api.data.ListData;
import crafttweaker.api.data.MapData;
import crafttweaker.api.ingredient.IIngredient;
import crafttweaker.api.item.IItemStack;
import stdlib.List;

public class ForbiddenSmoothiesBlender {
  public static addRecipe(recipeName: string, output: IItemStack, ingredients: IIngredient[], weight: int): void {
    val ingredientsData = new List<IData>();

    for ingredient in ingredients {
      ingredientsData.add(ingredient as MapData);
    }

    val recipe: IData = {
      weight: weight,
      ingredients: new ListData(ingredientsData),
      result: output as MapData
    };

    <recipetype:forbiddensmoothies:blender>.addJsonRecipe(recipeName, recipe);
  }
}
