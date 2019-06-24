/* 
File: EMCCurrency/ContentTweaker.zs
Author: Sciencmine
Version: 1.0.0
*/

#loader contenttweaker
#priority 100

import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Item;

//EDIT START

//Should register the place holder? (true/false) (default: true)
var placeholder = true as bool;

//EDIT END

print("[EMCCurrency]: Registering Items");

if(placeholder){
  print("[EMCCurrency]: Registering PlaceHolder");
  val e = VanillaFactory.createItem("emccurrency");
    e.maxStackSize=1;
    e.rarity="uncommon";
    e.register();
  print("[EMCCurrency]: PlaceHolder Registered");
}

print("[EMCCurrency]: Registering Currency");

var i = 0;
while i < 29 {
  var r = VanillaFactory.createItem("emccurrency_" ~ i);
    r.rarity="uncommon";
    r.register();
  i += 1;
}

var a = VanillaFactory.createItem("emccurrency_29");
  a.maxStackSize = 31;
  a.rarity="rare";
  a.register();
var b = VanillaFactory.createItem("emccurrency_30");
  b.maxStackSize = 7;
  b.rarity="rare";
  b.register();
var c = VanillaFactory.createItem("emccurrency_31");
  c.maxStackSize = 1;
  c.rarity="rare";
  c.register();
var d = VanillaFactory.createItem("emccurrency_32");
  d.maxStackSize = 1;
  d.rarity="epic";
  d.register();
  
print("[EMCCurrency]: Currency Registered");

print("[EMCCurrency]: Items Registered");
