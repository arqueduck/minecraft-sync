import collections.HashSet;

// Create normal gateway -> titan recipes
for colorName, color in Globals.colors {
  val gatewayIDsForColor = getGatewaysForColor(color);
  if gatewayIDsForColor.length <= 1 {
    continue;
  }

  val normalGatewayIDs = new HashSet<string>();
  val titanGatewayIDs = new HashSet<string>();

  for gatewayID in gatewayIDsForColor {
    if ("normal/" in gatewayID) {
      normalGatewayIDs.add(gatewayID);
    } else if ("titan/" in gatewayID) {
      titanGatewayIDs.add(gatewayID);
    }
  }

  for normalGatewayID in normalGatewayIDs {
    val prefixLength = ("gateways:normal/").length;
    val baseID = normalGatewayID[prefixLength .. normalGatewayID.length];
    val expectedTitanGatewayID = "gateways:titan/" + baseID;

    if expectedTitanGatewayID in titanGatewayIDs {
      craftingTable.addShaped(
        baseID + "_normal_to_titan_gateway",
        <item:gateways:gate_pearl>.withTag({gateway: expectedTitanGatewayID}),
        [
          [
            <item:minecraft:obsidian>,
            <item:gateways:gate_pearl>.withTag({gateway: normalGatewayID}),
            <item:minecraft:obsidian>
          ],
          [
            <item:gateways:gate_pearl>.withTag({gateway: normalGatewayID}),
            <item:minecraft:air>,
            <item:gateways:gate_pearl>.withTag({gateway: normalGatewayID})
          ],
          [
            <item:minecraft:obsidian>,
            <item:gateways:gate_pearl>.withTag({gateway: normalGatewayID}),
            <item:minecraft:obsidian>
          ]
        ]
      );
    }
  }
}
