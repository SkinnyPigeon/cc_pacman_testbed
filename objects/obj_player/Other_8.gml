/// @description Insert description here
// You can write your code in this editor
start_count += 1;
scr_path();

enemy_array = [obj_blinky, obj_pinky];

for(var i = 0; i < array_length_1d(enemy_array); i++) {
	scr_enemy_path(enemy_array[i])
}