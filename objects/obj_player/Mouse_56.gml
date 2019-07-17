/// @description Insert description here
// You can write your code in this editor

//destination_x = x;

for(var i = 0; i < array_length_1d(obj_store.x_path); i++) {

	//destination_y = y;
	if(obj_store.x_path[i] == x + 32 && obj_store.y_path[i] == y) {
		//destination_x += 32;
		x += 32;
	} else if(obj_store.x_path[i] == x - 32 && obj_store.y_path[i] == y) {
		//destination_y -= 32;
		x -= 32;
	} else if(obj_store.y_path[i] == y + 32 && obj_store.x_path[i] == x) {
		//destination_y += 32;
		y += 32;
	} else if(obj_store.y_path[i] == y - 32 && obj_store.x_path[i] == x) {
		//destination_y -= 32;
		y -= 32;
	}
}
//show_debug_message(destination_x)
//var player_path = path_add();
//mp_grid_path(room_grid, player_path, x, y, destination_x, destination_y, false);
//path_start(player_path, 3, path_action_stop, true);

obj_store.player_x = obj_player.x;
obj_store.player_y = obj_player.y;
