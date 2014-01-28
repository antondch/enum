/**
 * Created by Jessie on 23.01.14.
 */
package ru.dch.enums
{
import flash.utils.describeType;

public class Enumeration
{
    private static var elements:Vector.<Enumeration> = new Vector.<Enumeration>();
    private var _value:*;

    public function Enumeration()
    {
        var clazz: Class= Object(this).constructor;
        var a =describeType(clazz);
        elements.push(this);
    }



    public static function getElementsList(enumerationClass:Class):Vector.<Enumeration>
    {
        return elements.filter(checkClass);
        function checkClass(value:Enumeration, index:int, array:Vector.<Enumeration>):Boolean
        {
            return value is (enumerationClass);
        }
    }

    //FIXME:  Values can be is not unique. Return type must be is Vector.<Element>
    public static function getElementByValue(value:*, enumClass:Class):Enumeration
    {
        var currentTypeElements:Vector.<Enumeration> = getElementsList(enumClass);
        var result:Enumeration = null;
        for each(var testingElement:Enumeration in currentTypeElements)
        {
            if(testingElement._value === value)
            {
                result = testingElement;
            }
        }
        return result;
    }

    protected function get value():*
    {
        return _value;
    }

    protected function set value(value:*):void
    {
        _value = value;
    }
}
}
