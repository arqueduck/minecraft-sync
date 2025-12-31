// TODO: BlockEntry can't be implemented because of a bug in ZenCode. Function params/returns are just typed as Objects and casting to a Block on return fails. Only interface types currently seem to work. This... will probably never get fixed.
// import crafttweaker.api.block.Block;

// public class BlockEntry {
//   val blockName as ColoredBlock : get;
//   private val cb as function(color as Color) as Block?;

//   public this(blockName: ColoredBlock, cb as function(color as Color) as Block?) {
//     this.blockName = blockName;
//     this.cb = cb;
//   }

//   public callCallback(color as Color): Block? {
//     return (this.cb as function(color as Color) as Block?)(color);
//   }
// }
