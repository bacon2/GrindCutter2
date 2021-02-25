execute at @e[tag=grindcutter] if entity @e[tag=grindcutter, distance=0.01..1] run tell @p We're sorry, but we had to break that to prevent duping.
execute at @e[tag=grindcutter] if entity @e[tag=grindcutter, distance=0.01..1] run give @p minecraft:stonecutter 1
execute at @e[tag=grindcutter] if entity @e[tag=grindcutter, distance=0.01..1] run fill ~-5 ~-5 ~-5 ~5 ~5 ~5 air replace minecraft:stonecutter
execute at @e[tag=grindcutter] unless block ~ ~1 ~ #grindcutter2:ungrindable if data storage minecraft:grindcutter2 {Busy:0} run schedule function grindcutter2:grind 1.0s
execute at @e[tag=grindcutter] unless block ~ ~1 ~ #grindcutter2:ungrindable run data modify storage grindcutter2 Busy set value 1
execute at @e[tag=grindcutter] unless block ~ ~1 ~ #grindcutter2:ungrindable run playsound minecraft:block.grindstone.use block @a ~ ~ ~ 0.3 0.8
execute at @e[tag=grindcutter] unless block ~ ~1 ~ #grindcutter2:ungrindable run playsound minecraft:block.stone.hit block @a ~ ~ ~ 1 0
execute at @e[tag=grindcutter] unless block ~ ~1 ~ #grindcutter2:ungrindable run particle minecraft:block minecraft:cobblestone ~ ~1 ~ 0.1 0.1 0.1 20 3 normal
execute as @e[tag=grindcutter] at @s unless block ~ ~ ~ minecraft:stonecutter run kill @s
execute as @a[scores={put_stonecutter=1..}] at @s facing entity @s eyes run summon armor_stand ~ ~ ~ {Tags:["ray"],Marker:1,Invulnerable:1,Invisible:1b}
scoreboard players reset @a[scores={put_stonecutter=1..}]
execute as @e[tag=ray,tag=!facingPlayer] at @s run data modify entity @s Rotation set from entity @p Rotation
tag @e[tag=ray,tag=!facingPlayer] add facingPlayer
execute as @e[tag=ray] at @s run tp @s ^ ^ ^0.5
execute as @e[tag=ray] at @s if block ~ ~-1 ~ minecraft:stonecutter run summon minecraft:armor_stand ~ ~1 ~ {Marker:1b, Tags:["grindcutter"], Invisible:1b}
execute as @e[tag=ray] at @s if block ~ ~-1 ~ minecraft:stonecutter run kill @e[tag=ray]
execute as @e[tag=ray] at @s if block ~ ~ ~ minecraft:stonecutter run summon minecraft:armor_stand ~ ~ ~ {Marker:1b, Tags:["grindcutter"], Invisible:1b}
execute as @e[tag=ray] at @s if block ~ ~ ~ minecraft:stonecutter run kill @e[tag=ray]
execute as @e[tag=ray] at @s if block ~ ~1 ~ minecraft:stonecutter run summon minecraft:armor_stand ~ ~1 ~ {Marker:1b, Tags:["grindcutter"], Invisible:1b}
execute as @e[tag=ray] at @s if block ~ ~1 ~ minecraft:stonecutter run kill @e[tag=ray]
execute as @e[tag=ray] at @s if block ~ ~2 ~ minecraft:stonecutter run summon minecraft:armor_stand ~ ~2 ~ {Marker:1b, Tags:["grindcutter"], Invisible:1b}
execute as @e[tag=ray] at @s if block ~ ~2 ~ minecraft:stonecutter run kill @e[tag=ray]