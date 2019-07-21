///@description scr_wall_check(enemy)
///@param enemy

var enemy = argument0;

var x_diff = enemy.x - obj_player.x;
var y_diff = enemy.y - obj_player.y;

var x_moves = -x_diff / 32;
var y_moves = -y_diff / 32;

var desired_moves = [x_moves, y_moves];
var first_choice = max(abs(x_moves), abs(y_moves));

for(var i = 0; i < array_length_1d(desired_moves); i++) {
	if(abs(desired_moves[i]) == first_choice) {
		if(i = 0) {
			var chosen_direction = "x";
			var alternative_direction = "y";
			var chosen_move = desired_moves[0];
			var alternative_move = desired_moves[1];
		} else {
			chosen_direction = "y";
			alternative_direciton = "x";
			chosen_move = desired_moves[1];
			alternative_direction = desired_moves[0];
		}
	}
}


if(start_count - 1 >= 0 && start_count - 1 < end_count) {
	var available_moves = obj_store.path_length[start_count - 1];
	if(start_count - 1 > 0) {
		var available_moves = obj_store.path_length[start_count - 1] - obj_store.path_length[start_count - 2];
	}	
}


enemy.chosen_move = chosen_move;
enemy.alternative_move = alternative_move;
enemy.chosen_direction = chosen_direction;
enemy.alternative_direction = alternative_direction;
enemy.available_moves = available_moves;
enemy.start = 1;
