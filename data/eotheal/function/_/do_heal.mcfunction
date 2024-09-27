#> eotheal:_/do_heal
#--------------------
# ./post_tick
#--------------------

# end early if no heal
execute unless score @s _eotheal-heal_value matches 1.. run return run function eotheal:_/effect_applied_adv

effect give @s instant_health 1 28

execute store result score *do.current_max -eotheal run attribute @s minecraft:max_health get 10000
execute store result score *do.max_mod -eotheal run data get entity @s Health 10000
scoreboard players operation *do.max_mod -eotheal += @s _eotheal-heal_value
scoreboard players operation *do.max_mod -eotheal -= *do.current_max -eotheal
execute store result storage eotheal:var do.with.max_mod float .0001 run scoreboard players get *do.max_mod -eotheal
execute if score *do.max_mod -eotheal matches ..-1 run function eotheal:_/do_heal.1 with storage eotheal:var do.with

scoreboard players reset *do.target -eotheal
scoreboard players reset *do.max_mod -eotheal
data remove storage eotheal:var do