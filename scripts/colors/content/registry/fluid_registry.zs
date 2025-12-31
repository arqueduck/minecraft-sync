import crafttweaker.api.bracket.ResourceLocationBracketHandler;

public enum ColoredFluidTag {
  Water = "water"
}

ContentBuilder.factory
  .registerFluidTag(ColoredFluidTag.Water, (color) => {
    val resourceLocation = ResourceLocationBracketHandler.getResourceLocation("skyfactory_5:" + color.getResourceName() + "_water");
    return <tagmanager:fluids>.tag(resourceLocation);
  });
