import crafttweaker.api.entity.Entity;
import crafttweaker.api.entity.type.player.Player;
import crafttweaker.api.loot.LootContext;
import crafttweaker.api.util.math.RandomSource;

public function rollsChance(random: RandomSource, percent: float): bool {
  if percent <= 0.0 {
    return false;
  }

  if percent >= 100.0 {
    return true;
  }

  return random.nextFloat() < percent / 100;
}

public function isRealPlayerLooting(ctx: LootContext): bool {
  if ctx.thisEntity == null {
    return false;
  }

  if !((ctx.thisEntity as Entity) is Player) {
    return false;
  }

  val player: Player = (ctx.thisEntity as Entity) as Player;

  return !player.isFakePlayer;
}
