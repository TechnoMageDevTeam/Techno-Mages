#priority 9

//Steel Recipe
var coalDustList = [
    <thermalfoundation:material:768>,
    <actuallyadditions:item_dust:6>,
    <thermalfoundation:material:769>,
    <bloodmagic:component:21>
] as IItemStack[];
for dustVar in coalDustList
  mods.bloodmagic.BloodAltar.addRecipe(<mekanism:ingot:4>, dustVar, 2, 1000,100,40);

//Reactor Core Recipe
mods.actuallyadditions.Empowerer.addRecipe(<bigreactors:reactorcasingcores>, <bigreactors:blockyellorium>, <actuallyadditions:item_crystal_empowered:5>, <actuallyadditions:item_crystal_empowered:5>, <actuallyadditions:item_crystal_empowered:5>, <actuallyadditions:item_crystal_empowered:5>, 500, 100);
//Reactor Casing Recipe
mods.actuallyadditions.Empowerer.addRecipe(<bigreactors:reactorcasing>*4, <bigreactors:reactorcasingcores>, <thermalfoundation:material:352>, <thermalfoundation:material:352>, <thermalfoundation:material:352>, <thermalfoundation:material:352>, 500, 100);
//Steel Casing Recipe
mods.thermalexpansion.InductionSmelter.addRecipe(<mekanism:basicblock:8>, <mekanism:basicblock>, <thermalfoundation:material:352>*4, 1500);
//
