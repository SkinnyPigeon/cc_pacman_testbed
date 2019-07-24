/// @description Insert description here
// You can write your code in this editor
show_message("READY 1: " + string(ready))
show_message("IS GOOD 1: " + string(obj_store.selection_is_good))
ready -= 1;
if(ready == 0 && obj_store.selection_left > 0 && 
  ((x == obj_player.x + 32 || x == obj_player.x - 32 || abs(x) - abs(obj_player.x) == 0) 
&& (y == obj_player.y + 32 || y == obj_player.y - 32 || abs(y) - abs(obj_player.y) == 0))) {
	//sprite_index = spr_path_selected;
	show_message("READY 2: " + string(ready));
	show_message("IS GOOD 2: " + string(obj_store.selection_is_good))
	layer_sprite_create(global.asset_layer, x, y, spr_path_selected);
	obj_store.x_path[obj_store.i] = x;
	obj_store.y_path[obj_store.i] = y;
	obj_store.i++;
	obj_store.selection_left--;
	obj_store.selection_used++;
	obj_store.selection_is_good = 1;
}

if(obj_store.selection_is_good == 1) {
	//sprite_index = spr_path_selected;
	show_message("READY 3: " + string(ready))
	show_message("IS GOOD 3: " + string(obj_store.selection_is_good))
	layer_sprite_create(global.asset_layer, x, y, spr_path_selected);
	obj_store.x_path[obj_store.i] = x;
	obj_store.y_path[obj_store.i] = y;
	obj_store.i++;
	obj_store.selection_left--;
	obj_store.selection_used++;
}
