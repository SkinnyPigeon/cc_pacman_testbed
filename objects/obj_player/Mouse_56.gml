/// @description Handles the direction and space array

destination_x = x;
destination_y = y;

destination_index = array_length_1d(obj_store.x_path);

for(var i = 0; i < destination_index; i++) {
	show_debug_message(path_position);
	
	if(obj_store.x_path[i] == destination_x + 32 && obj_store.y_path[i] == destination_y) {
		destination_x += 32;
		var right_path = path_add();
		mp_linear_path(right_path, destination_x, destination_y, 3, 0);
		path_start(right_path, 60, path_action_stop, 1)
		if(path_position == 1) continue;
		
	} else if(obj_store.x_path[i] == destination_x - 32 && obj_store.y_path[i] == destination_y) {
		destination_x -= 32;
		var left_path = path_add();
		mp_linear_path(left_path, destination_x, destination_y, 3, 0);
		path_start(left_path, 60, path_action_stop, 1)
		
	} else if(obj_store.y_path[i] == destination_y + 32 && obj_store.x_path[i] == destination_x) {
		destination_y += 32;
		var down_path = path_add();
		mp_linear_path(down_path, destination_x, destination_y, 3, 0);
		path_start(down_path, 60, path_action_stop, 1)
		
	} else if(obj_store.y_path[i] == destination_y - 32 && obj_store.x_path[i] == destination_x) {
		destination_y -= 32;
		var up_path = path_add();
		mp_linear_path(up_path, destination_x, destination_y, 3, 0);
		path_start(up_path, 60, path_action_stop, 1)
	}
}





//obj_store.player_x = obj_player.x;
//obj_store.player_y = obj_player.y;
