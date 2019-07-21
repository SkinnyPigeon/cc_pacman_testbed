///@description scr_enemy_move(enemy, chosen_move, alternative_move, chosen_direction, alternative_direction, available_moves)
///@param enemy
///@param chosen_move
///@param alternative_move
///@param chosen_direction
///@param alternative_direction
///@param available_moves

var enemy = argument0;
var chosen_move = argument1;
var alternative_move = argument2;
var chosen_direction = argument3;
var alternative_direction = argument4;
var available_moves = argument5;

//show_message(enemy.chosen_move);

if(chosen_direction == "x" && available_moves > 0) {
	if(chosen_move < 0){
		if(place_meeting(enemy.x - 32, enemy.y, obj_wall)) {
			//PICK ALTERNATIVE PATH
			show_message("LEFT")
			
			if(alternative_move < 0) {
				if(place_meeting(enemy.x, enemy.y - 32, obj_wall)) {
					
					show_message("LEFT ALT DOWN")
				} else {
					var path = path_add();
					mp_linear_path(path, enemy.x, enemy.y - 32, 3, 0);
					path_start(path, 60, path_action_stop, 1)
					enemy.available_moves--;
				}
			} else if(alternative_move > 0) {
				if(place_meeting(enemy.x, enemy.y + 32, obj_wall)) {
					
					show_message("LEFT ALT UP")
				} else {
					var path = path_add();
					mp_linear_path(path, enemy.x, enemy.y + 32, 3, 0);
					path_start(path, 60, path_action_stop, 1)
					enemy.available_moves--;
				}
			}
			
		} else {
			var path = path_add();
			mp_linear_path(path, enemy.x - 32, enemy.y, 3, 0);
			path_start(path, 60, path_action_stop, 1)
			enemy.available_moves--;
		}
		
		
	} else if(chosen_move > 0) {
		if(place_meeting(enemy.x + 32, enemy.y, obj_wall)) {
			//PICK ALTERNATIVE PATH
			show_message("RIGHT")

		} else {
			var path = path_add();
			mp_linear_path(path, enemy.x + 32, enemy.y, 3, 0);
			path_start(path, 60, path_action_stop, 1)
			enemy.available_moves--;
		}
	} 
	
} else if(chosen_direction == "y"  && available_moves > 0) {
	if(chosen_move < 0){
		if(place_meeting(enemy.x, enemy.y - 32, obj_wall)) {
			//PICK ALTERNATIVE PATH
			show_message("UP")

		} else {
			var path = path_add();
			mp_linear_path(path, enemy.x, enemy.y - 32, 3, 0);
			path_start(path, 60, path_action_stop, 1)
			enemy.available_moves--;
		}
	} else if(chosen_move > 0) {
		if(place_meeting(enemy.x, enemy.y + 32, obj_wall)) {
			//PICK ALTERNATIVE PATH
			show_message("DOWN")

		} else {
			var path = path_add();
			mp_linear_path(path, enemy.x, enemy.y + 32, 3, 0);
			path_start(path, 60, path_action_stop, 1)
			enemy.available_moves--;
		}
	}
	
}