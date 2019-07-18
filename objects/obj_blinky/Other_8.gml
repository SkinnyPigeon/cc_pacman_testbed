/// @description Insert description here
// You can write your code in this editor
if(last_move == "left") {
	if(x % 32 != 0) x -= 1;
}

if(last_move == "right") {
	if(x % 32 != 0) x += 1;
}

if(last_move == "up") {
	if(x % 32 != 0) y -= 1;
}

if(last_move == "down") {
	if(x % 32 != 0) x += 1;
}
