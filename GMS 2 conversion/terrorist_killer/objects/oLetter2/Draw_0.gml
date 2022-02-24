draw_set_halign(fa_left);
if (selected or oAlphabet2.finished)
{  
  draw_set_font(global.font8);
  draw_set_color(oAlphabet2.colorSelected);
  draw_text(x,y,string_hash_to_newline(letter));
}
else
{
  draw_set_font(global.font8);
  draw_set_color(oAlphabet2.colorNotSelected);
  draw_text(x,y,string_hash_to_newline(letter));
}

