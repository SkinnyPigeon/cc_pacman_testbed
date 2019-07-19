///@function scr_path
///@description scr_path
if(start_count < end_count) {
	switch(obj_store.path[start_count]) {
		case("right"):
			var right_distance = 32 * obj_store.path_length[start_count];
		
			var right_path = path_add();
			mp_linear_path(right_path, obj_player_2.x + right_distance, obj_player_2.y, 3, 0);
			path_start(right_path, 60, path_action_stop, 1);
			break;
		case("left"):
			var left_distance = 32 * obj_store.path_length[start_count];
		
			var left_path = path_add();
			mp_linear_path(left_path, obj_player_2.x - left_distance, obj_player_2.y, 3, 0);
			path_start(left_path, 60, path_action_stop, 1);
			break;
		case("down"):
			var down_distance = 32 * obj_store.path_length[start_count];
		
			var down_path = path_add();
			mp_linear_path(down_path, obj_player_2.x, obj_player_2.y + down_distance, 3, 0);
			path_start(down_path, 60, path_action_stop, 1);
			break;
		case("up"):
			var up_distance = 32 * obj_store.path_length[start_count];
		
			var up_path = path_add();
			mp_linear_path(up_path, obj_player_2.x, obj_player_2.y - up_distance, 3, 0);
			path_start(up_path, 60, path_action_stop, 1);
			break;
	}
}

