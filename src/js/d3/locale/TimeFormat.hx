package js.d3.locale;


extern class TimeFormatter {
	public function parse(string:String) : Null<Date>;
	public function toString() : String;
}


/**
 * ...
 * @author Mike Almond - https://github.com/mikedotalmond
 */

 @:native("d3.time.format")
extern class TimeFormat {

	public function format(?specifier:String):Format;

	@:overload(function(date:Date):TimeFormatter{})
	public function utc(template:String):TimeFormatter;

	@:overload(function(date:Date):Dynamic{})
	public function iso(template:String):Format;

	public function parse(data:String):Date;
}