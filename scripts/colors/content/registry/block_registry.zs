import crafttweaker.api.bracket.BracketHandlers;

public enum ColoredBlock {
  Leaves = "leaves"
}

// TODO: There is a bug in ZenCode that prevents us from implementing this. See the block_entry.zs file.
// ContentBuilder.factory
//   .registerBlock(ColoredBlock.Leaves, (color) => {
//     return BracketHandlers.getBlock("colouredstuff:leaves_" + color.getResourceName());
//   });
