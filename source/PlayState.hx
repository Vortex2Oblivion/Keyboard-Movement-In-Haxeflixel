package;

import flixel.FlxG;
import flixel.FlxSprite;
import flixel.FlxState;

class PlayState extends FlxState
{
	var sprite:FlxSprite;

	override public function create()
	{
		super.create();
		sprite = new FlxSprite(AssetPaths.man__png);
		sprite.x = FlxG.width / 2 - sprite.width / 2;
		sprite.y = FlxG.height / 2 - sprite.height / 2;
		add(sprite);
	}

	override public function update(elapsed:Float)
	{
		super.update(elapsed);

		if (FlxG.keys.pressed.A)
			sprite.x--;
		if (FlxG.keys.pressed.D)
			sprite.x++;
		if (FlxG.keys.pressed.W)
			sprite.y--;
		if (FlxG.keys.pressed.S)
			sprite.y++;
		if (FlxG.keys.pressed.LEFT)
			sprite.x--;
		if (FlxG.keys.pressed.RIGHT)
			sprite.x++;
		if (FlxG.keys.pressed.UP)
			sprite.y--;
		if (FlxG.keys.pressed.DOWN)
			sprite.y++;
		if (FlxG.keys.justPressed.SPACE)
		{
			sprite.y = FlxG.height / 2 - sprite.height / 2;
			sprite.x = FlxG.width / 2 - sprite.width / 2;
		}
	}
}
