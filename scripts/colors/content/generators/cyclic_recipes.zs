ContentBuilder.factory
  .addRecipeGenerator("_dye_macerator", (baseName, args) => {
    val dye = args.getItem(ColoredItem.Dye);
    val coloredProcessingItemTag = args.getItemTag(ColoredItemTag.ColoredProcessingItem);

    if dye == null || coloredProcessingItemTag == null {
      return;
    }

    <recipetype:cyclic:crusher>.addRecipe(
      args.color.getResourceName() + baseName,
      coloredProcessingItemTag.asIIngredient(),
      dye,
      5,
      100,
      dye,
      65
    );
  });
