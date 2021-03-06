package test;

import utest.Runner;
import utest.ui.Report;

@:buildXml('
<files id="haxe">
<compilerflag value="-std=c++14" />
<compilerflag value="-I.." />
</files>
<files id="runtime">
<compilerflag value="-std=c++14" />
</files>
<files id="__main__">
<compilerflag value="-std=c++14" />
</files>

<target id="haxe" tool="linker" toolid="exe">
<lib name="../build/hxhttp.a" />
</target>
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