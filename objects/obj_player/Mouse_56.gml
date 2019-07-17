/// @description Insert description here
// You can write your code in this editor
var destination_x = x;
var destination_y = y;
for(var i = 0; i < array_length_1d(obj_store.x_path); i++) {
	if(obj_store.x_path[i] == x + 32 && obj_store.y_path[i] == y) {
		destination_x += 32;
		x += 32;
	} else if(obj_store.x_path[i] == x - 32 && obj_store.y_path[i] == y) {
		destination_y -= 32;
		x -= 32;
	} else if(obj_store.y_path[i] == y + 32 && obj_store.x_path[i] == x) {
		destination_y += 32;
		y += 32;
	} else if(obj_store.y_path[i] == y - 32 && obj_store.x_path[i] == x) {
		destination_y -= 32;
		y -= 32;
	}
}

obj_store.player_x = obj_player.x;
obj_store.player_y = obj_player.y;
