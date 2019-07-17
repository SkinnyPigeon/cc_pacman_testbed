/// @description Insert description here
// You can write your code in this editor
sprite_index = spr_path_selected;

ready -= 1;
if(ready == 0) {
	obj_store.x_path[obj_store.i] = x;
	obj_store.y_path[obj_store.i] = y;
	obj_store.i++;
}
