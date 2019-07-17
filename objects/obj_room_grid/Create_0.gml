/// @description Insert description here
// You can write your code in this editor
globalvar room_grid;
room_grid = mp_grid_create(0, 0, room_width, room_height, 32, 32);
mp_grid_add_instances(room_grid, obj_wall, true);