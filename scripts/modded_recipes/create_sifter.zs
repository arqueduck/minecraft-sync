import collections.HashSet;
import crafttweaker.api.ingredient.IIngredient;
import crafttweaker.api.ingredient.type.IIngredientList;
import crafttweaker.api.item.IItemStack;
import crafttweaker.api.util.random.Percentaged;
import stdlib.List;

val DEFAULT_PROCESSING_TIME as int = 200;
val DEFAULT_WATERLOGGED as bool = false;
val DEFAULT_MIN_SPEED as int = 1;

val TOTAL_CHANCE_FOR_OUTPUTS as int = 25;

// Gateway and Trophy Recycling
for colorName, color in Globals.colors {
  val gatewayIDsForColor = getGatewaysForColor(color);
  if gatewayIDsForColor.length <= 1 {
    continue;
  }

  val gatewayInputs = new List<IIngredient>();
  for gatewayID in gatewayIDsForColor {
    gatewayInputs.add(<item:gateways:gate_pearl>.withTag({gateway: gatewayID}));
  }

  val gatewayInput = new IIngredientList(gatewayInputs as IIngredient[]);

  val filteredGatewayIDs = new HashSet<string>();
  for gatewayID in gatewayIDsForColor {
    if !("titan/" in gatewayID) {
      filteredGatewayIDs.add(gatewayID);
    }
  }

  val chancePerGateway = (TOTAL_CHANCE_FOR_OUTPUTS as float) / (filteredGatewayIDs.length as float);

  val sifterOutputList = new List<Percentaged<IItemStack>>();
  for id in filteredGatewayIDs {
    sifterOutputList.add(<item:gateways:gate_pearl>.withTag({gateway: id}) % chancePerGateway);
  }

  val sifterOutput = sifterOutputList as Percentaged<IItemStack>[];

  <recipetype:createsifter:sifting>.addRecipe(
    "createsifter_" + color.getResourceName() + "_gateway_recycling",
    sifterOutput,
    [
      gatewayInput,
      <item:createsifter:string_mesh>
    ],
    DEFAULT_PROCESSING_TIME,
    false,
    DEFAULT_MIN_SPEED
  );
}
