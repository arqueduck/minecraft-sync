import crafttweaker.api.item.IItemStack;

public function getEssenceForTier(tier: int): IItemStack? {
  switch tier {
    case 1:
      return <item:mysticalagriculture:inferium_essence>;
    case 2:
      return <item:mysticalagriculture:prudentium_essence>;
    case 3:
      return <item:mysticalagriculture:tertium_essence>;
    case 4:
      return <item:mysticalagriculture:imperium_essence>;
    case 5:
      return <item:mysticalagriculture:imperium_essence>;
  }

  return null;
}
