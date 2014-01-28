/**
 * Created by Jessie on 24.01.14.
 */
package {
import ru.dch.enums.StringEnumeration;

public class TestEnum extends StringEnumeration
{
    public static const TEST_STRING:TestEnum = new TestEnum("string_1");
    public static const TEST_STRING2:TestEnum = new TestEnum("string_2");

    public function TestEnum(value:String)
    {

        super(value);
    }
}
}
