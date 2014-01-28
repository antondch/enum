package
{

import flash.display.Sprite;

import ru.dch.enums.Enumeration;

import ru.dch.enums.UnitType;
import ru.dch.enums.UnitUpgradeType;

public class Main extends Sprite
{
    public function Main()
    {
        trace("try execute trace(Enumeration.getElementsList(UnitType).length):");
        trace(Enumeration.getElementsList(UnitType).length);
        trace("***************");
        trace("try execute trace(Enumeration.getElementsList(UnitUpgradeType).length):");
        trace(Enumeration.getElementsList(UnitUpgradeType).length);
        trace("***************");
        trace("try to create local variable UnitType:");
        var blah:UnitType = new UnitType(0xFFFFFF);
    }
}
}
