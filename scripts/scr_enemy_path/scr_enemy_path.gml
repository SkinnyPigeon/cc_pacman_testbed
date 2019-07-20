///@description scr_wall_check(enemy)
///@param enemy

var enemy = argument0;

var x_diff = enemy.x - obj_player_2.x;
var y_diff = enemy.y - obj_player_2.y;

var x_moves = x_diff / 32;
var y_moves = y_diff / 32;

var moves_list = [];

if(start_count - 1 < end_count) {
	var available_moves = obj_store.path_length[start_count - 1];
	if(start_count - 1 > 0) {
		var available_moves = obj_store.path_length[start_count - 1] - obj_store.path_length[start_count - 2];
	}	
	show_debug_message(available_moves)
}




//show_debug_message("Enemy X: " + string(enemy.x))
//show_debug_message("Player X: " + string(obj_player_2.x))
//show_debug_message("X Diff: " + string(x_diff))

//show_debug_message("Enemy Y: " + string(enemy.y))
//show_debug_message("Player Y: " + string(obj_player_2.y))
//show_debug_message("Y Diff: " + string(y_diff))

