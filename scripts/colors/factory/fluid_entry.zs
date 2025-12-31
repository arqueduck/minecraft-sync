import crafttweaker.api.fluid.IFluidStack;

public class FluidEntry {
  private val cb as function(color as Color) as IFluidStack?;

  public this(cb as function(color as Color) as IFluidStack?) {
    this.cb = cb;
  }

  public callCallback(color as Color): IFluidStack? {
    return (this.cb as function(color as Color) as IFluidStack?)(color);
  }
}
