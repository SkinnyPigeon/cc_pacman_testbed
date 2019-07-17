/// @description Insert description here
// You can write your code in this editor

ready -= 1;
if(ready == 0 && obj_store.selection_left > 0) {
	sprite_index = spr_path_selected;
	obj_store.x_path[obj_store.i] = x;
	obj_store.y_path[obj_store.i] = y;
	obj_store.i++;
	obj_store.selection_left--;
	obj_store.selection_used++;
}
