import crafttweaker.api.data.IData;
import crafttweaker.api.data.ListData;
import crafttweaker.api.data.MapData;
import crafttweaker.api.ingredient.IIngredientWithAmount;
import crafttweaker.api.item.IItemStack;
import crafttweaker.api.util.random.Percentaged;
import stdlib.List;

import crafttweaker.api.tag.type.KnownTag;
import crafttweaker.api.item.ItemDefinition;

public class DataConverter {
  public static convertItemStackArray(items: IItemStack[]): ListData {
    val itemsData = new List<IData>();

    for item in items {
      itemsData.add(convertItemStack(item));
    }

    return new ListData(itemsData);
  }

  public static convertPercentagedItemStackArray(items: Percentaged<IItemStack>[]): ListData {
    val itemsData = new List<IData>();

    for item in items {
      itemsData.add(convertPercentagedItemStack(item));
    }

    return new ListData(itemsData);
  }

  public static convertItemStack(item: IItemStack): MapData {
    val itemData: MapData = new MapData();

    itemData.put("item", item.registryName);

    if item is IIngredientWithAmount {
      itemData.put("count", (item as IIngredientWithAmount).amount);
    }

    val itemNBT = item.getOrCreateTag();
    if !itemNBT.isEmpty() {
      itemData.put("nbt", itemNBT);
    }

    return itemData;
  }

  public static convertPercentagedItemStack(item: Percentaged<IItemStack>): MapData {
    val itemData: MapData = this.convertItemStack(item.getData());

    itemData.put("chance", item.getPercentage());

    return itemData;
  }

  public static convertItemTag(tag: KnownTag<ItemDefinition>): MapData {
    val tagData: MapData = new MapData();

    tagData.put("tag", tag.id.toString());

    return tagData;
  }
}
