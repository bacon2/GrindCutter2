data modify storage grindcutter2 Busy set value 0
execute at @e[tag=grindcutter] unless block ~ ~1 ~ #grindcutter2:ungrindable run loot spawn ~ ~1 ~ mine ~ ~1 ~ minecraft:iron_pickaxe
execute at @e[tag=grindcutter] unless block ~ ~1 ~ #grindcutter2:ungrindable run playsound minecraft:ui.stonecutter.take_result master @p
execute at @e[tag=grindcutter] unless block ~ ~1 ~ #grindcutter2:ungrindable run particle minecraft:block minecraft:cobblestone ~ ~1 ~ 0.5 0.5 0.5 1 50 normal
execute at @e[tag=grindcutter] unless block ~ ~1 ~ #grindcutter2:ungrindable run fill ~ ~1 ~ ~ ~1 ~ air