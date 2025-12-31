import crafttweaker.api.block.Block;
import crafttweaker.api.item.IItemStack;

public class LootModifierEntry {
  val baseName as string : get;
  private val cb as function(baseName as string, args as ColoredContentGeneratorCallbackArgs) as void;

  public this(
    baseName: string,
    cb as function(baseName as string, args as ColoredContentGeneratorCallbackArgs) as void
  ) {
    this.baseName = baseName;
    this.cb = cb;
  }

  public callCallback(args as ColoredContentGeneratorCallbackArgs): void {
    (this.cb as function(baseName as string, args as ColoredContentGeneratorCallbackArgs) as void)(this.baseName, args);
  }
}
