package macros;

#if macro
import haxe.macro.ExprTools;
import haxe.macro.Context;
import haxe.macro.Expr;

class BuildMacro {
	public static function build():Array<Field> {
		// get existing fields from the context from where build() is called
		var fields = Context.getBuildFields();

		// append a field
		fields.push({
			name: "myNum",
			access: [Access.APublic],
			kind: FieldType.FVar(macro:Int, macro $v{0}),
			pos: Context.currentPos(),
		});

		var exampleArgs:Array<FunctionArg> = [
			{
				name: 'num',
				opt: false,
				type: macro:Int
			}
		];

		var exampleFunc:Function = {
			expr: macro {
				if (num == 42) {
					return "Oh no, not again";
				}
				return Std.string(num);
			},
			ret: (macro:String),
			args: exampleArgs
		};

		var exampleFuncField = {
			access: [APublic, AStatic],
			kind: FFun(exampleFunc),
			name: 'myFunc',
			pos: Context.currentPos()
		}

		fields.push(exampleFuncField);

		return fields;
	}
}
#end
