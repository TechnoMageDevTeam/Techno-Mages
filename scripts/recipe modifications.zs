#priority 9
import crafttweaker.item.IItemStack;
import mods.thermalexpansion.InductionSmelter;
import mods.actuallyadditions.Empowerer;
//Steel Recipe
var coalDust = [
    <thermalfoundation:material:768>,
    <actuallyadditions:item_dust:6>,
    <thermalfoundation:material:769>,
    <bloodmagic:component:21>,
] as IItemStack[];
for i in coalDust {
    mods.bloodmagic.BloodAltar.addRecipe(<immersiveengineering:metal:8>, i, 1, 1000,100,40);
}
//Reactor Core Recipe
Empowerer.addRecipe(<bigreactors:reactorcasingcores>, <bigreactors:blockyellorium>, <actuallyadditions:item_crystal_empowered:5>, <actuallyadditions:item_crystal_empowered:5>, <actuallyadditions:item_crystal_empowered:5>, <actuallyadditions:item_crystal_empowered:5>, 500, 100);
//Reactor Casing Recipe
Empowerer.addRecipe(<bigreactors:reactorcasing>*4, <bigreactors:reactorcasingcores>, <thermalfoundation:material:352>, <thermalfoundation:material:352>, <thermalfoundation:material:352>, <thermalfoundation:material:352>, 500, 100);
//Steel Casing Recipe
InductionSmelter.addRecipe(<mekanism:basicblock:8>, <mekanism:basicblock>, <thermalfoundation:material:352>*4, 1500);
//Removing Steel
mods.immersiveengineering.ArcFurnace.removeRecipe(<immersiveengineering:metal:8>);
mods.immersiveengineering.BlastFurnace.removeRecipe(<immersiveengineering:metal:8>);
mods.mekanism.infuser.removeRecipe(<mekanism:otherdust:1>);
mods.mekanism.infuser.removeRecipe(<mekanism:enrichediron>);
// pulverized coal + iron
InductionSmelter.removeRecipe(<thermalfoundation:material:768>, <thermalfoundation:material:0>);
InductionSmelter.removeRecipe(<thermalfoundation:material:768>, <minecraft:iron_ingot>);
// pulverized charcoal + iron
InductionSmelter.removeRecipe(<thermalfoundation:material:769>, <thermalfoundation:material:0>);
InductionSmelter.removeRecipe(<thermalfoundation:material:769>, <minecraft:iron_ingot>);
// coal coke + iron
InductionSmelter.removeRecipe(<thermalfoundation:material:802>, <thermalfoundation:material:0>);
InductionSmelter.removeRecipe(<thermalfoundation:material:802>, <minecraft:iron_ingot>);
//Tier 1 crafting table
recipes.addShaped(<extendedcrafting:table_basic>, [[<ore:blockSteel>, <actuallyadditions:block_crystal:5>, <ore:blockSteel>],[<extendedcrafting:material:3>, <extendedcrafting:material>, <extendedcrafting:material:3>], [<extendedcrafting:storage>, <extendedcrafting:material>, <extendedcrafting:storage>]]);
//Tier 2 crafting table
mods.extendedcrafting.TableCrafting.addShaped(1, <extendedcrafting:table_advanced>, [
	[<ore:blockVibrantAlloy>, <ore:blockGlassHardened>, <ore:blockEndSteel>], 
	[<extendedcrafting:material:3>, <ore:ingotBlackIron>, <extendedcrafting:material:3>], 
	[<extendedcrafting:trimmed:1>, <ore:ingotBlackIron>, <extendedcrafting:trimmed:1>]
]);

mods.extendedcrafting.TableCrafting.addShaped(1, <extendedcrafting:table_elite>, [
	[<bigreactors:reactoraccessport>, <ore:blockEnderium>, <ore:blockEnderium>, <ore:blockEnderium>, <bigreactors:reactorcoolantport>], 
	[<ore:blockBlackIron>, <ore:blockBlackIron>, <rftools:infused_enderpearl>, <ore:blockBlackIron>, <ore:blockBlackIron>], 
	[null, <extendedcrafting:material:3>, <ore:ingotBlackIron>, <extendedcrafting:material:3>, null], 
	[null, <extendedcrafting:material:3>, <ore:ingotBlackIron>, <extendedcrafting:material:3>, null], 
	[<extendedcrafting:trimmed:2>, <extendedcrafting:trimmed:2>, <extendedcrafting:trimmed:2>, <extendedcrafting:trimmed:2>, <extendedcrafting:trimmed:2>]
]);

//Quarry Shaped Card
mods.extendedcrafting.TableCrafting.addShaped(1, <rftools:shape_card:2>, [
	[<mekanism:polyethene:2>, <mekanism:polyethene:2>, <mekanism:polyethene:2>, <ore:xuUpgradeSpeedEnchanted>, <mekanism:polyethene:2>, <mekanism:polyethene:2>, <mekanism:polyethene:2>], 
	[<mekanism:polyethene:2>, <ore:ingotVoid>, <ore:ingotElvenElementium>, <actuallyadditions:item_drill_upgrade_speed_iii>, <ore:ingotElvenElementium>, <ore:ingotVoid>, <mekanism:polyethene:2>], 
	[<mekanism:polyethene:2>, <ore:ingotElvenElementium>, <actuallyadditions:item_crystal_empowered>, <enderio:item_end_steel_pickaxe>, <actuallyadditions:item_crystal_empowered>, <ore:ingotElvenElementium>, <mekanism:polyethene:2>], 
	[<ore:xuUpgradeSpeedEnchanted>, <actuallyadditions:item_drill_upgrade_speed_iii>, <actuallyadditions:item_drill>, <mekanism:machineblock:4>, <thermalinnovation:drill:4>, <actuallyadditions:item_drill_upgrade_speed_iii>, <ore:xuUpgradeSpeedEnchanted>], 
	[<mekanism:polyethene:2>, <ore:ingotElvenElementium>, <actuallyadditions:item_crystal_empowered>, <enderio:item_end_steel_pickaxe>, <actuallyadditions:item_crystal_empowered>, <ore:ingotElvenElementium>, <mekanism:polyethene:2>], 
	[<mekanism:polyethene:2>, <ore:ingotVoid>, <ore:ingotElvenElementium>, <actuallyadditions:item_drill_upgrade_speed_iii>, <ore:ingotElvenElementium>, <ore:ingotVoid>, <mekanism:polyethene:2>], 
	[<mekanism:polyethene:2>, <mekanism:polyethene:2>, <mekanism:polyethene:2>, <ore:xuUpgradeSpeedEnchanted>, <mekanism:polyethene:2>, <mekanism:polyethene:2>, <mekanism:polyethene:2>]
]);

//Fortune Quarry Shaped Card
mods.extendedcrafting.TableCrafting.addShaped(1, <rftools:shape_card:4>, [
	[<ore:ingotCrystaltine>, <ore:ingotCrystaltine>, <ore:ingotCrystaltine>, <ore:ingotCrystaltine>, <ore:ingotCrystaltine>, <ore:ingotCrystaltine>, <ore:ingotCrystaltine>], 
	[<ore:ingotCrystaltine>, <ore:ingotVoid>, <ore:dustLithium>, <actuallyadditions:item_drill_upgrade_speed_iii>, <ore:dustLithium>, <ore:ingotVoid>, <ore:ingotCrystaltine>], 
	[<ore:ingotCrystaltine>, <ore:dustLithium>, <actuallyadditions:item_crystal_empowered>, <actuallyadditions:item_drill_upgrade_fortune_ii>, <actuallyadditions:item_crystal_empowered>, <ore:dustLithium>, <ore:ingotCrystaltine>], 
	[<ore:ingotCrystaltine>, <actuallyadditions:item_drill_upgrade_speed_iii>, <minecraft:enchanted_book>, <rftools:shape_card:2>, <minecraft:enchanted_book>, <actuallyadditions:item_drill_upgrade_speed_iii>, <ore:ingotCrystaltine>], 
	[<ore:ingotCrystaltine>, <ore:dustLithium>, <actuallyadditions:item_crystal_empowered>, <actuallyadditions:item_drill_upgrade_fortune_ii>, <actuallyadditions:item_crystal_empowered>, <ore:dustLithium>, <ore:ingotCrystaltine>], 
	[<ore:ingotCrystaltine>, <ore:ingotVoid>, <ore:dustLithium>, <actuallyadditions:item_drill_upgrade_speed_iii>, <ore:dustLithium>, <ore:ingotVoid>, <ore:ingotCrystaltine>], 
	[<ore:ingotCrystaltine>, <ore:ingotCrystaltine>, <ore:ingotCrystaltine>, <ore:ingotCrystaltine>, <ore:ingotCrystaltine>, <ore:ingotCrystaltine>, <ore:ingotCrystaltine>]
]);

//Silk Quarry Shaped Card
mods.extendedcrafting.TableCrafting.addShaped(1, <rftools:shape_card:3>, [
	[<ore:ingotCrystaltine>, <ore:ingotCrystaltine>, <ore:ingotCrystaltine>, <ore:ingotCrystaltine>, <ore:ingotCrystaltine>, <ore:ingotCrystaltine>, <ore:ingotCrystaltine>], 
	[<ore:ingotCrystaltine>, <ore:ingotVoid>, <ore:dustLithium>, <actuallyadditions:item_drill_upgrade_speed_iii>, <ore:dustLithium>, <ore:ingotVoid>, <ore:ingotCrystaltine>], 
	[<ore:ingotCrystaltine>, <ore:dustLithium>, <actuallyadditions:item_crystal_empowered>, <actuallyadditions:item_drill_upgrade_silk_touch>, <actuallyadditions:item_crystal_empowered>, <ore:dustLithium>, <ore:ingotCrystaltine>], 
	[<ore:ingotCrystaltine>, <actuallyadditions:item_drill_upgrade_speed_iii>, <minecraft:enchanted_book>, <rftools:shape_card:2>, <minecraft:enchanted_book>, <actuallyadditions:item_drill_upgrade_speed_iii>, <ore:ingotCrystaltine>], 
	[<ore:ingotCrystaltine>, <ore:dustLithium>, <actuallyadditions:item_crystal_empowered>, <actuallyadditions:item_drill_upgrade_silk_touch>, <actuallyadditions:item_crystal_empowered>, <ore:dustLithium>, <ore:ingotCrystaltine>], 
	[<ore:ingotCrystaltine>, <ore:ingotVoid>, <ore:dustLithium>, <actuallyadditions:item_drill_upgrade_speed_iii>, <ore:dustLithium>, <ore:ingotVoid>, <ore:ingotCrystaltine>], 
	[<ore:ingotCrystaltine>, <ore:ingotCrystaltine>, <ore:ingotCrystaltine>, <ore:ingotCrystaltine>, <ore:ingotCrystaltine>, <ore:ingotCrystaltine>, <ore:ingotCrystaltine>]
]);

//Digital Miner
mods.extendedcrafting.TableCrafting.addShaped(1, <mekanism:machineblock:4>, [
	[<ore:blockSteel>, <ore:blockSteel>, <ore:blockSteel>, <ore:blockSteel>, <ore:blockSteel>, <ore:blockSteel>, <ore:blockSteel>], 
	[<ore:blockSteel>, <mekanism:transmitter:3>, <enderio:item_end_steel_pickaxe>, <mekanism:machineblock:13>, <enderio:item_end_steel_pickaxe>, <mekanism:transmitter:3>, <ore:blockSteel>], 
	[<ore:blockSteel>, <mekanism:transmitter:3>, <mekanism:basicblock2:3>, <ore:circuitUltimate>, <mekanism:basicblock2:3>, <mekanism:transmitter:3>, <ore:blockSteel>], 
	[<mekanism:machineblock:15>, <mekanism:transmitter:3>, <ore:circuitUltimate>, <mekanism:robit>, <ore:circuitUltimate>, <mekanism:transmitter:3>, <mekanism:machineblock:15>], 
	[<ore:blockSteel>, <mekanism:transmitter:3>, <mekanism:basicblock2:3>, <ore:circuitUltimate>, <mekanism:basicblock2:3>, <mekanism:transmitter:3>, <ore:blockSteel>], 
	[<ore:blockSteel>, <mekanism:plasticblock>, <mekanism:plasticblock>, <mekanism:plasticblock>, <mekanism:plasticblock>, <mekanism:plasticblock>, <ore:blockSteel>], 
	[<ore:blockSteel>, null, null, null, null, null, <ore:blockSteel>]
]);

//Atomic Dissassembler
mods.extendedcrafting.TableCrafting.addShaped(1, <mekanism:atomicdisassembler>, [
	[null, null, <mekanism:plasticblock:6>, <mekanism:plasticblock:6>, <mekanism:plasticblock:6>, <ore:circuitUltimate>, <botania:terrapick>], 
	[null, null, null, <mekanism:plasticblock:6>, <ore:alloyUltimate>, <ore:alloyUltimate>, <ore:circuitUltimate>], 
	[null, null, null, <ore:crystalOsmium>, <ore:crystalOsmium>, <ore:alloyUltimate>, <mekanism:plasticblock:6>], 
	[null, null, null, <ore:crystalIron>, <ore:crystalOsmium>, <ore:blockSteel>, <mekanism:plasticblock:6>], 
	[null, null, <mekanism:polyethene:1>, null, null, null, <ore:blockSteel>], 
	[null, <mekanism:polyethene:1>, null, null, null, null, null], 
	[<mekanism:polyethene:1>, null, null, null, null, null, null]
]);
