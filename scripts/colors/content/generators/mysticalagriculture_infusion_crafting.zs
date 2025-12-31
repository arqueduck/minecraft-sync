import crafttweaker.api.ingredient.IIngredient;
import crafttweaker.api.ingredient.type.IIngredientList;
import mods.mysticalagriculture.InfusionCrafting;
import stdlib.List;

ContentBuilder.factory
  .addRecipeGenerator("_seed_infusion", (baseName, args) => {
    val apple = args.getItem(ColoredItem.Apple);
    val dye = args.getItem(ColoredItem.Dye);
    val sapling = args.getItem(ColoredItem.Sapling);
    val seed = args.getItem(ColoredItem.Seed);

    val craftingEssence = getEssenceForTier(getTierForColor(args.color));
    val gateways = getGatewayTreeDropsForColor(args.color);

    if apple == null || dye == null || sapling == null || seed == null || craftingEssence == null {
      return;
    }

    val coloredItems = new List<IIngredient>();
    coloredItems.add(apple);
    coloredItems.add(dye);
    coloredItems.add(sapling);

    for gatewayID in gateways {
      coloredItems.add(<item:gateways:gate_pearl>.withTag({gateway: gatewayID}));
    }

    val coloredItemsInput = new IIngredientList(coloredItems as IIngredient[]);

    InfusionCrafting.addRecipe(
      args.color.getResourceName() + baseName,
      seed,
      [
       <item:mysticalagriculture:prosperity_seed_base>,
       coloredItemsInput,
       craftingEssence,
       coloredItemsInput,
       craftingEssence,
       coloredItemsInput,
       craftingEssence,
       coloredItemsInput,
       craftingEssence
      ]
    );
  })
  .addRecipeGenerator("_treasure_bag_infusion", (baseName, args) => {
    val essence = args.getItem(ColoredItem.Essence);
    val treasureBag = args.getItem(ColoredItem.TreasureBag);

    if essence == null || treasureBag == null {
      return;
    }

    InfusionCrafting.addRecipe(
      args.color.getResourceName() + baseName,
      treasureBag,
      [
        <item:sf5_things:treasure_bag_template>.reuse(),
        essence,
        <item:mysticalagriculture:inferium_essence>,
        essence,
        <item:mysticalagriculture:inferium_essence>,
        essence,
        <item:mysticalagriculture:inferium_essence>,
        essence,
        <item:mysticalagriculture:inferium_essence>
      ]
    );
  });
