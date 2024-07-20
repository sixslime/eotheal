#> eotheal:api > heal
#--------------------
# [AS] target: [type=player]
# -> amount: float
#--------------------
# <- result: float
#--------------------
#> heals [target] for <amount> via instant-health effect.
#--------------------
#- multiple calls to this function in the same tick are supported, however [target]'s actual health value will only change at the end of the tick.
#- <amount> is precise to 4 decimal places.
#- if called on/after @post-tick (such as @advancement), [target| will be healed on the next tick.
#~ this is a result of how the instant_health effect is processed; this function would not be 100% multi-call safe if calls past @post-tick healed on the same tick.
#--------------------
# ...
#--------------------

scoreboard players set *check_tick --eotheal 1
scoreboard players set @s _eotheal-healed 1

execute store result score *heal.amount -eotheal run data get storage eotheal:in heal.amount 10000
scoreboard players operation @s _eotheal-heal_value += *heal.amount -eotheal
scoreboard players reset *heal.amount -eotheal
data remove storage eotheal:in heal