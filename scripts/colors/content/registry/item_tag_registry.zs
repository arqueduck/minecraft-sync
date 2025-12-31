import crafttweaker.api.bracket.ResourceLocationBracketHandler;

public enum ColoredItemTag {
  ColoredProcessingItem = "colored_processing_item",
}

ContentBuilder.factory
  .registerItemTag(ColoredItemTag.ColoredProcessingItem, (color) => {
    val resourceLocation = ResourceLocationBracketHandler.getResourceLocation("skyfactory_5:colors/processing_items/" + color.getResourceName());
    return <tagmanager:items>.tag(resourceLocation);
  });
