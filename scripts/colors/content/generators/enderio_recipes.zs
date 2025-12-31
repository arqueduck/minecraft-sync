ContentBuilder.factory
  .addRecipeGenerator("_dye_from_processing_items", (baseName, args) => {
    val dye = args.getItem(ColoredItem.Dye);
    val coloredProcessingItemTag = args.getItemTag(ColoredItemTag.ColoredProcessingItem);

    if dye == null || coloredProcessingItemTag == null {
      return;
    }

    EnderIOSagMill.addRecipe(
      args.color.getResourceName() + baseName,
      coloredProcessingItemTag,
      [
        dye,
        dye % 50,
        dye % 15,
      ],
      500
    );
  });
