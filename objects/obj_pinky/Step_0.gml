/// @description Insert description here
// You can write your code in this editor
if(start == 1) {
	start = 0;
	//show_debug_message("Chosen Move: " + string(chosen_move))
	//show_debug_message("Alternative Move: " + string(alternative_move))
	
	//show_debug_message("Chosen Direction: " + string(chosen_direction))
	//show_debug_message("Alternative Direction: " + string(alternative_move))
	//show_debug_message("Available Moves: " + string(available_moves))
	
	scr_enemy_move(self, chosen_move, alternative_move, chosen_direction, alternative_direction, available_moves)
}

if(instance_place(x, y, obj_player) && pill_count_down > 0) {
	x = 512;
	y = 384;
	reverse_flag = 0;
	pill_count_down = 0;
}