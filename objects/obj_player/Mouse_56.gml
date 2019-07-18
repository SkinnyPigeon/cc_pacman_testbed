/// @description Handles the direction and space array


//destination_x = x;
//destination_y = y;

for(var i = 0; i < array_length_1d(obj_store.x_path); i++) {
	if(obj_store.x_path[i] == x + 32 && obj_store.y_path[i] == y) {
		//destination_x += 32;
		//show_debug_message(obj_store.x_path)
		//show_debug_message(obj_store.y_path)
	
		//player_path = path_add();
		//show_debug_message(x);
		//show_debug_message(destination_x);

		//if mp_linear_path(player_path, destination_x, y, 3, 0) path_start(player_path, 3, path_action_stop, 0);
		
		//show_debug_message(x);
		x += 32;
		
	} else if(obj_store.x_path[i] == x - 32 && obj_store.y_path[i] == y) {
		x -= 32;
		//destination_x -= 32;
	} else if(obj_store.y_path[i] == y + 32 && obj_store.x_path[i] == x) {
		y += 32;
		//destination_y += 32;
	} else if(obj_store.y_path[i] == y - 32 && obj_store.x_path[i] == x) {
		y -= 32;
		//destination_y -= 32;
	}
	//path_delete(player_path)
}
//path_delete(player_path);

//

//mp_linear_path(player_path, destination_x, destination_y, 3, false);
//if mp_grid_path(room_grid, player_path, x, y, destination_x, destination_y, 0) {
		//draw_path(player_path, destination_x, destination_y, 1);
		//path_set_kind(player_path, 0)
		//path_start(player_path, 3, path_action_stop, 0);
//}

obj_store.player_x = obj_player.x;
obj_store.player_y = obj_player.y;
