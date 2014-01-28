/**
 * Created by Crazy Horse on 23.01.14.
 */
package ru.dch.enums
{
internal class StringEnumeration extends Enumeration
{
    public function StringEnumeration(value:String)
    {
        this.value = value;
    }

    protected function get value():String
    {
        return _value;
    }

    protected function set value(value:String):void
    {
        _value = value;
    }
}
}
