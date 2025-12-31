// Crushing Recipes
ContentBuilder.factory
  .addRecipeGenerator("_items_to_dye_crushing", (baseName, args) => {
    val dye = args.getItem(ColoredItem.Dye);
    val coloredProcessingItemTag = args.getItemTag(ColoredItemTag.ColoredProcessingItem);

    if dye == null || coloredProcessingItemTag == null {
      return;
    }

    <recipetype:create:crushing>.addRecipe(
      args.color.getResourceName() + baseName,
      [
        dye,
        dye % 50,
        dye % 15
      ],
      coloredProcessingItemTag.asIIngredient(),
      75
    );
  });

// Milling Recipes
ContentBuilder.factory
  .addRecipeGenerator("_items_to_dye_milling", (baseName, args) => {
    val dye = args.getItem(ColoredItem.Dye);
    val coloredProcessingItemTag = args.getItemTag(ColoredItemTag.ColoredProcessingItem);

    if dye == null || coloredProcessingItemTag == null {
      return;
    }

    <recipetype:create:milling>.addRecipe(
      args.color.getResourceName() + baseName,
      [
        dye,
        dye % 35
      ],
      coloredProcessingItemTag.asIIngredient(),
      100
    );
  })
  .addRecipeGenerator("_wool", (baseName, args) => {
    val dye = args.getItem(ColoredItem.Dye);
    val woolItem = args.getItem(ColoredItem.Wool);

    if dye == null || woolItem == null {
      return;
    }

    <recipetype:create:milling>.addRecipe(
      args.color.getResourceName() + baseName,
      [
        <item:minecraft:string>,
        dye % 25
      ],
      woolItem,
      100
    );
  });

// Mixing Recipes
ContentBuilder.factory
  .addRecipeGenerator("fluid_mixing_water_to_dye_", (baseName, args) => {
    val dye = args.getItem(ColoredItem.Dye);
    val water = args.getWater();

    if dye == null || water == null {
      return;
    }

    <recipetype:create:mixing>.addRecipe(
      baseName + args.color.getResourceName(),
      <constant:create:heat_condition:none>,
      [water * 1000],
      [dye],
      [<fluid:minecraft:water> * 1000],
      100
    );
  })
  .addRecipeGenerator("water_and_sand_to_dye_", (baseName, args) => {
    val dyeBlockItem = args.getItem(ColoredItem.DyeBlock);
    val water = args.getWater();

    if dyeBlockItem == null || water == null {
      return;
    }

    <recipetype:create:mixing>.addRecipe(
      baseName + args.color.getResourceName(),
      <constant:create:heat_condition:none>,
      [dyeBlockItem],
      [<tag:items:forge:sand>],
      [water * 1000],
      100
    );
  });
