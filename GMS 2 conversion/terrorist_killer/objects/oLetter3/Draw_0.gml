draw_set_halign(fa_left);
if (selected or oAlphabet3.finished)
{  
  draw_set_font(global.font8);
  draw_set_color(oAlphabet3.colorSelected);
  draw_text(x,y,string_hash_to_newline(letter));
}
else
{
  draw_set_font(global.font8);
  draw_set_color(oAlphabet3.colorNotSelected);
  draw_text(x,y,string_hash_to_newline(letter));
}

