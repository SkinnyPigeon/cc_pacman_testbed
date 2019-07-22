/// @description Insert description here
// You can write your code in this editor
if(instance_place(x, y, obj_player)) {
	instance_destroy()
	enemy_array = [obj_blinky, obj_pinky];

	for(var i = 0; i < array_length_1d(enemy_array); i++) {
		scr_hunt_enemies(enemy_array[i])
	}
}