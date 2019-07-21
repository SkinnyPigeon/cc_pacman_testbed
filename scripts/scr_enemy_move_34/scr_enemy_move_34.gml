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

show_debug_message(available_moves);

if(chosen_direction == "x" && available_moves > 0) {
	if(chosen_move < 0){
		//LEFT
		if(!place_meeting(enemy.x - 32, enemy.y, obj_wall)) {
			var path = path_add();
			mp_linear_path(path, enemy.x - 32, enemy.y, 2, 0);
			path_start(path, 10, path_action_stop, 1)
			enemy.available_moves--;
		} else if(place_meeting(enemy.x - 32, enemy.y, obj_wall) && alternative_move < 0) {
			if(!place_meeting(enemy.x, enemy.y - 32, obj_wall)) {
				var path = path_add();
				mp_linear_path(path, enemy.x, enemy.y - 32, 2, 0);
				path_start(path, 10, path_action_stop, 1)
				enemy.available_moves--;
			}
		} else if(place_meeting(enemy.x - 32, enemy.y, obj_wall) && alternative_move > 0) {
			if(!place_meeting(enemy.x, enemy.y + 32, obj_wall)) {
				var path = path_add();
				mp_linear_path(path, enemy.x, enemy.y + 32, 2, 0);
				path_start(path, 10, path_action_stop, 1)
				enemy.available_moves--;
			}
		} else {
			var path = path_add();
			mp_linear_path(path, enemy.x + 32, enemy.y, 2, 0);
			path_start(path, 10, path_action_stop, 1)
			enemy.available_moves--;
		}
	} else if(chosen_move > 0){
		//RIGHT
		if(!place_meeting(enemy.x + 32, enemy.y, obj_wall)) {
			var path = path_add();
			mp_linear_path(path, enemy.x + 32, enemy.y, 2, 0);
			path_start(path, 10, path_action_stop, 1)
			enemy.available_moves--;
		} else if(place_meeting(enemy.x + 32, enemy.y, obj_wall) && alternative_move < 0) {
			if(!place_meeting(enemy.x, enemy.y - 32, obj_wall)) {
				var path = path_add();
				mp_linear_path(path, enemy.x, enemy.y - 32, 2, 0);
				path_start(path, 10, path_action_stop, 1)
				enemy.available_moves--;
			}
		} else if(place_meeting(enemy.x + 32, enemy.y, obj_wall) && alternative_move > 0) {
			if(!place_meeting(enemy.x, enemy.y + 32, obj_wall)) {
				var path = path_add();
				mp_linear_path(path, enemy.x, enemy.y + 32, 2, 0);
				path_start(path, 10, path_action_stop, 1)
				enemy.available_moves--;
			}
		} else {
			var path = path_add();
			mp_linear_path(path, enemy.x - 32, enemy.y, 2, 0);
			path_start(path, 10, path_action_stop, 1)
			enemy.available_moves--;
		}
	}
} else if(chosen_direction == "y" && available_moves > 0) {
	if(chosen_move < 0){
		//DOWN
		if(!place_meeting(enemy.x, enemy.y - 32, obj_wall)) {
			var path = path_add();
			mp_linear_path(path, enemy.x, enemy.y - 32, 2, 0);
			path_start(path, 10, path_action_stop, 1)
			enemy.available_moves--;
		} else if(place_meeting(enemy.x, enemy.y - 32, obj_wall) && alternative_move < 0) {
			if(!place_meeting(enemy.x - 32, enemy.y, obj_wall)) {
				var path = path_add();
				mp_linear_path(path, enemy.x - 32, enemy.y, 2, 0);
				path_start(path, 10, path_action_stop, 1)
				enemy.available_moves--;
			}
		} else if(place_meeting(enemy.x, enemy.y - 32, obj_wall) && alternative_move > 0) {
			if(!place_meeting(enemy.x + 32, enemy.y, obj_wall)) {
				var path = path_add();
				mp_linear_path(path, enemy.x + 32, enemy.y, 2, 0);
				path_start(path, 10, path_action_stop, 1)
				enemy.available_moves--;
			}
		} else {
			var path = path_add();
			mp_linear_path(path, enemy.x, enemy.y + 32, 2, 0);
			path_start(path, 10, path_action_stop, 1)
			enemy.available_moves--;
		}
	} else if(chosen_move > 0){
		//UP
		if(!place_meeting(enemy.x, enemy.y + 32, obj_wall)) {
			var path = path_add();
			mp_linear_path(path, enemy.x, enemy.y + 32, 2, 0);
			path_start(path, 10, path_action_stop, 1)
			enemy.available_moves--;
		} else if(place_meeting(enemy.x, enemy.y + 32, obj_wall) && alternative_move < 0) {
			if(!place_meeting(enemy.x - 32, enemy.y, obj_wall)) {
				var path = path_add();
				mp_linear_path(path, enemy.x - 32, enemy.y, 2, 0);
				path_start(path, 10, path_action_stop, 1)
				enemy.available_moves--;
			}
		} else if(place_meeting(enemy.x, enemy.y + 32, obj_wall) && alternative_move > 0) {
			if(!place_meeting(enemy.x + 32, enemy.y, obj_wall)) {
				var path = path_add();
				mp_linear_path(path, enemy.x + 32, enemy.y, 2, 0);
				path_start(path, 10, path_action_stop, 1)
				enemy.available_moves--;
			}
		} else {
			var path = path_add();
			mp_linear_path(path, enemy.x, enemy.y - 32, 2, 0);
			path_start(path, 10, path_action_stop, 1)
			enemy.available_moves--;
		}
	}
}