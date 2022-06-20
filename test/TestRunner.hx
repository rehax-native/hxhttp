package test;

import utest.Runner;
import utest.ui.Report;

@:buildXml('
<files id="haxe">
<compilerflag value="-std=c++14" />
</files>
<files id="runtime">
<compilerflag value="-std=c++14" />
</files>
<files id="__main__">
<compilerflag value="-std=c++14" />
</files>
')
class TestRunner {
  public static function main() {
    //the long way
    // var runner = new Runner();
    // runner.addCase(new TestCase1());
    // runner.addCase(new TestCase2());
    // Report.create(runner);
    // runner.run();

    //the short way in case you don't need to handle any specifics
    utest.UTest.run([
        new TestVerbs(),
        new TestStatuses(),
    ]);
  }
}