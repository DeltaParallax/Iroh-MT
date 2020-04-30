//dash shadow stuff
if (dsSnapPos[0] == 1) x=player_id.x;
if (dsSnapPos[1] ==1) y=player_id.y;

image_alpha -= 1/dsLifetime;
image_xscale += ((dsEndScale[0]-dsStartScale[0])/dsLifetime);
image_yscale += ((dsEndScale[1]-dsStartScale[1])/dsLifetime);
x+=(((dsEndDisp[0]-dsStartDisp[0])/dsLifetime)*dsDispScaleChange[0]);
y+=(((dsEndDisp[1]-dsStartDisp[1])/dsLifetime)*dsDispScaleChange[1]);

if (image_alpha <= 0) 
{
	player_id.dsNumShadows -=1
	instance_destroy();
}
