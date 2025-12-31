import crafttweaker.forge.api.event.tick.ServerTickEvent;

val TICK_INTERVAL = 20;

events.register<ServerTickEvent>(event => {
  if event.server.getTickCount() % TICK_INTERVAL != 0 {
    return;
  }

  for level in event.server.allLevels {
    val beesToKill = level.getEntities(
      (entity) => {
        val yPos = entity.getY();

        return yPos < 1;
      },
      <entitytype:minecraft:bee>
    );

    for bee in beesToKill {
      bee.kill();
    }
  }
});
