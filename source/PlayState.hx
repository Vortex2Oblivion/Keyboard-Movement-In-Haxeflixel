package;

import flixel.FlxG;
import flixel.FlxSprite;
import flixel.FlxState;

class PlayState extends FlxState
{
	// Defines the sprite.
	var sprite:FlxSprite;
	var scaleFactor = 0.1;

	override public function create()
	{
		// Creates The Sprite
		super.create();
		sprite = new FlxSprite(AssetPaths.man__png);
		sprite.x = FlxG.width / 2 - sprite.width / 2;
		sprite.y = FlxG.height / 2 - sprite.height / 2;
		add(sprite);
	}

	override public function update(elapsed:Float)
	{
		super.update(elapsed);
		// Keyboard Movement
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

		// Mouse Movement
		if (FlxG.mouse.pressed)
		{
			sprite.setPosition(FlxG.mouse.getPosition().x - sprite.width / 2, FlxG.mouse.getPosition().y - sprite.height / 2);
		}
		// This does something. I just don't know what.
		if (FlxG.mouse.justReleasedRight)
		{
			sprite.y = FlxG.height / 2 - sprite.height / 2;
			sprite.x = FlxG.width / 2 - sprite.width / 2;
			sprite.scale.set(1, 1);
		}
	}
}
