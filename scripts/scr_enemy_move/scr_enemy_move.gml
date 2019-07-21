///@description scr_enemy_move(enemy, chosen_move, alternative_move, chosen_direction, alternative_direction, available_moves)
///@param enemy
///@param chosen_move
///@param alternative_move
///@param chosen_direction
///@param alternative_direction
///@param available_moves

var enemy = argument0;
var chosen_move = argument1;
var alternative_move = argument2;
var chosen_direction = argument3;
var alternative_direction = argument4;
var available_moves = argument5;

//show_message(enemy.chosen_move);

if(chosen_direction == "x") {
	if(chosen_move < 0){
		if(place_meeting(x - 32, y, obj_wall)) {
			show_message("HI")
		}	
	}
}