/// @description Insert description here
// You can write your code in this editor
if(alarm[0] == 0) {
	show_debug_message(moves_left);
	target_x = obj_player.x;
	target_y = obj_player.y;
	
	if(target_x < x) {
		show_debug_message("LEFT")
		for(var i = 0; i < moves_left; i++) {
			if(place_meeting(x - (32 * i), y, obj_wall)) {
				var left_path = path_add();
				mp_linear_path(left_path, x - (32 * i), y, 3, 0);
				path_start(left_path, 60, path_action_stop, 1)
				moves_left--;
			} else {
				var left_path = path_add();
				mp_linear_path(left_path, x - (32 * (i + 1)), y, 3, 0);
				path_start(left_path, 60, path_action_stop, 1)
				moves_left--;
			}
		}
	}
	if(target_x > x) {
		show_debug_message("RIGHT")
		for(var i = 0; i < moves_left; i++) {
			if(place_meeting(x + (32 * i), y, obj_wall)) {
				var right_path = path_add();
				mp_linear_path(right_path, x + (32 * i), y, 3, 0);
				path_start(right_path, 60, path_action_stop, 1)
				moves_left--;
			} else {
				var right_path = path_add();
				mp_linear_path(right_path, x + (32 * (i + 1)), y, 3, 0);
				path_start(right_path, 60, path_action_stop, 1)
				moves_left--;
			}
		}
	}
	if(target_y > y) {
		show_debug_message("DOWN")
		for(var i = 0; i < moves_left; i++) {
			if(place_meeting(x , y + (32 * i), obj_wall)) {
				var down_path = path_add();
				mp_linear_path(down_path, x, y + (32 * i), 3, 0);
				path_start(down_path, 60, path_action_stop, 1)
				moves_left--;
			} else {
				var down_path = path_add();
				mp_linear_path(down_path, x, y + (32 * (i + 1)), 3, 0);
				path_start(down_path, 60, path_action_stop, 1)
				moves_left--;
			}
		}
	}
	if(target_y < y) {
		show_debug_message("UP")
		for(var i = 0; i < moves_left; i++) {
			if(place_meeting(x , y - (32 * i), obj_wall)) {
				var up_path = path_add();
				mp_linear_path(up_path, x, y - (32 * i), 3, 0);
				path_start(up_path, 60, path_action_stop, 1)
				moves_left--;
			} else {
				var up_path = path_add();
				mp_linear_path(up_path, x, y - (32 * (i + 1)), 3, 0);
				path_start(up_path, 60, path_action_stop, 1)
				moves_left--;
			}
		}
	}
}