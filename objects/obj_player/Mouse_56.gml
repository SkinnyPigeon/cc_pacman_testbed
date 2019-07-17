/// @description Insert description here
// You can write your code in this editor
show_debug_message(obj_player.x)
for(var i = 0; i < array_length_1d(obj_store.x_path); i++) {
	if(obj_store.x_path[i] == x + 32 && obj_store.y_path[i] == y) {
		x += 32;	
	} else if(obj_store.x_path[i] == x - 32 && obj_store.y_path[i] == y) {
		x -= 32;
	} else if(obj_store.y_path[i] == y + 32 && obj_store.x_path[i] == x) {
		y += 32;
	} else if(obj_store.y_path[i] == y - 32 && obj_store.x_path[i] == x) {
		y -= 32;
	}
}

obj_store.player_x = obj_player.x;
obj_store.player_y = obj_player.y;

show_debug_message(obj_player.x)