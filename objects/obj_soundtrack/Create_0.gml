/// @description Insert description here
// You can write your code in this editor
//tracks = audio_group_load(obj_soundtrack)
//obj_pickup.pickup_sound = audio_group_load(pickup)
randomize();

song = floor(random(4));
tracks = [PIN, Papal_Pasta, Sine, Seeders];

track_to_player = tracks[song];
audio_play_sound(track_to_player, 10, false);
