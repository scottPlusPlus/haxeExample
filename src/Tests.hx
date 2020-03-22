import utest.ui.Report;
import utest.Assert;
import utest.Async;
import utest.Runner;


class Tests {
  public static function Run() {
    var runner = new Runner();
    runner.addCase(new TestStuff());
    runner.addCases(macros.tests);
    Report.create(runner);
    runner.run();
  }
}


class TestStuff extends utest.Test{
   var foo : stuff.IMyInterface;

  function testMyClassWithBar() {
    foo = new stuff.MyClass();
    var bar = "bar";
    foo.MyField = bar;
    Assert.equals(bar, foo.MyField);
  }
}

