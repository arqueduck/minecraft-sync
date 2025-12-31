import crafttweaker.api.block.Block;
import crafttweaker.api.fluid.Fluid;
import crafttweaker.api.fluid.IFluidStack;
import crafttweaker.api.item.IItemStack;
import crafttweaker.api.item.ItemDefinition;
import crafttweaker.api.tag.MCTag;
import crafttweaker.api.tag.type.KnownTag;
import stdlib.List;

public class ColoredContentFactory {
  private static val supportedColors as Color[] = [
    Globals.colors[ColorName.None],

    Globals.colors[ColorName.Black],
    Globals.colors[ColorName.Blue],
    Globals.colors[ColorName.Brown],
    Globals.colors[ColorName.Cyan],
    Globals.colors[ColorName.Gray],
    Globals.colors[ColorName.Green],
    Globals.colors[ColorName.LightBlue],
    Globals.colors[ColorName.LightGray],
    Globals.colors[ColorName.Lime],
    Globals.colors[ColorName.Magenta],
    Globals.colors[ColorName.Orange],
    Globals.colors[ColorName.Pink],
    Globals.colors[ColorName.Purple],
    Globals.colors[ColorName.Red],
    Globals.colors[ColorName.White],
    Globals.colors[ColorName.Yellow]
  ] as Color[];

  // TODO: There is a bug in ZenCode that prevents us from implementing this. See the block_entry.zs file.
  // private val blockGetters as BlockEntry[ColoredBlock] = {} as BlockEntry[ColoredBlock];

  private val itemGetters as ItemEntry[ColoredItem] = {} as ItemEntry[ColoredItem];

  private val fluidTagGetters as FluidTagEntry[ColoredFluidTag] = {} as FluidTagEntry[ColoredFluidTag];
  private val itemTagGetters as ItemTagEntry[ColoredItemTag] = {} as ItemTagEntry[ColoredItemTag];

  private var waterGetter as FluidEntry? = null;

  private val lootModifierGenerators as List<LootModifierEntry> = new List<LootModifierEntry>();
  private val recipeGenerators as List<RecipeEntry> = new List<RecipeEntry>();

  // TODO: There is a bug in ZenCode that prevents us from implementing this. See the block_entry.zs file.
  // public registerBlock(blockName as ColoredBlock, blockGetter as function(color as Color) as Block?): ColoredContentFactory {
  //   blockGetters[blockName] = new BlockEntry(blockName, blockGetter);

  //   return this;
  // }

  public registerFluidTag(fluidTagName as ColoredFluidTag, getter as function(color as Color) as MCTag?): ColoredContentFactory {
    fluidTagGetters[fluidTagName] = new FluidTagEntry(fluidTagName, getter);

    return this;
  }

  public registerItem(itemName as ColoredItem, itemGetter as function(color as Color) as IItemStack?): ColoredContentFactory {
    itemGetters[itemName] = new ItemEntry(itemName, itemGetter);

    return this;
  }

  public registerItemTag(itemTagName as ColoredItemTag, getter as function(color as Color) as MCTag?): ColoredContentFactory {
    itemTagGetters[itemTagName] = new ItemTagEntry(itemTagName, getter);

    return this;
  }

  public addLootModifierGenerator(
    baseName: string,
    generator: function(baseName as string, args as ColoredContentGeneratorCallbackArgs) as void
  ): ColoredContentFactory {
    lootModifierGenerators.add(new LootModifierEntry(baseName, generator));

    return this;
  }

  public addRecipeGenerator(
    baseName: string,
    generator: function(baseName as string, args as ColoredContentGeneratorCallbackArgs) as void
  ): ColoredContentFactory {
    recipeGenerators.add(new RecipeEntry(baseName, generator));

    return this;
  }

  public registerWater(getter as function(color as Color) as IFluidStack?): ColoredContentFactory {
    waterGetter = new FluidEntry(getter);

    return this;
  }

  public build() as void {
    for color in ColoredContentFactory.supportedColors {
      val blocks as Block?[ColoredBlock] = {};
      // TODO: There is a bug in ZenCode that prevents us from implementing this. See the block_entry.zs file.
      // for block, entry in this.blockGetters {
      //   blocks[block] = entry.callCallback(color);
      // }

      val fluidTags as KnownTag<Fluid>?[ColoredFluidTag] = {};
      for fluidTag, entry in this.fluidTagGetters {
        val fluidTagResult = entry.callCallback(color);

        if fluidTagResult == null {
          fluidTags[fluidTag] = null;
        } else {
          fluidTags[fluidTag] = ((fluidTagResult as MCTag) as KnownTag<Fluid>);
        }
      }

      val items as IItemStack?[ColoredItem] = {};
      for item, entry in this.itemGetters {
        items[item] = entry.callCallback(color);
      }

      val itemTags as KnownTag<ItemDefinition>?[ColoredItemTag] = {};
      for itemTag, entry in this.itemTagGetters {
        val itemTagResult = entry.callCallback(color);

        if itemTagResult == null {
          itemTags[itemTag] = null;
        } else {
          itemTags[itemTag] = ((itemTagResult as MCTag) as KnownTag<ItemDefinition>);
        }
      }

      var water as IFluidStack? = null;
      if waterGetter != null {
        water = waterGetter.callCallback(color);
      }

      val args = new ColoredContentGeneratorCallbackArgs(
        color,
        blocks,
        items,
        fluidTags,
        itemTags,
        water
      );

      for lootModifierGenerator in lootModifierGenerators {
        lootModifierGenerator.callCallback(args);
      }

      for recipeGenerator in recipeGenerators {
        recipeGenerator.callCallback(args);
      }
    }
  }
}
