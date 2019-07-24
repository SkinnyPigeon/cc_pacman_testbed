/// @description Insert description here
// You can write your code in this editor
//show_message(obj_store.selection_is_good )
show_message("READY 4: " + string(ready))
show_message("IS GOOD 4: " + string(obj_store.selection_is_good))
if(obj_store.selection_is_good == 1) {
	show_message("READY 5: " + string(ready))
	//sprite_index = spr_path;
	show_message("SELECTION IS GOOD")
	ready = 1;
	show_message("READY 6: " + string(ready))
	obj_store.selection_left = 20;
	obj_store.selection_is_good = 0;
}

