package macros.tests;

import utest.Assert;

class MacroTest extends utest.Test {
	function testExampleClass() {
		var e = new ExampleClass();
        e.myNum = 3;
		var str = ExampleClass.myFunc(e.myNum);
		Assert.equals("3", str);
	}
}
