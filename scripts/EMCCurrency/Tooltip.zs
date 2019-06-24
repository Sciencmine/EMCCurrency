/* 
File: EMCCurrency/Tooltip.zs
Author: Sciencmine
Version: 1.0.0
*/

#priority 98

import crafttweaker.item.IItemStack;

val E = [<contenttweaker:emccurrency_0>,<contenttweaker:emccurrency_1>,<contenttweaker:emccurrency_2>,<contenttweaker:emccurrency_3>,<contenttweaker:emccurrency_4>,<contenttweaker:emccurrency_5>,<contenttweaker:emccurrency_6>,<contenttweaker:emccurrency_7>,<contenttweaker:emccurrency_8>,<contenttweaker:emccurrency_9>,<contenttweaker:emccurrency_10>,<contenttweaker:emccurrency_11>,<contenttweaker:emccurrency_12>,<contenttweaker:emccurrency_13>,<contenttweaker:emccurrency_14>,<contenttweaker:emccurrency_15>,<contenttweaker:emccurrency_16>,<contenttweaker:emccurrency_17>,<contenttweaker:emccurrency_18>,<contenttweaker:emccurrency_19>,<contenttweaker:emccurrency_20>,<contenttweaker:emccurrency_21>,<contenttweaker:emccurrency_22>,<contenttweaker:emccurrency_23>,<contenttweaker:emccurrency_24>,<contenttweaker:emccurrency_25>,<contenttweaker:emccurrency_26>,<contenttweaker:emccurrency_27>,<contenttweaker:emccurrency_28>,<contenttweaker:emccurrency_29>,<contenttweaker:emccurrency_30>,<contenttweaker:emccurrency_31>,<contenttweaker:emccurrency_32>] as IItemStack[];

//EDIT START

//Should add tooltips for currency item? (true/false) (default: true)
var tooltip = true as bool;

//EDIT END

if(tooltip){
  print("[EMCCurrency]: Adding Tooltips");
  var k = 0;
  while k < 33 {
    E[k].addTooltip(format.aqua("EMC " ~ k));
    k += 1;
  }
  print("[EMCCurrency]: Tooltips Added");
}
