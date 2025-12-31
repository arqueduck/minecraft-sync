#modloaded extractinator

import crafttweaker.api.data.IData;
import crafttweaker.api.data.ListData;
import crafttweaker.api.data.MapData;
import crafttweaker.api.item.IItemStack;
import stdlib.List;

public class ExtractinatorDrop {
  private val item as IItemStack;

  private val dropChance as float;

  private val minDropCount as int = -1;
  private val maxDropCount as int = -1;

  public this(
    item as IItemStack,
    dropChance as float
  ) {
    this.item = item;
    this.dropChance = dropChance;
  }

  public this(
    item as IItemStack,
    dropChance as float,
    minDropCount as int,
    maxDropCount as int
  ) {
    this.item = item;
    this.dropChance = dropChance;
    this.minDropCount = minDropCount;
    this.maxDropCount = maxDropCount;
  }

  public asData(): IData {
    val result: MapData = {
      drop: this.item.registryName.toString(),
      drop_chance: this.dropChance,
    };

    if this.minDropCount > -1 {
      result.put("min_drop_count", this.minDropCount);
    }
    if this.maxDropCount > -1 {
      result.put("max_drop_count", this.maxDropCount);
    }

    return result as IData;
  }
}

public class Extractinator {
  public static addRecipe(recipeName: string, input: IItemStack, outputs: ExtractinatorDrop[]): void {
    val dropsData = new List<IData>();

    for output in outputs {
      dropsData.add(output.asData());
    }

    val recipe: IData = {
      input: input as MapData,
      drops: new ListData(dropsData)
    };

    <recipetype:extractinator:extractinating>.addJsonRecipe(recipeName, recipe);
  }
}
