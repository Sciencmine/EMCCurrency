/* 
File: EMCCurrency/Recipe.zs
Author: Sciencmine
Version: 1.0.0
*/

#priority 99

import crafttweaker.item.IItemStack;

val E = [<contenttweaker:emccurrency_0>, <contenttweaker:emccurrency_1>, <contenttweaker:emccurrency_2>, <contenttweaker:emccurrency_3>, <contenttweaker:emccurrency_4>, <contenttweaker:emccurrency_5>, <contenttweaker:emccurrency_6>, <contenttweaker:emccurrency_7>, <contenttweaker:emccurrency_8>, <contenttweaker:emccurrency_9>, <contenttweaker:emccurrency_10>, <contenttweaker:emccurrency_11>, <contenttweaker:emccurrency_12>, <contenttweaker:emccurrency_13>, <contenttweaker:emccurrency_14>, <contenttweaker:emccurrency_15>, <contenttweaker:emccurrency_16>, <contenttweaker:emccurrency_17>, <contenttweaker:emccurrency_18>, <contenttweaker:emccurrency_19>, <contenttweaker:emccurrency_20>, <contenttweaker:emccurrency_21>, <contenttweaker:emccurrency_22>, <contenttweaker:emccurrency_23>, <contenttweaker:emccurrency_24>, <contenttweaker:emccurrency_25>, <contenttweaker:emccurrency_26>, <contenttweaker:emccurrency_27>, <contenttweaker:emccurrency_28>, <contenttweaker:emccurrency_29>, <contenttweaker:emccurrency_30>, <contenttweaker:emccurrency_31>, <contenttweaker:emccurrency_32>] as IItemStack[];

//EDIT START

//Enable Project E integration? (true/false) (default: true)
var peint = true as bool;

//EDIT END

print("[EMCCurrency]: Registering Recipes");

print("[EMCCurrency]: Registering Crafting Recipes");

if(loadedMods in "projecte" & peint){
  print("Project E Integration Enabled");
  print("Please note that currency items will not get EMC values automatically when Project E Integration is enabled");
  recipes.addShapeless("EMCMake1", E[0]*2,[<projecte:item.pe_philosophers_stone>.reuse(), <minecraft:cobblestone>, <minecraft:dirt>]);//Tier 1
  recipes.addShapeless("EMCMake2", E[1]*2,[<projecte:item.pe_philosophers_stone>.reuse(), <minecraft:flint>, <ore:sandstone>]);//Tier 2
  recipes.addShapeless("EMCMake3s1", E[2]*2,[<projecte:item.pe_philosophers_stone>.reuse(), <minecraft:stone:1>, <minecraft:wheat_seeds>]);//Tier 3
  recipes.addShapeless("EMCMake3s3", E[2]*2,[<projecte:item.pe_philosophers_stone>.reuse(), <minecraft:stone:3>, <minecraft:wheat_seeds>]);//Tier 3
  recipes.addShapeless("EMCMake3s5", E[2]*2,[<projecte:item.pe_philosophers_stone>.reuse(), <minecraft:stone:5>, <minecraft:wheat_seeds>]);//Tier 3
  recipes.addShapeless("EMCMake4", E[3]*2,[<projecte:item.pe_philosophers_stone>.reuse(), <minecraft:redstone>, <minecraft:clay>]);//Tier 4
  recipes.addShapeless("EMCMake5", E[4]*2,[<projecte:item.pe_philosophers_stone>.reuse(), <minecraft:map>, <minecraft:iron_ingot>]);//Tier 5
  recipes.addShapeless("EMCMake6", E[5]*2,[<projecte:item.pe_philosophers_stone>.reuse(), <minecraft:ender_pearl>, <minecraft:prismarine>]);//Tier 6
  recipes.addShapeless("EMCMake7", E[6]*2,[<projecte:item.pe_philosophers_stone>.reuse(), <minecraft:ghast_tear>, <minecraft:light_weighted_pressure_plate>]);//Tier 7
  recipes.addShapeless("EMCMake8", E[7]*2,[<projecte:item.pe_philosophers_stone>.reuse(), <minecraft:emerald>, <minecraft:golden_chestplate>]);//Tier 8
}else{
  recipes.addShapeless("EMCMake1", E[0]*2,[<minecraft:cobblestone>, <minecraft:dirt>]);//Tier 1
  recipes.addShapeless("EMCMake2", E[1]*2,[<minecraft:flint>, <ore:sandstone>]);//Tier 2
  recipes.addShapeless("EMCMake3s1", E[2]*2,[<minecraft:stone:1>, <minecraft:wheat_seeds>]);//Tier 3
  recipes.addShapeless("EMCMake3s3", E[2]*2,[<minecraft:stone:3>, <minecraft:wheat_seeds>]);//Tier 3
  recipes.addShapeless("EMCMake3s5", E[2]*2,[<minecraft:stone:5>, <minecraft:wheat_seeds>]);//Tier 3
  recipes.addShapeless("EMCMake4", E[3]*2,[<minecraft:redstone>, <minecraft:clay>]);//Tier 4
  recipes.addShapeless("EMCMake5", E[4]*2,[<minecraft:map>, <minecraft:iron_ingot>]);//Tier 5
  recipes.addShapeless("EMCMake6", E[5]*2,[<minecraft:ender_pearl>, <minecraft:prismarine>]);//Tier 6
  recipes.addShapeless("EMCMake7", E[6]*2,[<minecraft:ghast_tear>, <minecraft:light_weighted_pressure_plate>]);//Tier 7
  recipes.addShapeless("EMCMake8", E[7]*2,[<minecraft:emerald>, <minecraft:golden_chestplate>]);//Tier 8
}

print("[EMCCurrency]: Crafting Recipes Registered");

print("[EMCCurrency]: Registering Exchange Recipes");

var i = 1;
while i < 33 {
  recipes.addShaped("EMCUp" ~ i, E[i], [[E[i - 1], E[i - 1]], [E[i - 1], E[i - 1]]]);
  i += 1;
}

var j = 0;
while j < 32 {
  recipes.addShapeless("EMCDown" ~ j, E[j]*4, [E[j + 1]]);
  j += 1;
}

print("[EMCCurrency]: Exchange Recipes Registered");

print("[EMCCurrency]: Recipes Registered");
