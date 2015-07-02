package js.d3.svg;
import js.d3.time.Format;
import haxe.extern.EitherType;

/**
 * ...
 * @author Mike Almond - https://github.com/mikedotalmond
 */


typedef PointArr       = Array<Float>;
typedef PointObj       = {x:Float,y:Float};
typedef SvgInterpolate = EitherType<String,Array<PointArr>->String>;
typedef SvgCoordinate  = EitherType<Float,Dynamic->Float>;
typedef SvgPointArg    = EitherType<PointArr,PointArr->Float>;


@:native("d3.svg")
extern class SVG {

	@:overload(function():Dynamic->?Int->Line{})
	public function line(?settings:Dynamic):Line;

	@:overload(function():Dynamic->?Int->Area{})
	public function area(?settings:Dynamic):Area;

	@:overload(function():Dynamic->?Int->Arc{})
	public function arc(?settings:Dynamic):Arc;

	@:overload(function():Dynamic->?Int->Symbol{})
	public function symbol():Symbol;

	public var symbolTypes : Array<String>;

	@:overload(function():Dynamic->?Int->Chord{})
	public function chord():Chord;

	@:overload(function():Dynamic->?Int->Diagonal{})
	public function diagonal():Diagonal;

	@:overload(function():Dynamic->?Int->Axis{})
	public function axis():Axis;

	@:overload(function():Dynamic->?Int->Brush{})
	public function brush():Brush;
}

@:native("d3.svg.line")
extern class Line {
	@:overload(function():SvgCoordinate{})
	public function x(x:SvgCoordinate):Line;

	@:overload(function():SvgCoordinate{})
	public function y(y:SvgCoordinate):Line;

	@:overload(function():SvgInterpolate {})
	public function interpolate(interpolate:SvgInterpolate):Line;

	@:overload(function():Float {})
	public function tension(tension:Float):Line;

	@:overload(function():Dynamic->Bool{})
	public function defined(defined:PointArr->Bool):Line;

	public function radial():Line;

	@:overload(function():SvgPointArg{})
	public function radius(radius:SvgPointArg):Line;

	@:overload(function():SvgPointArg{})
	public function angle(angle:SvgPointArg):Line;
}

@:native("d3.svg.area")
extern class Area {

	@:overload(function():SvgCoordinate{})
	public function x(x:SvgCoordinate):Area;

	@:overload(function():SvgCoordinate{})
	public function x0(x:SvgCoordinate):Area;

	@:overload(function():SvgCoordinate{})
	public function x1(x:SvgCoordinate):Area;

	@:overload(function():SvgCoordinate{})
	public function y(y:SvgCoordinate):Area;

	@:overload(function():SvgCoordinate{})
	public function y0(y:SvgCoordinate):Area;

	@:overload(function():SvgCoordinate{})
	public function y1(y:SvgCoordinate):Area;

	@:overload(function():Svg {})
	public function interpolate(interpolate:SvgInterpolate):Area;

	@:overload(function():Float {})
	public function tension(?tension:Float):Area;

	@:overload(function():Dynamic->Bool{})
	public function defined(defined:PointArr->Bool):Area;

	public function radial():Area;

	@:overload(function():SvgPointArg{})
	public function radius(radius:SvgPointArg):Line;

	@:overload(function():SvgPointArg{})
	public function innerRadius(radius:SvgPointArg):Line;

	@:overload(function():SvgPointArg{})
	public function angle(angle:SvgPointArg):Line;

	@:overload(function():SvgPointArg{})
	public function startAngle(angle:SvgPointArg):Line;

	@:overload(function():SvgPointArg{})
	public function endAngle(angle:SvgPointArg):Line;
}

@:native("d3.svg.arc")
extern class Arc {

	@:overload(function():SvgPointArg{})
	public function innerRadius(?radius:SvgPointArg):Arc;

	@:overload(function():SvgPointArg{})
	public function outerRadius(?radius:SvgPointArg):Arc;

	@:overload(function():SvgPointArg{})
	public function cornerRadius(?radius:SvgPointArg):Arc;

	@:overload(function():SvgPointArg{})
	public function padRadius(?radius:SvgPointArg):Arc;

	@:overload(function():SvgPointArg{})
	public function startAngle(angle:SvgPointArg):Arc;

	@:overload(function():SvgPointArg{})
	public function endAngle(angle:SvgPointArg):Arc;

	@:overload(function():SvgPointArg{})
	public function padAngle(angle:SvgPointArg):Arc;

	public function centroid(datum:Dynamic, ?index:Int):Dynamic;
}


typedef SvgTypeArg     = EitherType<String,Dynamic->String>;
typedef SvgSizeArg     = EitherType<Float,Dynamic->Float>;

@:native("d3.svg.symbol")
extern class Symbol {
	@:overload(function():SvgTypeArg{})
	public function type(type:SvgTypeArg):Symbol;

	@:overload(function():SvgSizeArg{})
	public function size(size:SvgSizeArg):Symbol;
}


typedef SvgSourceArg = EitherType<Dynamic,Dynamic->Dynamic>;

@:native("d3.svg.chord")
extern class Chord {
	@:overload(function():SvgSourceArg{})
	public function source(source:SvgSourceArg):Chord;

	@:overload(function():SvgSourceArg{})
	public function target(target:SvgSourceArg):Chord;

	@:overload(function():SvgPointArg{})
	public function radius(radius:SvgPointArg):Chord;

	@:overload(function():SvgPointArg{})
	public function startAngle(angle:SvgPointArg):Chord;

	@:overload(function():SvgPointArg{})
	public function endAngle(angle:SvgPointArg):Chord;
}


typedef SvgSourceArg2 = EitherType<PointObj,Dynamic->PointObj>;
typedef SvgProjectionArg = PointObj->PointArr;

@:native("d3.svg.diagonal")
extern class Diagonal {

	@:overload(function():SvgSourceArg2{})
	public function source(source:SvgSourceArg2):Diagonal;

	@:overload(function():SvgSourceArg2{})
	public function target(target:SvgSourceArg2):Diagonal;

	@:overload(function():SvgProjectionArg{})
	public function projection(projection:SvgProjectionArg):Diagonal;

	public function radial():Diagonal;
}

@:native("d3.svg.axis")
extern class Axis {
	@:overload(function():Dynamic{})
	public function scale(s:Dynamic):Axis;

	@:overload(function():Dynamic{})
	@:overload(function(ticks:Int):Axis{})
	public function ticks(fb:Dynamic, i:Int):Axis;

	@:overload(function():Dynamic{})
	public function tickValues(?values:Array<Int>):Axis;

	@:overload(function():Dynamic{})
	public function tickSubdivide(?n:Int):Axis;

	@:overload(function(major:Int, ?minor:Int, ?end:Int):Axis{})
	public function tickSize():Dynamic;

	@:overload(function(padding:Int):Axis{})
	public function tickPadding():Int;

	@:overload(function(format:Format):Axis{})
	public function tickFormat():Format;

	public function orient(value:String):Axis;
}

@:native("d3.svg.brush")
extern class Brush {

	@:overload(function():SvgCoordinate{})
	public function x(scale:SvgCoordinate):Brush;

	@:overload(function():SvgCoordinate{})
	public function y(scale:SvgCoordinate):Brush;

	@:overload(function():Dynamic{})
	public function extent(values:Array<Float>):Brush;

	public function clear():Brush;
	public function empty():Bool;

	public function on(type:String, ?cb:Dynamic):Brush;

}