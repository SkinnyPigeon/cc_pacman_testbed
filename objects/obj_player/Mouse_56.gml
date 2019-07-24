/// @description Insert description here
// You can write your code in this editor

destination_x = x;
destination_y = y;

directions = [];
final_directions = [];
count = 0;
final_count = 0;
moves = [];

move_count = array_length_1d(obj_store.x_path);

if(obj_store.selection_is_good == 1) {
	for(var i = 0; i < move_count; i++) {	
		if(obj_store.x_path[i] == destination_x + 32 && obj_store.y_path[i] == destination_y) {
			destination_x += 32;
		
			directions[count] = "right"
			count++;
		} else if(obj_store.x_path[i] == destination_x - 32 && obj_store.y_path[i] == destination_y) {
			destination_x -= 32;

			directions[count] = "left"
			count++;
		} else if(obj_store.y_path[i] == destination_y + 32 && obj_store.x_path[i] == destination_x) {
			destination_y += 32;

			directions[count] = "down"
			count++;
		} else if(obj_store.y_path[i] == destination_y - 32 && obj_store.x_path[i] == destination_x) {
			destination_y -= 32;

			directions[count] = "up"
			count++;
		}
	}

	if(array_length_1d(directions) > 1) {
		for(var i = 0; i < array_length_1d(directions) - 1; i++) {
			if(directions[i] != directions[i + 1]) {
				if(i == array_length_1d(directions) - 2) {
					final_directions[final_count] = directions[array_length_1d(directions) - 1];
					moves[final_count] = i;
				}
				final_directions[final_count] = directions[i];
				moves[final_count] = i + 1;
				final_count++;
			} else if(i == array_length_1d(directions) - 2) {
				final_directions[final_count] = directions[i];
				moves[final_count] = i + 2;
				final_count++;
			} else {
				final_directions[final_count] = directions[array_length_1d(directions) - 1];
				moves[final_count] = 1;
			}
		}
	} else {
		final_directions[0] = directions[0];
		moves[0] = 1;
	}
	layer_destroy(global.asset_layer);
	globalvar start_count; 
	start_count = 0;
	globalvar end_count; 
	end_count = array_length_1d(final_directions);
	obj_store.path = final_directions;
	obj_store.path_length = moves;
	//obj_store.selection_is_good = 0;
	scr_path();
}
	
