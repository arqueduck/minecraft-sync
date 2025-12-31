// First recipe doesn't work

// IndustrialForegoingDissolutionChamber.addRecipe(
//  "infinity_drill",
//  <item:industrialforegoing:infinity_drill>,
//  [
//    <item:minecraft:diamond_block>,
//    <item:minecraft:diamond_shovel>,
//    <item:minecraft:diamond_block>,
//    <item:minecraft:diamond_block>,
//    <item:industrialforegoing:range_addon11>,
//    <tag:items:forge:gears/gold>,
//    <tag:items:forge:gears/gold>,
//    <tag:items:forge:gears/gold>
//  ],
//  <fluid:industrialforegoing:pink_slime> * 2000,
//  400
// );

// These recipes do work and will be used until the standard recipes
// are viewable in REI
  craftingTable.addShaped(
  "infinity_drill_shaped_recipe",
  <item:industrialforegoing:infinity_drill>.withTag({Energy: 0, CanCharge: 1, Special: 0, Fluid: {Amount: 0, FluidName: "biofuel"}, Selected: "POOR"}),
  [
    [<item:minecraft:diamond_block>, <item:minecraft:diamond_block>, <item:minecraft:diamond_block>],
    [<item:minecraft:diamond_shovel>, <item:industrialforegoing:range_addon11>.withTag({TitaniumAugment: {Range: 11.0}}), <item:industrialforegoing:pink_slime_bucket>],
    [<item:thermal:gold_gear>, <item:thermal:gold_gear>, <item:thermal:gold_gear>]
  ]
);

  craftingTable.addShaped(
  "infinity_saw_shaped_recipe",
  <item:industrialforegoing:infinity_saw>.withTag({Energy: 0, CanCharge: 1, Special: 0, Fluid: {Amount: 0, FluidName: "biofuel"}, Selected: "POOR"}),
  [
    [<item:minecraft:diamond_axe>, <item:minecraft:diamond_block>, <item:minecraft:diamond_axe>],
    [<item:minecraft:diamond_pickaxe>, <item:industrialforegoing:range_addon11>.withTag({TitaniumAugment: {Range: 11.0}}), <item:industrialforegoing:pink_slime_bucket>],
    [<item:thermal:gold_gear>, <item:thermal:gold_gear>, <item:thermal:gold_gear>]
  ]
);

  craftingTable.addShaped(
  "infinity_hammer_shaped_recipe",
  <item:industrialforegoing:infinity_hammer>.withTag({Energy: 0, CanCharge: 1, Special: 0, Fluid: {Amount: 0, FluidName: "biofuel"}, Selected: "POOR", Beheading: 0}),
  [
    [<item:minecraft:diamond_sword>, <item:minecraft:diamond_block>, <item:minecraft:diamond_axe>],
    [<item:minecraft:diamond_block>, <item:industrialforegoing:range_addon11>.withTag({TitaniumAugment: {Range: 11.0}}), <item:industrialforegoing:pink_slime_bucket>],
    [<item:thermal:gold_gear>, <item:thermal:gold_gear>, <item:thermal:gold_gear>]
    ]
);

  craftingTable.addShaped(
  "infinity_trident_shaped_recipe",
  <item:industrialforegoing:infinity_trident>.withTag({Riptide: 0, CanCharge: 1, Fluid: {Amount: 0, FluidName: "biofuel"}, Channeling: 0, Selected: "POOR", Special: 0, Loyalty: 0, Energy: 0}),
  [
    [<item:minecraft:trident>, <item:minecraft:diamond_block>, <item:minecraft:diamond_hoe>],
    [<item:minecraft:diamond_block>, <item:industrialforegoing:range_addon11>.withTag({TitaniumAugment: {Range: 11.0}}), <item:industrialforegoing:pink_slime_bucket>],
    [<item:thermal:gold_gear>, <item:thermal:gold_gear>, <item:thermal:gold_gear>]
    ]
);

  craftingTable.addShaped(
  "infinity_backpack_shaped_recipe",
    <item:industrialforegoing:infinity_backpack>.withTag({Energy: 0, CanCharge: 1, Special: 0, Selected: "POOR"}),
  [
    [<item:industrialforegoing:common_black_hole_tank>, <item:industrialforegoing:common_black_hole_unit>, <item:industrialforegoing:common_black_hole_tank>],
    [<item:thermal:diamond_gear>, <item:industrialforegoing:range_addon11>.withTag({TitaniumAugment: {Range: 11.0}}), <item:industrialforegoing:pink_slime_bucket>],
    [<item:thermal:gold_gear>, <item:thermal:gold_gear>, <item:thermal:gold_gear>]
    ]
);

  craftingTable.addShaped(
  "infinity_nuke_shaped_recipe",
  <item:industrialforegoing:infinity_nuke>.withTag({Energy: 0, CanCharge: 1, Special: 0, Fluid: {Amount: 0, FluidName: "biofuel"}, Selected: "POOR"}),
  [
    [<item:minecraft:tnt>, <item:minecraft:tnt>, <item:minecraft:tnt>],
    [<item:industrialforegoing:plastic>, <item:industrialforegoing:range_addon11>.withTag({TitaniumAugment: {Range: 11.0}}), <item:industrialforegoing:pink_slime_bucket>],
    [<item:minecraft:nether_star>, <item:minecraft:nether_star>, <item:minecraft:nether_star>]
  ]
);
