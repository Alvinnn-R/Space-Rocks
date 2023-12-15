obj_game.points += 50;

with(other) instance_destroy();

effect_create_above(0, x + 0, y + 0, 1, $FFFFFF & $ffffff);

direction = (random_range(0, 360));

if(sprite_index == spr_rock_big)
{
	sprite_index = spr_rock_small;
	image_index = 0;

	instance_copy(true);
}

else
{
	if(instance_number(obj_rock) < 12)
	{
		sprite_index = spr_rock_big;
		image_index = 0;
	
		x = -100;
	}

	else
	{
		instance_destroy();
	}
}