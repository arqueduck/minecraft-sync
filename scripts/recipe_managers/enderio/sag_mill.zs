#modloaded enderio

import crafttweaker.api.data.IData;
import crafttweaker.api.data.ListData;
import crafttweaker.api.data.MapData;
import crafttweaker.api.ingredient.IIngredientWithAmount;
import crafttweaker.api.item.IItemStack;
import crafttweaker.api.item.ItemDefinition;
import crafttweaker.api.tag.type.KnownTag;
import crafttweaker.api.util.random.Percentaged;
import stdlib.List;

public class EnderIOSagMill {
  public static addRecipe(recipeName: string, input: IItemStack, outputs: Percentaged<IItemStack>[], energy: int): void {
    val recipe: IData = {
      energy: energy,
      input: {
        item: input.registryName
      },
      outputs: DataConverter.convertPercentagedItemStackArray(outputs)
    };

    <recipetype:enderio:sag_milling>.addJsonRecipe(recipeName, recipe);
  }

  public static addRecipe(recipeName: string, input: KnownTag<ItemDefinition>, outputs: Percentaged<IItemStack>[], energy: int): void {
    val recipe: IData = {
      energy: energy,
      input: {
        tag: input.id()
      },
      outputs: DataConverter.convertPercentagedItemStackArray(outputs)
    };

    <recipetype:enderio:sag_milling>.addJsonRecipe(recipeName, recipe);
  }
}
