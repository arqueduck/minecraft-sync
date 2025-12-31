import crafttweaker.api.data.IData;
import crafttweaker.api.data.ListData;
import crafttweaker.api.entity.type.player.Player;
import crafttweaker.api.world.ServerLevel;
import crafttweaker.forge.api.event.entity.player.PlayerLoggedInEvent;
import mods.gateways.events.GateOpenedEvent;
import stdlib.List;

val stages = [
  "all_colors",
  "black",
  "blue",
  "brown",
  "cyan",
  "gray",
  "green",
  "light_blue",
  "light_gray",
  "lime",
  "magenta",
  "orange",
  "pink",
  "purple",
  "red",
  "white",
  "yellow"
];

// listen for gateways being open
events.register<GateOpenedEvent>(event => {
  val entity = event.entity;
  val level = entity.level;

  if !(level is ServerLevel) {
    return;
  }

  // We can't get the id from entity.gateway because entity.gateway returns "Gateway" but "Gateway"
  // is not exposed to scripts, only "NormalGateway", this is an issue for shadows to fix
  val gatewayId = entity.data["gate"].getAsString();

  // We only want to run with challenge gateways
  if !gatewayId.startsWith("gateways:challenge/challenge_") {
    return;
  }

  // $ is a keyword for the end of a string, when in a range
  val color = gatewayId["gateways:challenge/challenge_".length .. $];

  val sl = level as ServerLevel;

  // The overworld saved data is always available, making it ideal to store data that needs to be accessed whenever.
  var savedData = sl.server.overworldData.data;

  // Should probably get these from the config, or the Gateway itself, but see above note about using the gateway type
  val pos1 = entity.blockPosition.north(32).east(32).above(32);
  val pos2 = entity.blockPosition.south(32).west(32).below(32);

  // This list will be stored for later, as long as the player still exists, it will store them
  val players = level.getEntitiesInArea<Player?>(pos1, pos2);

  sl.sequence().run(level => {
    for player in players {
      if player == null {
        return;
      }

      // Cache the player's existing stages in case they log out
      val existingStages = new List<IData>();
      for tag in player.tags {
        if tag.endsWith("_stage") {
          existingStages.add(tag[0 .. ($ - "_stage".length)] as IData);
          println(tag[0 .. ($ - "_stage".length)]);
        }
      }
      savedData.put("cachedStages-" + player.stringUUID, new ListData(existingStages));

      player.removeGameStage(stages.filter(stage => stage != color));
    }
  }).sleepUntil(level => {
    // wait until the gate is dead
    return !entity.isAlive;
  }).run(level => {
    // gate is dead, time to return the stages
    for player in players {
      if player == null {
        return;
      }

      val cachedStagesKey = "cachedStages-" + player.stringUUID;

      if (cachedStagesKey in savedData) {
        for stage in (savedData[cachedStagesKey] as List<IData>) {
          player.addGameStage(stage as string);
        }
        savedData.remove(cachedStagesKey);
      }
    }
  }).start();
});

events.register<PlayerLoggedInEvent>(event => {
  val level = event.entity.level;

  if !(level is ServerLevel) {
    return;
  }

  val player = event.entity as Player;

  val sl = level as ServerLevel;

  // The overworld saved data is always available, making it ideal to store data that needs to be accessed whenever.
  var savedData = sl.server.overworldData.data;

  val cachedStagesKey = "cachedStages-" + player.stringUUID;

  if (cachedStagesKey in savedData) {
    for stage in (savedData[cachedStagesKey] as List<IData>) {
      player.addGameStage(stage as string);
    }
    savedData.remove(cachedStagesKey);
  }
});
