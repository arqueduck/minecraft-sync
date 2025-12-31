public function getTextColorForBackground(decimalColor as int) as int {
  val red  = (decimalColor >> 16) & 0xFF;
  val green = (decimalColor >> 8) & 0xFF;
  val blue = decimalColor & 0xFF;

  val luminance = (0.299 * red + 0.587 * green + 0.114 * blue) / 255.0;

  if luminance > 0.5 {
    return 0x0E0E10;
  }

  return 0xEFEFF1;
}
