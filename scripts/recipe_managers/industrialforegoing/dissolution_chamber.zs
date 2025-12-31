#modloaded industrialforegoing

import crafttweaker.api.data.IData;
import crafttweaker.api.data.ListData;
import crafttweaker.api.data.MapData;
import crafttweaker.api.ingredient.IIngredient;
import crafttweaker.api.item.IItemStack;
import crafttweaker.api.fluid.IFluidStack;
import crafttweaker.api.data.StringData;
import stdlib.List;

public class IndustrialForegoingDissolutionChamber {
  public static addRecipe(recipeName: string, output: IItemStack, inputs: IIngredient[], inputFluid: IFluidStack, processingTime: int): void {
    val inputsData = new List<IData>();
    for input in inputs {
      inputsData.add(input as MapData);
    }

    val convertedFluid: MapData = {
      Amount: inputFluid.amount,
      FluidName: inputFluid.registryName.toString()
    };

    val recipe: IData = {
      input: new ListData(inputsData),
      inputFluid: convertedFluid.asString(),
      output: output as MapData,
      processingTime: processingTime
    };

    <recipetype:industrialforegoing:dissolution_chamber>.addJsonRecipe(recipeName, recipe);
  }
}
