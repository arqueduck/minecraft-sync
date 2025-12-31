public function getTierForColor(color: Color): int {
  if color.getName() == ColorName.None {
    return 1;
  }

  if color.getName() == ColorName.Black ||
    color.getName() == ColorName.Blue ||
    color.getName() == ColorName.Brown ||
    color.getName() == ColorName.Red ||
    color.getName() == ColorName.White ||
    color.getName() == ColorName.Yellow
  {
    return 2;
  }

  if color.getName() == ColorName.Gray ||
    color.getName() == ColorName.Green ||
    color.getName() == ColorName.LightBlue ||
    color.getName() == ColorName.Orange ||
    color.getName() == ColorName.Pink ||
    color.getName() == ColorName.Purple
  {
    return 3;
  }

  if color.getName() == ColorName.Cyan ||
    color.getName() == ColorName.LightGray ||
    color.getName() == ColorName.Lime ||
    color.getName() == ColorName.Magenta
  {
    return 4;
  }

  return -1;
}
