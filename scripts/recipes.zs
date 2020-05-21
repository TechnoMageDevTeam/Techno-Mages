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

var recipeRemovalList = [
    <bigreactors:reactorcasingcores>,
    <bigreactors:reactorcontroller>,
    <bigreactors:reactorfuelrod>,
    <bigreactors:reactorcasing>,
    <rftools:machine_frame>,
    <bigreactors:reactorcasingcores>,
    <rftools:machine_base>,
    <rftools:dimensional_shard>,
    <mekanismgenerators:generator:1>,
    <mekanismgenerators:generator:5>,
    <mekanismgenerators:generator:6>,
    <mekanism:basicblock:8>,
    <mekanism:atomicdisassembler>,
    <extendedcrafting:material:8>,
    <extendedcrafting:material:9>,
    <extendedcrafting:material:10>,
    <extendedcrafting:material:11>,
    <extendedcrafting:material:12>,
    <extendedcrafting:material:14>,
    <extendedcrafting:material:15>,
    <extendedcrafting:material:16>,
    <extendedcrafting:material:17>,
    <extendedcrafting:material:18>,
    <extendedcrafting:table_basic>,
    <extendedcrafting:table_advanced>,
    <extendedcrafting:table_elite>,
    <extendedcrafting:table_ultimate>,
    <extendedcrafting:ender_crafter>,
    <extendedcrafting:ender_alternator>
] as IItemStack[];
for recipe in recipeRemovalList {
    recipes.remove(recipe);
}
recipes.removeShapeless(<extendedcrafting:material>, <minecraft:iron_ingot>, <ore:dyeBlack>);
