import crafttweaker.api.loot.condition.LootConditions;
import crafttweaker.api.loot.condition.LootTableIdLootCondition;
import crafttweaker.api.entity.type.player.Player;
import crafttweaker.api.entity.Entity;
import crafttweaker.api.item.IItemStack;
import stdlib.List;

function singleTimeLoot(color as string, stages as string[], items as IItemStack[]) as void {
    val stagesToCheck = stages; // Safeguarding against a scripting engine bug
    val toGive = items; // Safeguarding against a scripting engine bug
    if stages.length != items.length {
        panic "Darko is bad and registered un-even stages to items :angery:";
    }
    loot.modifiers.register(
        color + "_loot_bag_single_time",
        LootConditions.only(
            LootTableIdLootCondition.create(<resource:treasurebags:bags/${color}>)
        ),
        (stacks, context) => {
            val random = context.random;
                if context.thisEntity is Entity && (context.thisEntity as Entity) is Player {
                    val player = (context.thisEntity as Entity) as Player;
                    // Loop through the stages to check, seeing which ones match
                    for i in 0 .. stagesToCheck.length {
                        val stage = stagesToCheck[i];
                        // If we have given a stage / item already, then don't do it again this time
                        if !player.hasGameStage(stage) {
                            val list = new List<IItemStack>();
                            list.add(toGive[i].copy());
                            player.addGameStage(stage);
                            return list;
                        }

                    }
                }
            return stacks;
        }
    );
}


singleTimeLoot("red", ["mooshroom_pearl"], [<item:gateways:gate_pearl>.withTag({gateway: "gateways:normal/mooshroom"})]);

singleTimeLoot("pink", ["pig_pearl"], [<item:gateways:gate_pearl>.withTag({gateway: "gateways:normal/pig"})]);

singleTimeLoot("black",  ["enderman_pearl", "spider_pearl"], [<item:gateways:gate_pearl>.withTag({gateway: "gateways:normal/enderman"}), <item:gateways:gate_pearl>.withTag({gateway: "gateways:normal/spider"})]);

singleTimeLoot("green", ["zombie_pearl"], [<item:gateways:gate_pearl>.withTag({gateway: "gateways:normal/zombie"})]);

singleTimeLoot("brown",  ["cow_pearl", "villager_pearl"], [<item:gateways:gate_pearl>.withTag({gateway: "gateways:normal/cow"}), <item:gateways:gate_pearl>.withTag({gateway: "gateways:normal/villager"})]);

singleTimeLoot("orange", ["blaze_pearl"], [<item:gateways:gate_pearl>.withTag({gateway: "gateways:normal/blaze"})]);

singleTimeLoot("blue",  ["squid_pearl", "drowned_pearl"], [<item:gateways:gate_pearl>.withTag({gateway: "gateways:normal/squid"}),<item:gateways:gate_pearl>.withTag({gateway: "gateways:normal/drowned"})]);

singleTimeLoot("yellow", ["bee_pearl"], [<item:gateways:gate_pearl>.withTag({gateway: "gateways:normal/bee"})]);

singleTimeLoot("lime",  ["slime_pearl", "creeper_pearl"], [<item:gateways:gate_pearl>.withTag({gateway: "gateways:normal/slime"}), <item:gateways:gate_pearl>.withTag({gateway: "gateways:normal/creeper"})]);

singleTimeLoot("light_blue", ["tuna_pearl"], [<item:gateways:gate_pearl>.withTag({gateway: "gateways:normal/tuna"})]);

singleTimeLoot("cyan",  ["glow_skeleton_pearl", "fancy_chicken_pearl"], [<item:gateways:gate_pearl>.withTag({gateway: "gateways:normal/glow_skeleton"}), <item:gateways:gate_pearl>.withTag({gateway: "gateways:normal/fancy_chicken"})]);

singleTimeLoot("white",  ["snow_golem_pearl", "goat_pearl"], [<item:gateways:gate_pearl>.withTag({gateway: "gateways:normal/snow_golem"}), <item:gateways:gate_pearl>.withTag({gateway: "gateways:normal/goat"})]);

singleTimeLoot("purple",  ["bone_spider_pearl", "shulker_pearl"], [<item:gateways:gate_pearl>.withTag({gateway: "gateways:normal/bone_spider"}), <item:gateways:gate_pearl>.withTag({gateway: "gateways:normal/shulker"})]);

singleTimeLoot("gray",  ["pillager_pearl", "cat_pearl"], [<item:gateways:gate_pearl>.withTag({gateway: "gateways:normal/pillager"}), <item:gateways:gate_pearl>.withTag({gateway: "gateways:normal/cat"})]);

singleTimeLoot("light_gray",  ["iron_golem_pearl", "witch_pearl"], [<item:gateways:gate_pearl>.withTag({gateway: "gateways:normal/iron_golem"}), <item:gateways:gate_pearl>.withTag({gateway: "gateways:normal/witch"})]);

singleTimeLoot("magenta", ["crystal_zombie_pearl"], [<item:gateways:gate_pearl>.withTag({gateway: "gateways:normal/crystal_zombie"})]);
