import crafttweaker.api.ingredient.type.IIngredientAny;

events.register<crafttweaker.forge.api.event.entity.living.LivingDropsEvent>(event => {
    if event.source.type.msgId == "create.crush" {
        // Clears the drops
        event.removeDrop(IIngredientAny.getInstance());
        if event.entity.type == <entitytype:veincreeper:black> {
          event.addDrop(<item:minecraft:black_dye> * 8);
          }
        if event.entity.type == <entitytype:minecraft:squid> {
          event.addDrop(<item:minecraft:black_dye> * 2);
          }
        if event.entity.type == <entitytype:veincreeper:blue> {
          event.addDrop(<item:minecraft:blue_dye> * 8);
          }
        if event.entity.type == <entitytype:veincreeper:brown> {
          event.addDrop(<item:minecraft:brown_dye> * 8);
          }
        if event.entity.type == <entitytype:veincreeper:cyan> {
          event.addDrop(<item:minecraft:cyan_dye> * 8);
          }
        if event.entity.type == <entitytype:veincreeper:gray> {
          event.addDrop(<item:minecraft:gray_dye> * 8);
          }
        if event.entity.type == <entitytype:veincreeper:green> {
          event.addDrop(<item:minecraft:green_dye> * 8);
          }
        if event.entity.type == <entitytype:veincreeper:light_blue> {
          event.addDrop(<item:minecraft:light_blue_dye> * 8);
          }
        if event.entity.type == <entitytype:veincreeper:light_gray> {
          event.addDrop(<item:minecraft:light_gray_dye> * 8);
          }
        if event.entity.type == <entitytype:veincreeper:lime> {
          event.addDrop(<item:minecraft:lime_dye> * 8);
          }
        if event.entity.type == <entitytype:veincreeper:magenta> {
          event.addDrop(<item:minecraft:magenta_dye> * 8);
          }
        if event.entity.type == <entitytype:veincreeper:orange> {
          event.addDrop(<item:minecraft:orange_dye> * 8);
          }
        if event.entity.type == <entitytype:veincreeper:pink> {
          event.addDrop(<item:minecraft:pink_dye> * 8);
          }
        if event.entity.type == <entitytype:veincreeper:purple> {
          event.addDrop(<item:minecraft:purple_dye> * 8);
          }
        if event.entity.type == <entitytype:veincreeper:red> {
          event.addDrop(<item:minecraft:red_dye> * 8);
          }
        if event.entity.type == <entitytype:veincreeper:white> {
          event.addDrop(<item:minecraft:white_dye> * 8);
          }
        if event.entity.type == <entitytype:veincreeper:yellow> {
          event.addDrop(<item:minecraft:yellow_dye> * 8);



        } else {
            event.addDrop(<item:minecraft:air>);
        }

    }
});


