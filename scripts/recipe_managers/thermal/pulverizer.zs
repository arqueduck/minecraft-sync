#modloaded thermal

import crafttweaker.api.data.IData;
import crafttweaker.api.data.ListData;
import crafttweaker.api.data.MapData;
import crafttweaker.api.ingredient.IIngredientWithAmount;
import crafttweaker.api.item.IItemStack;
import crafttweaker.api.item.ItemDefinition;
import crafttweaker.api.tag.type.KnownTag;
import crafttweaker.api.util.random.Percentaged;
import stdlib.List;

import crafttweaker.api.tag.type.KnownTag;
import crafttweaker.api.item.ItemDefinition;

public class ThermalExpansionPulverizer {
  public static addRecipe(recipeName: string, input: IItemStack, outputs: Percentaged<IItemStack>[], experience: float): void {
    val recipe: IData = {
      experience: experience,
      input: {
        item: input.registryName
      },
      outputs: DataConverter.convertPercentagedItemStackArray(outputs)
    };

    <recipetype:thermal:pulverizer>.addJsonRecipe(recipeName, recipe);
  }

  public static addRecipe(recipeName: string, input: KnownTag<ItemDefinition>, outputs: Percentaged<IItemStack>[], experience: float): void {
    val recipe: IData = {
      experience: experience,
      input: DataConverter.convertItemTag(input),
      outputs: DataConverter.convertPercentagedItemStackArray(outputs)
    };

    <recipetype:thermal:pulverizer>.addJsonRecipe(recipeName, recipe);
  }
}
