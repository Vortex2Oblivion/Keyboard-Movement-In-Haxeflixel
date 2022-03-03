package;

import flixel.FlxG;
import flixel.FlxSprite;
import flixel.FlxState;
import flixel.graphics.tile.FlxGraphicsShader;

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
	}
}
