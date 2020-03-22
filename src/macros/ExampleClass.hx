package macros;

//the macro will add the myNum and myFunc to the class
@:build(macros.BuildMacro.build())
class ExampleClass {
    public function new(){}
}