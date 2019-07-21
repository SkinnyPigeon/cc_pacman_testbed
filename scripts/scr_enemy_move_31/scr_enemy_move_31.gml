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

show_debug_message("AVAILABLE_MOVES: " + string(available_moves));

//if(available_moves == 0) {
//	enemy.previous_moves = 0;
//}

//if(enemy.previous_moves != 0)  {
	
//}

if(chosen_direction == "x" && available_moves > 0) {
	if(chosen_move < 0){
		//LEFT
		if(!place_meeting(enemy.x - 32, enemy.y, obj_wall) && enemy.previous_moves != "right") {
			var path = path_add();
			mp_linear_path(path, enemy.x - 32, enemy.y, 3, 0);
			path_start(path, 60, path_action_stop, 1)
			enemy.available_moves--;
			enemy.previous_moves = "left";
		} else if(place_meeting(enemy.x - 32, enemy.y, obj_wall) && alternative_move < 0 && !place_meeting(enemy.x, enemy.y - 32, obj_wall) && enemy.previous_moves != "down") {
			var path = path_add();
			mp_linear_path(path, enemy.x, enemy.y - 32, 3, 0);
			path_start(path, 60, path_action_stop, 1)
			enemy.available_moves--;
			enemy.previous_moves = "up";
		} else if(place_meeting(enemy.x - 32, enemy.y, obj_wall) && alternative_move > 0 && !place_meeting(enemy.x, enemy.y + 32, obj_wall) && enemy.previous_moves != "up") {
			var path = path_add();
			mp_linear_path(path, enemy.x, enemy.y + 32, 3, 0);
			path_start(path, 10, path_action_stop, 1)
			enemy.available_moves--;
			enemy.previous_moves = "down";
		} else if(place_meeting(enemy.x - 32, enemy.y, obj_wall) && alternative_move == 0 && !place_meeting(enemy.x, enemy.y - 32, obj_wall) && enemy.previous_moves != "down") {
			var path = path_add();
			mp_linear_path(path, enemy.x, enemy.y - 32, 3, 0);
			path_start(path, 10, path_action_stop, 1)
			enemy.available_moves--;
			enemy.previous_moves = "up";
		} else if(place_meeting(enemy.x - 32, enemy.y, obj_wall) && alternative_move == 0 && !place_meeting(enemy.x, enemy.y + 32, obj_wall) && enemy.previous_moves != "up") {
			var path = path_add();
			mp_linear_path(path, enemy.x, enemy.y + 32, 3, 0);
			path_start(path, 10, path_action_stop, 1)
			enemy.available_moves--;
			enemy.previous_moves = "down";
		} else {
			var path = path_add();
			mp_linear_path(path, enemy.x + 32, enemy.y, 3, 0);
			path_start(path, 10, path_action_stop, 1)
			enemy.available_moves--;
			enemy.previous_moves = "right";
		}
	} else if(chosen_move > 0){
		//RIGHT
		show_debug_message("PREVIOUS DIRECTION: " + string(enemy.previous_moves))

		if(!place_meeting(enemy.x + 32, enemy.y, obj_wall) && enemy.previous_moves != "left") {
			var path = path_add();
			mp_linear_path(path, enemy.x + 32, enemy.y, 2, 0);
			path_start(path, 10, path_action_stop, 1)
			enemy.available_moves--;
			enemy.previous_moves = "right";
		} else if(place_meeting(enemy.x + 32, enemy.y, obj_wall) && alternative_move < 0 && !place_meeting(enemy.x, enemy.y - 32, obj_wall) && enemy.previous_moves != "down") {
			var path = path_add();
			mp_linear_path(path, enemy.x, enemy.y - 32, 2, 0);
			path_start(path, 10, path_action_stop, 1)
			enemy.available_moves--;
			enemy.previous_moves = "up";
		} else if(place_meeting(enemy.x + 32, enemy.y, obj_wall) && alternative_move > 0 && !place_meeting(enemy.x, enemy.y + 32, obj_wall) && enemy.previous_moves != "up") {
			var path = path_add();
			mp_linear_path(path, enemy.x, enemy.y + 32, 2, 0);
			path_start(path, 10, path_action_stop, 1)
			enemy.available_moves--;
			enemy.previous_moves = "down";
		} else if(place_meeting(enemy.x + 32, enemy.y, obj_wall) && alternative_move == 0 && !place_meeting(enemy.x, enemy.y - 32, obj_wall) && enemy.previous_moves != "down") {
			var path = path_add();
			mp_linear_path(path, enemy.x, enemy.y - 32, 2, 0);
			path_start(path, 10, path_action_stop, 1)
			enemy.available_moves--;
			enemy.previous_moves = "up";
		} else if(place_meeting(enemy.x + 32, enemy.y, obj_wall) && alternative_move == 0 && !place_meeting(enemy.x, enemy.y + 32, obj_wall) && enemy.previous_moves != "up") {
			var path = path_add();
			mp_linear_path(path, enemy.x, enemy.y + 32, 2, 0);
			path_start(path, 10, path_action_stop, 1)
			enemy.available_moves--;
			enemy.previous_moves = "down";
		} else {
			var path = path_add();
			mp_linear_path(path, enemy.x - 32, enemy.y, 2, 0);
			path_start(path, 10, path_action_stop, 1)
			enemy.available_moves--;
			enemy.previous_moves = "left";
		}
	}
} else if(chosen_direction == "y" && available_moves > 0) {
	if(chosen_move < 0){
		//UP
		if(!place_meeting(enemy.x, enemy.y - 32, obj_wall) && enemy.previous_moves != "down") {
			var path = path_add();
			mp_linear_path(path, enemy.x, enemy.y - 32, 2, 0);
			path_start(path, 10, path_action_stop, 1)
			enemy.available_moves--;
			enemy.previous_moves = "up";
		} else if(place_meeting(enemy.x, enemy.y - 32, obj_wall) && alternative_move < 0 && !place_meeting(enemy.x - 32, enemy.y, obj_wall) && enemy.previous_moves != "right") {
			var path = path_add();
			mp_linear_path(path, enemy.x - 32, enemy.y, 2, 0);
			path_start(path, 10, path_action_stop, 1)
			enemy.available_moves--;
			enemy.previous_moves = "left";
		} else if(place_meeting(enemy.x, enemy.y - 32, obj_wall) && alternative_move > 0 && !place_meeting(enemy.x + 32, enemy.y, obj_wall) && enemy.previous_moves != "left") {
			var path = path_add();
			mp_linear_path(path, enemy.x + 32, enemy.y, 2, 0);
			path_start(path, 10, path_action_stop, 1)
			enemy.available_moves--;
			enemy.previous_moves = "right";
		} else if(place_meeting(enemy.x, enemy.y - 32, obj_wall) && alternative_move == 0 && !place_meeting(enemy.x - 32, enemy.y, obj_wall) && enemy.previous_moves != "right") {
			var path = path_add();
			mp_linear_path(path, enemy.x - 32, enemy.y, 2, 0);
			path_start(path, 10, path_action_stop, 1)
			enemy.available_moves--;
			enemy.previous_moves = "left";
		} else if(place_meeting(enemy.x, enemy.y - 32, obj_wall) && alternative_move == 0 && !place_meeting(enemy.x + 32, enemy.y, obj_wall) && enemy.previous_moves != "left") {
			var path = path_add();
			mp_linear_path(path, enemy.x + 32, enemy.y, 2, 0);
			path_start(path, 10, path_action_stop, 1)
			enemy.available_moves--;
			enemy.previous_moves = "right";
		} else {
			var path = path_add();
			mp_linear_path(path, enemy.x, enemy.y + 32, 2, 0);
			path_start(path, 10, path_action_stop, 1)
			enemy.available_moves--;
			enemy.previous_moves = "down";
		}
		
	} else if(chosen_move > 0){
		//DOWN
		if(!place_meeting(enemy.x, enemy.y + 32, obj_wall) && enemy.previous_moves != "up") {
			var path = path_add();
			mp_linear_path(path, enemy.x, enemy.y + 32, 2, 0);
			path_start(path, 60, path_action_stop, 1)
			enemy.available_moves--;
			enemy.previous_moves = "down";
		} else if(place_meeting(enemy.x, enemy.y + 32, obj_wall) && alternative_move < 0 && !place_meeting(enemy.x - 32, enemy.y, obj_wall) && enemy.previous_moves != "right") {
			var path = path_add();
			mp_linear_path(path, enemy.x - 32, enemy.y, 2, 0);
			path_start(path, 60, path_action_stop, 1)
			enemy.available_moves--;
			enemy.previous_moves = "left";
		} else if(place_meeting(enemy.x, enemy.y + 32, obj_wall) && alternative_move > 0 && !place_meeting(enemy.x + 32, enemy.y, obj_wall) && enemy.previous_moves != "left") {
			var path = path_add();
			mp_linear_path(path, enemy.x + 32, enemy.y, 2, 0);
			path_start(path, 60, path_action_stop, 1)
			enemy.available_moves--;
			enemy.previous_moves = "right";
		} else if(place_meeting(enemy.x, enemy.y + 32, obj_wall) && alternative_move == 0 && !place_meeting(enemy.x - 32, enemy.y, obj_wall) && enemy.previous_moves != "right") {
			var path = path_add();
			mp_linear_path(path, enemy.x - 32, enemy.y, 2, 0);
			path_start(path, 60, path_action_stop, 1)
			enemy.available_moves--;
			enemy.previous_moves = "left";
		} else if(place_meeting(enemy.x, enemy.y + 32, obj_wall) && alternative_move == 0 && !place_meeting(enemy.x + 32, enemy.y, obj_wall) && enemy.previous_moves != "left") {
			var path = path_add();
			mp_linear_path(path, enemy.x + 32, enemy.y, 2, 0);
			path_start(path, 60, path_action_stop, 1)
			enemy.available_moves--;
			enemy.previous_moves = "right";
		} else {
			var path = path_add();
			mp_linear_path(path, enemy.x, enemy.y - 32, 2, 0);
			path_start(path, 60, path_action_stop, 1)
			enemy.available_moves--;
			enemy.previous_moves = "up";
		}
	}
}

