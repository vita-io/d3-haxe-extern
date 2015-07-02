package js.d3.scale;

/**
 * ...
 * @author Mike Almond - https://github.com/mikedotalmond
 * @author Ruben Weijers
 */


@:native("d3.scale")
extern class Scale {
	public function linear():Linear;
	public function identity():Identity;
	public function sqrt():Power;
	public function pow():Power;
	public function log():Log;
	public function quantize():Quantize;
	public function quantile():Quantile;
	public function threshold():Threshold;
	public function ordinal():Ordinal;

	public function category10():Ordinal;
	public function category20():Ordinal;
	public function category20b():Ordinal;
	public function category20c():Ordinal;
}

extern class Linear {
	public function invert(y:Dynamic):Dynamic;

	@:overload(function():Array<Float> {})
	public function domain(numbers:Array<Float>):Linear;

	@:overload(function():Array<Dynamic> {})
	public function range(values:Array<Dynamic>):Linear;

	public function rangeRound(values:Array<Dynamic>):Linear;

	@:overload(function():Array<Dynamic> {})
	public function interpolate(factory:Array<Dynamic>):Linear;

	@:overload(function():Bool {})
	public function clamp(boolean:Bool):Linear;

	public function nice(?m:Int):Linear;
	public function ticks(?count:Int):Int;
	public function tickFormat(count:Int, ?format:String):Dynamic;
	public function copy():Linear;
}

extern class Identity {
	public function invert(x:Dynamic):Dynamic;

	@:overload(function():Array<Float> {})
	public function domain(numbers:Array<Float>):Identity;

	@:overload(function():Array<Dynamic> {})
	public function range(values:Array<Dynamic>):Identity;

	public function ticks(?count:Int):Int;
	public function tickFormat(count:Int, ?format:String):Dynamic;
	public function copy():Identity;
}

extern class Power {
	public function invert(y:Dynamic):Dynamic;

	@:overload(function():Array<Float> {})
	public function domain(numbers:Array<Float>):Power;

	@:overload(function():Array<Dynamic> {})
	public function range(values:Array<Dynamic>):Power;

	public function rangeRound(values:Array<Dynamic>):Power;

	@:overload(function():Float {})
	public function exponent(k:Float):Float;

	@:overload(function():Array<Dynamic> {})
	public function interpolate(factory:Array<Dynamic>):Dynamic;

	@:overload(function():Bool {})
	public function clamp(boolean:Bool):Dynamic;

	public function nice(?m:Int):Power;
	public function ticks(?count:Int):Int;
	public function tickFormat(count:Int, ?format:String):Dynamic;
	public function copy():Power;
}

extern class Log {
	public function invert(y:Dynamic):Dynamic;

	@:overload(function():Array<Float> {})
	public function domain(numbers:Array<Float>):Log;

	@:overload(function():Array<Dynamic> {})
	public function range(values:Array<Dynamic>):Log;

	public function rangeRound(values:Array<Dynamic>):Log;
	public function base(?base:Int):Int;

	@:overload(function():Array<Dynamic> {})
	public function interpolate(factory:Array<Dynamic>):Dynamic;

	@:overload(function():Bool {})
	public function clamp(boolean:Bool):Dynamic;

	public function nice():Log;
	public function ticks():Int;
	public function tickFormat(count:Int, ?format:String):Dynamic;
	public function copy():Log;
}

extern class Quantize {
	public function invertExtend(y:Dynamic):Dynamic;

	@:overload(function():Array<Float> {})
	public function domain(numbers:Array<Float>):Quantize;

	@:overload(function():Array<Dynamic> {})
	public function range(values:Array<Dynamic>):Quantize;

	public function copy():Quantize;
}

extern class Quantile {
	public function invertExtend(y:Dynamic):Dynamic;

	@:overload(function():Array<Float> {})
	public function domain(numbers:Array<Float>):Quantile;

	@:overload(function():Array<Dynamic> {})
	public function range(values:Array<Dynamic>):Quantile;

	public function quantiles():Array<Dynamic>;
	public function copy():Quantile;
}

extern class Threshold {
	public function invertExtend(y:Dynamic):Dynamic;

	@:overload(function():Array<Float> {})
	public function domain(numbers:Array<Float>):Threshold;

	@:overload(function():Array<Dynamic> {})
	public function range(values:Array<Dynamic>):Threshold;

	public function copy():Threshold;
}

extern class Ordinal {

	@:overload(function():Array<Float> {})
	public function domain(numbers:Array<Float>):Ordinal;

	@:overload(function():Array<Dynamic> {})
	public function range(values:Array<Dynamic>):Ordinal;

	public function rangePoints(interval:Array<Float>, ?padding:Float):Ordinal;
	public function rangeRoundPoints(interval:Array<Float>, ?padding:Float):Ordinal;
	public function rangeBands(interval:Array<Float>, ?padding:Float, ?outerPadding:Float):Ordinal;
	public function rangeRoundBands(interval:Array<Float>, ?padding:Float, ?outerPadding:Float):Ordinal;
	public function rangeBand():Float;
	public function rangeExtent():Array<Float>;
	public function copy():Ordinal;
}
