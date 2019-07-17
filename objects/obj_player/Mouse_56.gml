/// @description Insert description here
// You can write your code in this editor

destination_x = x;
destination_y = y;
var player_path = path_add();
for(var i = 0; i < array_length_1d(obj_store.x_path); i++) {
	if(obj_store.x_path[i] == destination_x + 32 && obj_store.y_path[i] == destination_y) {
		destination_x += 32;
		show_debug_message(destination_x)
		//x += 32;
	} else if(obj_store.x_path[i] == destination_x - 32 && obj_store.y_path[i] == destination_y) {
		//x -= 32;
		destination_x -= 32;
	} else if(obj_store.y_path[i] == destination_y + 32 && obj_store.x_path[i] == destination_x) {
		//y += 32;
		destination_y += 32;
	} else if(obj_store.y_path[i] == destination_y - 32 && obj_store.x_path[i] == destination_x) {
		//y -= 32;
		destination_y -= 32;
	}
}
//show_debug_message(destination_x)


//mp_linear_path(player_path, destination_x, destination_y, 3, false);
if mp_grid_path(room_grid, player_path, x, y, destination_x, destination_y, 0) {
		draw_path(player_path, destination_x, destination_y, 1);
		path_start(player_path, 1, path_action_stop, 1);
}

obj_store.player_x = obj_player.x;
obj_store.player_y = obj_player.y;
