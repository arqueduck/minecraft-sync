import crafttweaker.api.block.Block;
import crafttweaker.api.fluid.Fluid;
import crafttweaker.api.fluid.IFluidStack;
import crafttweaker.api.item.IItemStack;
import crafttweaker.api.item.ItemDefinition;
import crafttweaker.api.tag.type.KnownTag;

public class ColoredContentGeneratorCallbackArgs {
  public val color as Color;

  private val blocks as Block?[ColoredBlock];
  private val items as IItemStack?[ColoredItem];

  private val fluidTags as KnownTag<Fluid>?[ColoredFluidTag];
  private val itemTags as KnownTag<ItemDefinition>?[ColoredItemTag];

  private var water as IFluidStack?;

  public this(
    color as Color,
    blocks as Block?[ColoredBlock],
    items as IItemStack?[ColoredItem],
    fluidTags as KnownTag<Fluid>?[ColoredFluidTag],
    itemTags as KnownTag<ItemDefinition>?[ColoredItemTag],
    water as IFluidStack?
  ) {
    this.color = color;

    this.blocks = blocks;
    this.items = items;

    this.fluidTags = fluidTags;
    this.itemTags = itemTags;

    this.water = water;
  }

  public getBlock(key as ColoredBlock) as Block? {
    return this.blocks[key];
  }

  public getItem(key as ColoredItem) as IItemStack? {
    val item = this.items[key];

    if item == null {
      return item;
    }

    return item.copy();
  }

  public getFluidTag(key as ColoredFluidTag) as KnownTag<Fluid>? {
    return this.fluidTags[key];
  }

  public getItemTag(key as ColoredItemTag) as KnownTag<ItemDefinition>? {
    return this.itemTags[key];
  }

  public getWater() as IFluidStack? {
    val water = this.water;

    if water == null {
      return water;
    }

    return water.copy();
  }
}
