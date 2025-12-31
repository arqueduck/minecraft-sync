import crafttweaker.api.item.IItemStack;

public class ItemEntry {
  val itemName as ColoredItem : get;
  private val cb as function(color as Color) as IItemStack?;

  public this(itemName: ColoredItem, cb as function(color as Color) as IItemStack?) {
    this.itemName = itemName;
    this.cb = cb;
  }

  public callCallback(color as Color): IItemStack? {
    return (this.cb as function(color as Color) as IItemStack?)(color);
  }
}
