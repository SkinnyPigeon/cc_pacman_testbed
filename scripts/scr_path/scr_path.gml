///@function scr_path
///@description scr_path
if(start_count < end_count) {
	if(start_count == 0) {
		var length = obj_store.path_length[start_count]
	} else {
		var length = obj_store.path_length[start_count] - obj_store.path_length[start_count - 1];
	}
	var distance = 32 * length;
	var path = path_add();
	switch(obj_store.path[start_count]) {
		case("right"):
			mp_linear_path(path, obj_player.x + distance, obj_player.y, 8, 0);
			path_start(path, 16,  path_action_stop, 1);
			break;
		case("left"):
			mp_linear_path(path, obj_player.x - distance, obj_player.y, 8, 0);
			path_start(path, 16,  path_action_stop, 1);
			break;
		case("down"):
			mp_linear_path(path, obj_player.x, obj_player.y + distance, 8, 0);
			path_start(path, 16,  path_action_stop, 1);
			break;
		case("up"):
			mp_linear_path(path, obj_player.x, obj_player.y - distance, 8, 0);
			path_start(path, 16,  path_action_stop, 1);
			break;
	}
}

