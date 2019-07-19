/// @description Insert description here
// You can write your code in this editor

destination_x = x;
destination_y = y;

directions = [];
final_directions = [];
count = 0;
final_count = 0;
moves = [];

//right_count = 0
//left_count = 0
//down_count = 0
//up_count = 0

move_count = array_length_1d(obj_store.x_path);
	
for(var i = 0; i < move_count; i++) {	
	if(obj_store.x_path[i] == destination_x + 32 && obj_store.y_path[i] == destination_y) {
		destination_x += 32;
		
		//right_count += 1;
		directions[count] = "right"
		count++;
	} else if(obj_store.x_path[i] == destination_x - 32 && obj_store.y_path[i] == destination_y) {
		destination_x -= 32;

		//left_count += 1;
		directions[count] = "left"
		count++;
	} else if(obj_store.y_path[i] == destination_y + 32 && obj_store.x_path[i] == destination_x) {
		destination_y += 32;

		//down_count += 1;
		directions[count] = "down"
		count++;
	} else if(obj_store.y_path[i] == destination_y - 32 && obj_store.x_path[i] == destination_x) {
		destination_y -= 32;

		//up_count += 1;
		directions[count] = "up"
		count++;
	}
}

show_debug_message(directions)

for(var i = 0; i < array_length_1d(directions) - 1; i++) {
	if(directions[i] != directions[i + 1]) {
		final_directions[final_count] = directions[i];
		moves[final_count] = i;
		final_count++;
	}
}

show_debug_message(final_directions)
show_debug_message(final_count)

//if(left_count > 0) {
//		right_count = 0;
//		down_count = 0;
//		up_count = 0;
//		directions[count] = "left";
//		moves[count] = left_count;
//		left_count = 0;
//		count++;
//	}
//	if(right_count > 0) {
//		left_count = 0;
//		down_count = 0;
//		up_count = 0;
//		directions[count] = "right";
//		moves[count] = right_count;
//		right_count = 0;
//		count++;
//	}
//	if(down_count > 0) {
//		right_count = 0;
//		left_count = 0;
//		up_count = 0;
//		directions[count] = "down";
//		moves[count] = down_count;
//		down_count = 0;
//		count++;
//	}
//	if(up_count > 0) {
//		right_count = 0;
//		left_count = 0;
//		down_count = 0;
//		directions[count] = "up";
//		moves[count] = up_count;
//		up_count = 0;
//		count++;
//	}