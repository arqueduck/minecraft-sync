import crafttweaker.api.tag.MCTag;

public class ItemTagEntry {
  val itemTagName as ColoredItemTag : get;
  private val cb as function(color as Color) as MCTag?;

  public this(itemTagName: ColoredItemTag, cb as function(color as Color) as MCTag?) {
    this.itemTagName = itemTagName;
    this.cb = cb;
  }

  public callCallback(color as Color): MCTag? {
    return (this.cb as function(color as Color) as MCTag?)(color);
  }
}
