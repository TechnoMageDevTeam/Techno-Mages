#priority 10

import crafttweaker.item.IItemStack;


var bannedItems = [
    <mekanism:anchorupgrade>,
    <extrautils2:chunkloader>,
    <extrautils2:quarryproxy>,
    <extrautils2:quarry>,
    <rftools:shape_card:2>,
    <rftools:shape_card:3>,
    <rftools:shape_card:4>,
    <rftools:shape_card:5>,
    <rftools:shape_card:6>,
    <rftools:shape_card:7>
] as IItemStack[];

for i in bannedItems {
    recipes.remove(i);
    i.clearTooltip();
    i.addTooltip("This item is disabled. Please contact the modpack author to be ignored");
}
recipes.remove(<bigreactors:reactorcasingcores>);
recipes.remove(<bigreactors:reactorcontroller>);
recipes.remove(<bigreactors:reactorfuelrod>);
recipes.remove(<bigreactors:reactorcasing>);
recipes.remove(<rftools:machine_frame>);
recipes.remove(<mekanism:basicblock:8>);
recipes.remove(<mekanismgenerators:generator:1>);
recipes.remove(<mekanismgenerators:generator:5>);
recipes.remove(<mekanismgenerators:generator:6>);
recipes.remove(<rftools:dimensional_shard>);
