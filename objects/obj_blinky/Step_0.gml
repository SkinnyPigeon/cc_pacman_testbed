/// @description Insert description here
// You can write your code in this editor
if(start == 1) {
	previous_moves = 0;
	start = 0;
	show_debug_message("Chosen Move: " + string(chosen_move))
	show_debug_message("Alternative Move: " + string(alternative_move))
	
	show_debug_message("Chosen Direction: " + string(chosen_direction))
	show_debug_message("Alternative Direction: " + string(alternative_move))
	show_debug_message("Available Moves: " + string(available_moves))
	
	scr_enemy_move_3(self, chosen_move, alternative_move, chosen_direction, alternative_direction, available_moves)
	//if(chosen_direction == "x") {
	//	if(chosen_move < 0){
	//		if(place_meeting(x - 32, y, obj_wall)) {
	//			show_message("HI")
	//		}	
	//	}
	//}
}
