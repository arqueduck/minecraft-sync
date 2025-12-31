ContentBuilder.factory.registerWater((color) => {
  if color.getName() == ColorName.None {
    return null;
  }

  return <fluid:colouredstuff:water_${color.getResourceName()}>;
});


