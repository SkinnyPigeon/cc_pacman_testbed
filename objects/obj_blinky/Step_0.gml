/// @description Insert description here
// You can write your code in this editor
if(alarm[0] == 0) {
	
	show_debug_message(moves_left);
	target_x = obj_player.x;
	target_y = obj_player.y;
	start_x = x;
	start_y = y;
	show_debug_message("Target_X: " + string(target_x))
	show_debug_message("X: " + string(x));
	if(target_x < x) {
		target_moves = moves_left;
		show_debug_message("LEFT")
		for(var i = 0; i < target_moves; i++) {
			if(!place_meeting(x - 33, y, obj_wall)) {
				start_x -= 32;
				var left_path = path_add();
				mp_linear_path(left_path, start_x, y, 3, 0);
				path_start(left_path, 60, path_action_stop, 1);
				
				moves_left--;
				last_move = "left";
			}
			
		}
	}
	if(target_x > x) {
		target_moves = moves_left;
		show_debug_message("RIGHT")
		for(var i = 0; i < target_moves; i++) {
			if(!place_meeting(x + 33, y, obj_wall)) {
				start_x += 32;
				var right_path = path_add();
				mp_linear_path(right_path, start_x, y, 3, 0);
				path_start(right_path, 60, path_action_stop, 1);
				
				moves_left--;
				last_move = "right";
			}
			
		}
	}
	if(target_y > y) {
		target_moves = moves_left;
		show_debug_message("DOWN")
		for(var i = 0; i < target_moves; i++) {
			if(!place_meeting(x, y + 33, obj_wall)) {
				start_y += 32;
				var down_path = path_add();
				mp_linear_path(down_path, x, start_y, 3, 0);
				path_start(down_path, 60, path_action_stop, 1);
				moves_left--;
				last_move = "down";
			}
			
		}
	}	
	if(target_y < y) {
		target_moves = moves_left;
		show_debug_message("UP")
		for(var i = 0; i < target_moves; i++) {
			if(!place_meeting(x, y - 33, obj_wall)) {
				start_y -= 32;
				var up_path = path_add();
				mp_linear_path(up_path, x, start_y, 3, 0);
				path_start(up_path, 60, path_action_stop, 1);
				moves_left--;
				last_move = "up";
			}
			
		}
	}
}