package
{

import flash.display.Sprite;

public class Main extends Sprite
{
    public var a:TestEnum = new TestEnum("string_3");
    public function Main()
    {
        trace(TestEnum.TEST_STRING);
        var a:TestEnum = new TestEnum("string_3");
        trace(a);
        trace();
    }
}
}
