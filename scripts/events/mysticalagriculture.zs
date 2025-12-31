import collections.HashSet;
import crafttweaker.api.block.Block;
import crafttweaker.api.block.BlockState;
import crafttweaker.forge.api.event.interact.RightClickBlockEvent;

val dyeToCropMapping: Block[string] = {};

for colorName, color in Globals.colors {
  if colorName == ColorName.None || colorName == ColorName.LightBrown {
    continue;
  }

  dyeToCropMapping["minecraft:" + color.getResourceName() + "_dye"] = <block:mysticalagriculture:${color.getResourceName()}_crop_crop>;
}

val crops = new HashSet<Block>();

// Allow dying colorless crop to a color
crops.add(<block:mysticalagriculture:none_crop_crop>);

for dye, crop in dyeToCropMapping {
  crops.add(crop);
}

events.register<RightClickBlockEvent>(event => {
  val level = event.entity.level;
  val pos = event.blockPos;

  if level.isClientSide {
    // Do nothing on the client
    return;
  }

  if !(event.itemStack.registryName in dyeToCropMapping) {
    return;
  }

  val blockState = level.getBlockState(pos);

  if blockState.block in crops && blockState.block != dyeToCropMapping[event.itemStack.registryName] {
    var newBlockState = dyeToCropMapping[event.itemStack.registryName].getDefaultState();

    for key, value in blockState.getProperties() {
      newBlockState = newBlockState.withProperty(key, value);
    }

    level.setBlockAndUpdate(pos, newBlockState);
    event.entity.setItemInHand(event.hand, event.itemStack.shrink());
  }
});
