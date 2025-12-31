import crafttweaker.api.tag.MCTag;

public class FluidTagEntry {
  val fluidTagName as ColoredFluidTag : get;
  private val cb as function(color as Color) as MCTag?;

  public this(fluidTagName: ColoredFluidTag, cb as function(color as Color) as MCTag?) {
    this.fluidTagName = fluidTagName;
    this.cb = cb;
  }

  public callCallback(color as Color): MCTag? {
    return (this.cb as function(color as Color) as MCTag?)(color);
  }
}
