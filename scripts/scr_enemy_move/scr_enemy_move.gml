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

//When turning, it resets the enemy's movement count
if(enemy.reverse_flag == 1) {
	chosen_move = chosen_move * -1;
}



if(chosen_direction == "x" && available_moves > 0) {

	if(chosen_move < 0){
		//LEFT
		if(!place_meeting(enemy.x - 32, enemy.y, obj_wall)) {
			var path = path_add();
			mp_linear_path(path, enemy.x - 32, enemy.y, 8, 0);
			path_start(path, 16,  path_action_stop, 1)
			enemy.available_moves--;
			enemy.previous_moves = "left";
		} else if(place_meeting(enemy.x - 32, enemy.y, obj_wall) && alternative_move < 0 && !place_meeting(enemy.x, enemy.y - 32, obj_wall)) {
			if(enemy.previous_moves == "down" && !place_meeting(enemy.x, enemy.y + 32, obj_wall)) {
				var path = path_add();
				mp_linear_path(path, enemy.x, enemy.y + 32, 8, 0);
				path_start(path, 16,  path_action_stop, 1)
				enemy.available_moves--;
				enemy.previous_moves = "down";
			} else {
				var path = path_add();
				mp_linear_path(path, enemy.x, enemy.y - 32, 8, 0);
				path_start(path, 16,  path_action_stop, 1)
				enemy.available_moves--;
				enemy.previous_moves = "up";
			}
			
		} else if(place_meeting(enemy.x - 32, enemy.y, obj_wall) && alternative_move > 0 && !place_meeting(enemy.x, enemy.y + 32, obj_wall)) {
			if(enemy.previous_moves == "up" && !place_meeting(enemy.x, enemy.y - 32, obj_wall)) {
				var path = path_add();
				mp_linear_path(path, enemy.x, enemy.y - 32, 8, 0);
				path_start(path, 16,  path_action_stop, 1)
				enemy.available_moves--;
				enemy.previous_moves = "up";
			} else {
				var path = path_add();
				mp_linear_path(path, enemy.x, enemy.y + 32, 8, 0);
				path_start(path, 16,  path_action_stop, 1)
				enemy.available_moves--;
				enemy.previous_moves = "down";
			}
			
		} else if(place_meeting(enemy.x - 32, enemy.y, obj_wall) && alternative_move == 0 && !place_meeting(enemy.x, enemy.y - 32, obj_wall)) {
			if(enemy.previous_moves == "down" && !place_meeting(enemy.x, enemy.y + 32, obj_wall)) {
				var path = path_add();
				mp_linear_path(path, enemy.x, enemy.y + 32, 8, 0);
				path_start(path, 16,  path_action_stop, 1)
				enemy.available_moves--;
				enemy.previous_moves = "down";
			} else {
				var path = path_add();
				mp_linear_path(path, enemy.x, enemy.y - 32, 8, 0);
				path_start(path, 16,  path_action_stop, 1)
				enemy.available_moves--;
				enemy.previous_moves = "up";
			}
			
		} else if(place_meeting(enemy.x - 32, enemy.y, obj_wall) && alternative_move == 0 && !place_meeting(enemy.x, enemy.y + 32, obj_wall)) {
			if(enemy.previous_moves == "up" && !place_meeting(enemy.x, enemy.y - 32, obj_wall)) {
				var path = path_add();
				mp_linear_path(path, enemy.x, enemy.y - 32, 8, 0);
				path_start(path, 16,  path_action_stop, 1)
				enemy.available_moves--;
				enemy.previous_moves = "up";
			} else {
				var path = path_add();
				mp_linear_path(path, enemy.x, enemy.y + 32, 8, 0);
				path_start(path, 16,  path_action_stop, 1)
				enemy.available_moves--;
				enemy.previous_moves = "down";
			}
			
		} else {
			var path = path_add();
			mp_linear_path(path, enemy.x + 32, enemy.y, 8, 0);
			path_start(path, 16,  path_action_stop, 1)
			enemy.available_moves--;
			enemy.previous_moves = "right";
		}
	} else if(chosen_move > 0){
		//RIGHT
		if(!place_meeting(enemy.x + 32, enemy.y, obj_wall)) {
			var path = path_add();
			mp_linear_path(path, enemy.x + 32, enemy.y, 8, 0);
			path_start(path, 16,  path_action_stop, 1)
			enemy.available_moves--;
			enemy.previous_moves = "right";
		} else if(place_meeting(enemy.x + 32, enemy.y, obj_wall) && alternative_move < 0 && !place_meeting(enemy.x, enemy.y - 32, obj_wall)) {
			if(enemy.previous_moves == "down" && !place_meeting(enemy.x, enemy.y + 32, obj_wall)) {
				var path = path_add();
				mp_linear_path(path, enemy.x, enemy.y + 32, 8, 0);
				path_start(path, 16,  path_action_stop, 1)
				enemy.available_moves--;
				enemy.previous_moves = "down";
			} else {
				var path = path_add();
				mp_linear_path(path, enemy.x, enemy.y - 32, 8, 0);
				path_start(path, 16,  path_action_stop, 1)
				enemy.available_moves--;
				enemy.previous_moves = "up";
			}
			
		} else if(place_meeting(enemy.x + 32, enemy.y, obj_wall) && alternative_move > 0 && !place_meeting(enemy.x, enemy.y + 32, obj_wall)) {
			if(enemy.previous_moves == "up" && !place_meeting(enemy.x, enemy.y - 32, obj_wall)) {
				var path = path_add();
				mp_linear_path(path, enemy.x, enemy.y - 32, 8, 0);
				path_start(path, 16,  path_action_stop, 1)
				enemy.available_moves--;
				enemy.previous_moves = "up";
			} else {
				var path = path_add();
				mp_linear_path(path, enemy.x, enemy.y + 32, 8, 0);
				path_start(path, 16,  path_action_stop, 1)
				enemy.available_moves--;
				enemy.previous_moves = "down";
			}
			
		} else if(place_meeting(enemy.x + 32, enemy.y, obj_wall) && alternative_move == 0 && !place_meeting(enemy.x, enemy.y - 32, obj_wall)) {
			if(enemy.previous_moves == "down" && !place_meeting(enemy.x, enemy.y + 32, obj_wall)) {
				var path = path_add();
				mp_linear_path(path, enemy.x, enemy.y + 32, 8, 0);
				path_start(path, 16,  path_action_stop, 1)
				enemy.available_moves--;
				enemy.previous_moves = "down";
			} else {
				var path = path_add();
				mp_linear_path(path, enemy.x, enemy.y - 32, 8, 0);
				path_start(path, 16,  path_action_stop, 1)
				enemy.available_moves--;
				enemy.previous_moves = "up";
			}
			
		} else if(place_meeting(enemy.x + 32, enemy.y, obj_wall) && alternative_move == 0 && !place_meeting(enemy.x, enemy.y + 32, obj_wall)) {
			if(enemy.previous_moves == "up" && !place_meeting(enemy.x, enemy.y - 32, obj_wall)) {
				var path = path_add();
				mp_linear_path(path, enemy.x, enemy.y - 32, 8, 0);
				path_start(path, 16,  path_action_stop, 1)
				enemy.available_moves--;
				enemy.previous_moves = "up";
			} else {
				var path = path_add();
				mp_linear_path(path, enemy.x, enemy.y + 32, 8, 0);
				path_start(path, 16,  path_action_stop, 1)
				enemy.available_moves--;
				enemy.previous_moves = "down";
			}
			
		} else {
			var path = path_add();
			mp_linear_path(path, enemy.x - 32, enemy.y, 8, 0);
			path_start(path, 16,  path_action_stop, 1)
			enemy.available_moves--;
			enemy.previous_moves = "left";
		}
	}
} else if(chosen_direction == "y" && available_moves > 0) {
	if(chosen_move < 0){
		//UP
		if(!place_meeting(enemy.x, enemy.y - 32, obj_wall)) {
			var path = path_add();
			mp_linear_path(path, enemy.x, enemy.y - 32, 8, 0);
			path_start(path, 16,  path_action_stop, 1)
			enemy.available_moves--;
			enemy.previous_moves = "up";
			
		} else if(place_meeting(enemy.x, enemy.y - 32, obj_wall) && alternative_move < 0 && !place_meeting(enemy.x - 32, enemy.y, obj_wall)) {
			if(enemy.previous_moves == "right" && !place_meeting(enemy.x - 32, enemy.y, obj_wall)) {
				var path = path_add();
				mp_linear_path(path, enemy.x + 32, enemy.y, 8, 0);
				path_start(path, 16,  path_action_stop, 1)
				enemy.available_moves--;
				enemy.previous_moves = "right";
			} else {
				var path = path_add();
				mp_linear_path(path, enemy.x - 32, enemy.y, 8, 0);
				path_start(path, 16,  path_action_stop, 1)
				enemy.available_moves--;
				enemy.previous_moves = "left";
			}
			
		} else if(place_meeting(enemy.x, enemy.y - 32, obj_wall) && alternative_move > 0 && !place_meeting(enemy.x + 32, enemy.y, obj_wall)) {
			if(enemy.previous_moves == "left" && !place_meeting(enemy.x + 32, enemy.y, obj_wall)) {
				var path = path_add();
				mp_linear_path(path, enemy.x - 32, enemy.y, 8, 0);
				path_start(path, 16,  path_action_stop, 1)
				enemy.available_moves--;
				enemy.previous_moves = "left";
			} else {
				var path = path_add();
				mp_linear_path(path, enemy.x + 32, enemy.y, 8, 0);
				path_start(path, 16,  path_action_stop, 1)
				enemy.available_moves--;
				enemy.previous_moves = "right";
			}
			
		} else if(place_meeting(enemy.x, enemy.y - 32, obj_wall) && alternative_move == 0 && !place_meeting(enemy.x - 32, enemy.y, obj_wall)) {
			if(enemy.previous_moves == "right" && !place_meeting(enemy.x - 32, enemy.y, obj_wall)) {
				var path = path_add();
				mp_linear_path(path, enemy.x + 32, enemy.y, 8, 0);
				path_start(path, 16,  path_action_stop, 1)
				enemy.available_moves--;
				enemy.previous_moves = "right";
			} else {
				var path = path_add();
				mp_linear_path(path, enemy.x - 32, enemy.y, 8, 0);
				path_start(path, 16,  path_action_stop, 1)
				enemy.available_moves--;
				enemy.previous_moves = "left";
			}
			
		} else if(place_meeting(enemy.x, enemy.y - 32, obj_wall) && alternative_move == 0 && !place_meeting(enemy.x + 32, enemy.y, obj_wall)) {
			if(enemy.previous_moves == "left" && !place_meeting(enemy.x + 32, enemy.y, obj_wall)) {
				var path = path_add();
				mp_linear_path(path, enemy.x - 32, enemy.y, 8, 0);
				path_start(path, 16,  path_action_stop, 1)
				enemy.available_moves--;
				enemy.previous_moves = "left";
			} else {
				var path = path_add();
				mp_linear_path(path, enemy.x + 32, enemy.y, 8, 0);
				path_start(path, 16,  path_action_stop, 1)
				enemy.available_moves--;
				enemy.previous_moves = "right";
			}
			
		} else {
			var path = path_add();
			mp_linear_path(path, enemy.x, enemy.y + 32, 8, 0);
			path_start(path, 16,  path_action_stop, 1)
			enemy.available_moves--;
			enemy.previous_moves = "down";
		}
		
	} else if(chosen_move > 0){
		//DOWN
		if(!place_meeting(enemy.x, enemy.y + 32, obj_wall)) {
			var path = path_add();
			mp_linear_path(path, enemy.x, enemy.y + 32, 8, 0);
			path_start(path, 16,  path_action_stop, 1)
			enemy.available_moves--;
			enemy.previous_moves = "down";
			
		} else if(place_meeting(enemy.x, enemy.y + 32, obj_wall) && alternative_move < 0 && !place_meeting(enemy.x - 32, enemy.y, obj_wall)) {
			if(enemy.previous_moves == "right" && !place_meeting(enemy.x - 32, enemy.y, obj_wall)) {
				var path = path_add();
				mp_linear_path(path, enemy.x + 32, enemy.y, 8, 0);
				path_start(path, 16,  path_action_stop, 1)
				enemy.available_moves--;
				enemy.previous_moves = "right";
			} else {
				var path = path_add();
				mp_linear_path(path, enemy.x - 32, enemy.y, 8, 0);
				path_start(path, 16,  path_action_stop, 1)
				enemy.available_moves--;
				enemy.previous_moves = "left";
			}
			
		} else if(place_meeting(enemy.x, enemy.y + 32, obj_wall) && alternative_move > 0 && !place_meeting(enemy.x + 32, enemy.y, obj_wall)) {
			if(enemy.previous_moves == "left" && !place_meeting(enemy.x + 32, enemy.y, obj_wall)) {
				var path = path_add();
				mp_linear_path(path, enemy.x - 32, enemy.y, 8, 0);
				path_start(path, 16,  path_action_stop, 1)
				enemy.available_moves--;
				enemy.previous_moves = "left";
			} else {
				var path = path_add();
				mp_linear_path(path, enemy.x + 32, enemy.y, 8, 0);
				path_start(path, 16,  path_action_stop, 1)
				enemy.available_moves--;
				enemy.previous_moves = "right";
			}
			
		} else if(place_meeting(enemy.x, enemy.y + 32, obj_wall) && alternative_move == 0 && !place_meeting(enemy.x - 32, enemy.y, obj_wall)) {
			if(enemy.previous_moves == "right" && !place_meeting(enemy.x - 32, enemy.y, obj_wall)) {
				var path = path_add();
				mp_linear_path(path, enemy.x + 32, enemy.y, 8, 0);
				path_start(path, 16,  path_action_stop, 1)
				enemy.available_moves--;
				enemy.previous_moves = "right";
			} else {
				var path = path_add();
				mp_linear_path(path, enemy.x - 32, enemy.y, 8, 0);
				path_start(path, 16,  path_action_stop, 1)
				enemy.available_moves--;
				enemy.previous_moves = "left";
			}
			
		} else if(place_meeting(enemy.x, enemy.y + 32, obj_wall) && alternative_move == 0 && !place_meeting(enemy.x + 32, enemy.y, obj_wall)) {
			if(enemy.previous_moves == "left" && !place_meeting(enemy.x + 32, enemy.y, obj_wall)) {
				var path = path_add();
				mp_linear_path(path, enemy.x - 32, enemy.y, 8, 0);
				path_start(path, 16,  path_action_stop, 1)
				enemy.available_moves--;
				enemy.previous_moves = "left";
			} else {
				var path = path_add();
				mp_linear_path(path, enemy.x + 32, enemy.y, 8, 0);
				path_start(path, 16,  path_action_stop, 1)
				enemy.available_moves--;
				enemy.previous_moves = "right";
			}
			
		} else {
			var path = path_add();
			mp_linear_path(path, enemy.x, enemy.y - 32, 8, 0);
			path_start(path, 16,  path_action_stop, 1)
			enemy.available_moves--;
			enemy.previous_moves = "up";
		}
	}
}

