///@description scr_wall_check(enemy)
///@param enemy

var enemy = argument0;

var x_diff = enemy.x - obj_player_2.x;
var y_diff = enemy.y - obj_player_2.y;

var x_moves = -x_diff / 32;
var y_moves = -y_diff / 32;

var desired_moves = [x_moves, y_moves];
var first_choice = max(abs(x_moves), abs(y_moves));

for(var i = 0; i < array_length_1d(desired_moves); i++) {
	if(abs(desired_moves[i]) == first_choice) {
		var chosen_move = desired_moves[i];
		show_debug_message(chosen_move)
	}
}

var moves_list = [];

if(start_count - 1 < end_count) {
	var available_moves = obj_store.path_length[start_count - 1];
	if(start_count - 1 > 0) {
		var available_moves = obj_store.path_length[start_count - 1] - obj_store.path_length[start_count - 2];
	}	
}

//var path = add_path();
//mp_linear_path(path, obj_player_2.x + distance, obj_player_2.y, 3, 0);
//path_start(path, 60, path_action_stop, 1);


