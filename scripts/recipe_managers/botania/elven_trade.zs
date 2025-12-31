#modloaded botania

import crafttweaker.api.data.IData;
import crafttweaker.api.data.ListData;
import crafttweaker.api.ingredient.IIngredient;
import crafttweaker.api.item.IItemStack;
import stdlib.List;

public class BotaniaElvenTrade {
  public static addRecipe(recipeName: string, inputs: IIngredient[], outputs: IItemStack[]): void {
    val inputsData = new List<IData>();
    for input in inputs {
      inputsData.add(input as IData);
    }

    val outputsData = new List<IData>();
    for output in outputs {
      outputsData.add(output as IData);
    }

    val recipe: IData = {
      ingredients: new ListData(inputsData),
      output: new ListData(outputsData)
    };

    <recipetype:botania:elven_trade>.addJsonRecipe(recipeName, recipe);
  }
}
